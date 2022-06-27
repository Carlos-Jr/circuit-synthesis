import collections as cl
import numpy as np
import time

from landauer import gates
from landauer.graph import Node, Recycled, GraphException

def maybe_2bit (node, icur, topology, parsed, recycles, maj_bits):
    """ Tests if a node will be able to be recycled again """

    if recycles.get(node, False):
        return True

    nrank = topology[node]

    # Iterate over the node's inputs
    for npos, ( inp, *_ ) in enumerate(node.inputs):
        if not accept(node, npos, recycles, maj_bits):
            continue

        # Ignore the current input, nodes with only one output,
        # and already parsed nodes
        if inp is icur or inp.count_outputs < 2 or inp in parsed:
            continue

        # Search for a sibling on a lower rank
        for out, *_ in inp.outputs:

            if topology[out] > nrank:
                return True

    return False

def priority (
    inode, onpos, recycles, topology, parsed,
    prefer_gates, rec_focus, maj_bits, gate_inputs
):
    """ Defines the priorities of each gate """
    onode, opos, *_ = inode.get_output(onpos)

    # Returns -1 for non-accepted gates
    if not accept(onode, opos, recycles, maj_bits):
        return -1

    # Get recycle positions
    rec = recycles.get(onode, [])
    ogate = onode.gate

    # Tests if gate is preferred
    is_preferred = int(ogate in prefer_gates)

    # Entropy oriented
    if rec_focus == "entropy":
        old_map = ogate.out_map.copy()

        # Create new recycled vector and signal map
        new_rec = [ *rec, opos ]
        new_map = np.empty_like(old_map)

        # Build new map from old
        for i, pos in enumerate(ogate.out_map):
            # First recycled bit
            bit = (i >> (ogate.inputs - new_rec[0] - 1)) & 1
            # Insert bit into signal positions
            pos = (bit << ogate.outputs) | pos

            # If it was recycled before
            if len(new_rec) == 2:
                # Save found position with one recycled bit at old map
                old_map[i] = pos

                # Last recycled bit
                bit = (i >> (ogate.inputs - new_rec[1] - 1)) & 1
                # Insert bit into signal positions
                pos = bit | (pos << 1)

            # Save found position at new map
            new_map[i] = pos

        old_out = ogate.outputs + len(rec)
        new_out = ogate.outputs + len(new_rec)
        name = onode.name

        # Evaluate energy
        *_, old_ene = ogate.energy(gate_inputs[name], old_map, old_out)
        *_, new_ene = ogate.energy(gate_inputs[name], new_map, new_out)

        # Return a tuple with energy gain and gate preference
        return ( old_ene - new_ene, is_preferred )

    # Tests if gate can turn into 2-bit
    m2b = maybe_2bit(
        onode, inode, topology, parsed, recycles, maj_bits
    )

    # 1-bit Oriented
    if rec_focus == "1-bit":
        if not m2b:
            return ( 2, is_preferred )

        if not rec:
            return ( 1, is_preferred )

    # 2-bit Oriented
    elif rec_focus == "2-bit":
        if rec:
            return ( 2, is_preferred )

        if m2b:
            return ( 1, is_preferred )

    # Gate Oriented
    # When all gates have the same priority, it is the naive approach
    return ( 0, is_preferred )

def accept (node, pos, recycles, maj_bits):
    """ Test if node can recycle bits """

    # AND / OR are trivial
    if node.gate in ( gates.gate("AND"), gates.gate("OR") ):
        return True

    # MAJ can accept many strategies
    if node.gate is gates.gate("MAJ"):
        count = len(recycles.get(node, []))

        if pos in maj_bits and count < 2:
            return True

    return False

def choose (
    inode, outputs, recycles, topology, parsed,
    prefer_gates, rec_focus, maj_bits, gate_inputs
):
    """ Choose next node to recycle bits """

    snpos = None
    snode = None
    sopos = None
    sprio = None

    # Iterates over all possible outputs
    for onpos in outputs:
        onode, opos, *_ = inode.get_output(onpos)

        # Discards unaccepted outputs
        if not accept(onode, opos, recycles, maj_bits):
            continue

        oprio = priority(
            inode, onpos, recycles, topology, parsed,
            prefer_gates, rec_focus, maj_bits, gate_inputs
        )

        # Selects the output with biggest priority
        if sprio is None or oprio > sprio:
            snpos = onpos
            sopos = opos
            snode = onode
            sprio = oprio

    return snpos

def find_recycle_chains (topology, ene_ori, prefer_gates, rec_focus, maj_bits, gate_inputs):
    """ Find chains of gates that can be recycled """

    chains = cl.OrderedDict()
    recycles = {}
    parsed = set()

    # Iterates on the inverse topological order to avoid clashes
    for node, rank in reversed(topology.items()):
        parsed.add(node)

        # Only can recycle when it contains two or more outputs
        if node.count_outputs < 2:
            continue

        # Build a function to sort entries on energy oriented
        def ene_ori_key (npos):
            """ Key to sort energy oriented nodes """
            out, *_ = node.get_output(npos)

            return (
                topology[out],
                int(out.gate not in Recycled.enabled),
                out.name
            )

        min_rank = np.inf
        max_rank = -np.inf
        ranks_out = cl.OrderedDict()

        # Generate list of ranks sets containing outputs to be chosen
        for rank, ranked in node.ranked_outputs(topology):
            ranks_out[rank] = { onpos for onpos, *_ in ranked }

        # Selects outputs on each rank
        while True:
            chain = cl.OrderedDict()

            # This is used to store a last node that cannot be
            # recycled, but can one a recycled node's output ;)
            # I will call this the "Maybe last"
            maybe_pos = None
            maybe_rnk = None

            # Iterate over ranks
            for orank, ranked in ranks_out.items():
                if not ranked:
                    continue

                # Chosen positions
                choices = ()

                if ene_ori:
                    # When depth is not a concern, choose everyone
                    choices = sorted(ranked, key = ene_ori_key)

                else:
                    # Otherwise, choose the best available
                    npos = choose(
                        node, ranked, recycles, topology, parsed,
                        prefer_gates, rec_focus, maj_bits, gate_inputs
                    )

                    if npos is None:
                        # Maybe last node
                        npos = next(iter(ranked))

                    choices = ( npos, )

                # Iterate over choices
                for onpos in choices:
                    sel, spos, *_ = node.get_output(onpos)

                    if not accept(sel, spos, recycles, maj_bits):
                        # If node cannot be recycled,
                        # use it as a "Maybe last"
                        if maybe_pos is None:
                            maybe_pos = onpos
                            maybe_rnk = orank

                    else:
                        # Add to recycle
                        chain[onpos] = orank
                        ranked.remove(onpos)

                        # Release "Maybe last"
                        maybe_pos = None
                        maybe_rnk = None

            # Gets the "Maybe last"
            if maybe_pos is not None:
                ranks_out[maybe_rnk].remove(maybe_pos)
                chain[maybe_pos] = maybe_rnk

            # If could not find more than 2 nodes,
            # there is nowhere to recycle to
            if len(chain) < 2:
                break

            # Update chosen node's recycle count
            for i, onpos in enumerate(reversed(chain.keys())):
                # Do not count the last, since it is non recycled
                if i == 0:
                    continue

                out, opos, *_ = node.get_output(onpos)
                recycles.setdefault(out, []).append(opos)

            # Save chain
            chains.setdefault(node, []).append(chain)

    return chains

def recycle (circuit, ene_ori, prefer_gates, rec_focus, maj_bits, gate_inputs):
    """ Function to recycle bits """

    prefer_gates = set(map(gates.gate, prefer_gates))

    start_time = time.time()
    topology = cl.OrderedDict(circuit.topology())

    # Find possible chains
    chains = find_recycle_chains(
        topology, ene_ori, prefer_gates, rec_focus, maj_bits, gate_inputs
    )

    max_rank = max(rnk for rnk in topology.values())

    rec1 = np.zeros(max_rank + 1, np.int)
    rec2 = np.zeros(max_rank + 1, np.int)

    # For each node and its chains
    for node, nchains in chains.items():
        outs = []
        rank = topology[node]

        # For each node's chains
        for chain in nchains:
            chainiter = iter(chain.keys())
            ipos = next(chainiter)

            # Build the chain on the circuit
            for opos in chainiter:
                inp, *_ = node.get_output(ipos)

                # Count stats
                if isinstance(inp, Recycled):
                    rec2[rank] += 1
                else:
                    rec1[rank] += 1

                # Create bit-recycling node
                rec = Recycled(inp.name)
                rec.insert(node, ipos, opos)

                # Add bit-recycling node to the circuit
                circuit.remove(inp)
                circuit.add(rec)

                outs.append(opos)
                ipos = opos

        # Remove old nodes
        node.remove_outputs(*outs)

    rec_time = time.time() - start_time
    return rec1, rec2, rec_time
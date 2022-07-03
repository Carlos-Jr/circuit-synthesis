import time
import textwrap
import collections as cl

import numpy as np

from landauer import dot
from landauer import gates


class GraphException (Exception):
    """ Class to represent graph's exceptions """
    __slots__ = []

    def __init__(self, what):
        super().__init__(textwrap.dedent(what).strip().replace("\n", " "))


class GraphLoopException (GraphException):
    pass


class Node (object):
    """ Class to manage graph nodes """

    __slots__ = ["_inputs", "_outputs", "_debug", "__name", "__gate"]

    def __init__(self, name=None, gate=None):
        """ Constructs node """
        self._inputs = []
        self._outputs = []
        self._debug = False
        self.__name = name
        self.__gate = gate

    def set_input(self, pos, inp, ipos, inv):
        """ Set the node's input """
        self._inputs[pos] = (inp, ipos, inv)

    def set_output(self, pos, out, opos, inv):
        """ Set the node's output """
        self._outputs[pos] = (out, opos, inv)

    def get_input(self, pos):
        """ Get a node's input """
        return self._inputs[pos]

    def get_output(self, pos):
        """ Get a node's output """
        return self._outputs[pos]

    def add_input(self, inp, ipos, inv):
        """ Add input to a node """
        pos = len(self._inputs)
        self._inputs.append(None)
        self.set_input(pos, inp, ipos, inv)
        return pos

    def add_output(self, out, opos, inv):
        """ Add output to a node """
        pos = len(self._outputs)
        self._outputs.append(None)
        self.set_output(pos, out, opos, inv)
        return pos

    def replace_input_pos(self, pos, inp, ipos, inv):
        """ Replace input at a position """
        old_input = self.get_input(pos)
        self.set_input(pos, inp, ipos, inv)
        return old_input

    def replace_output_pos(self, pos, out, opos, inv):
        """ Replace output at a position """
        old_output = self.get_output(pos)
        self.set_output(pos, out, opos, inv)
        return old_output

    def remove_outputs(self, *where):
        """ Remove node's outputs """

        # Sort array keeping only unique values
        where = np.unique(where)

        # Iterate from the end to avoid messing with indices
        for pos in reversed(where):
            self._outputs.pop(pos)

        for i, (out, opos, inv) in enumerate(self.outputs):
            out.replace_input_pos(opos, self, i, inv)

    def ranked_outputs(self, topology):
        """ Generate lists containing the node's outputs by rank """
        ranks = cl.OrderedDict()

        for i, (out, opos, oinv) in enumerate(self.outputs):
            rank = ranks.setdefault(topology[out], [])
            rank.append((i, out, opos, oinv))

        yield from sorted(ranks.items())

    def signal(self, pos):
        """ Find out whence its signal came """

        if self.gate is gates.gate("W"):
            inp, ipos, *_ = self.get_input(0)
            return inp.signal(ipos)

        return (self, pos)

    @property
    def gate(self):
        """ Gets node's gate """
        return self.__gate

    @gate.setter
    def gate(self, gate):
        """ Sets node's gate """
        self.__gate = gate

    @property
    def count_inputs(self):
        """ Gets the node's number of inputs """
        return len(self._inputs)

    @property
    def count_outputs(self):
        """ Gets the node's number of outputs """
        return len(self._outputs)

    @property
    def inputs(self):
        """ Iterate over the node's inputs """
        yield from self._inputs

    @property
    def outputs(self):
        """ Iterate over the node's outputs """
        yield from self._outputs

    @property
    def debug(self):
        return self._debug

    @debug.setter
    def debug(self, debug):
        self._debug = debug

    @property
    def name(self):
        """ Gets the node's name """
        return self.__name

    @property
    def tree(self):
        """ Gets the node's tree name """
        if self.gate:
            return self.gate.name

        raise GraphException("Gate not defined for `{}`.".format(self.name))

    def __hash__(self):
        """ Hash node """
        return hash(self.name)

    def __eq__(self, val):
        """ Compare node to str or another node """
        if isinstance(val, str):
            return val == self.name

        return id(val) == id(self)


class Input (Node):
    """ Specialization of nodes to represent circuit's inputs """

    __slots__ = []

    def __init__(self, name):
        """ Constructs input """
        super().__init__(name, gates.gate("I"))

    def add_input(self, inp, ipos, inv):
        """ Specialization to avoid adding input to inputs """

        raise GraphException("""
            Input gate `{}` cannot have input.
        """.format(self.name))


class Zero (Input):
    """ Specialization of inputs to represent circuit's inputs fixed at 0 """

    __slots__ = []

    def __init__(self):
        """ Constructs zero """
        super().__init__("0")

    @property
    def tree(self):
        """ Specialization of tree """
        return "0"


class Output (Node):
    """ Specialization of nodes to represent circuit's outputs """

    __slots__ = []

    def __init__(self, name):
        """ Constructs output """
        super().__init__(name, gates.gate("O"))

    def add_output(self, out, opos, inv):
        """ Specialization to avoid adding output to outputs """

        raise GraphException("""
            Output gate `{}` cannot have output.
        """.format(self.name))


class Recycled (Node):
    """ Specialization of nodes to represent nodes that recycle bits """

    KIND_NONE = 0
    KIND_PART = 1
    KIND_FULL = 2

    enabled = (gates.gate("AND"), gates.gate("OR"), gates.gate("MAJ"))

    __slots__ = ("__kind")

    def __init__(self, name):
        """ Constructs recycled node """
        super().__init__(name)
        self.__kind = Recycled.KIND_NONE

    def insert(self, parent, ipos, opos):
        """ Inserts bit-recycling node at its new parent \
            and replaces the old one """

        inode, inpos, ininv = parent.get_output(ipos)

        # Evaluate new kind
        if isinstance(inode, Recycled):
            if inode.full:
                raise GraphException("""
                    Cannot recycle `{}` again.
                """.format(inode.name))

            self.__kind = Recycled.KIND_FULL
        else:
            self.__kind = Recycled.KIND_PART

        self.gate = inode.gate
        onode, onpos, oninv = parent.get_output(opos)

        if not self.full:
            # 1-bit recycling
            node, pos, iinv = inode.get_input(inpos)
            node.replace_output_pos(pos, self, self.count_inputs, iinv)
            self.add_input(node, pos, iinv)

            # Uses the inversion from the old node to define the inversion
            # of the recycled gate
            oinv = oninv ^ ininv
            onode.replace_input_pos(onpos, self, self.count_outputs, oinv)
            self.add_output(onode, onpos, oinv)

        # Replace parents' outputs
        for i, (node, pos, inv) in enumerate(inode.inputs):
            if i != inpos:
                node.replace_output_pos(pos, self, self.count_inputs, inv)
                self.add_input(node, pos, inv)

        # Replace children' inputs
        for out, opos, inv in inode.outputs:
            out.replace_input_pos(opos, self, self.count_outputs, inv)
            self.add_output(out, opos, inv)

        if self.full:
            # 2-bit recycling
            node, pos, iinv = inode.get_input(inpos)
            node.replace_output_pos(pos, self, self.count_inputs, iinv)
            self.add_input(node, pos, iinv)

            # Uses the inversion from the old node to define the inversion
            # of the recycled gate
            oinv = oninv ^ ininv
            onode.replace_input_pos(onpos, self, self.count_outputs, oinv)
            self.add_output(onode, onpos, oinv)

    def signal(self, pos):
        """ Find out whence its signal came """

        if pos == self.count_outputs - 1:
            pos = -1

        if pos == 0 or (pos == -1 and self.full):
            inp, ipos, _ = self.get_input(pos)
            is_rec = isinstance(inp, Recycled)
            return inp.signal(ipos)

        return (self, pos)

    @property
    def kind(self):
        """ Gets node's kind """
        return self.__kind

    @property
    def full(self):
        """ True if node recycled both bits """
        return self.kind == Recycled.KIND_FULL

    @property
    def tree(self):
        """ Gets node's tree name """

        fmt = "REC2.{}" if self.full else "REC1.{}"
        return fmt.format(self.gate.name)


class Graph (object):

    __slots__ = ["__nodes", "__inputs", "__outputs"]

    def __init__(self, nodes=()):
        """ Constructs graph """
        self.__nodes = cl.OrderedDict()
        self.__inputs = cl.OrderedDict()
        self.__outputs = cl.OrderedDict()
        self.add(nodes)

    def remove(self, node):
        """ Removes node from graph """
        self.__nodes.pop(node, None)
        self.__inputs.pop(node, None)
        self.__outputs.pop(node, None)

    def add(self, nodes):
        """ Adds a new node """

        if isinstance(nodes, Node):
            if nodes.name in self:
                raise GraphException("""
                    Nodes with same name `{}` are not allowed.
                """.format(nodes.name))

            self.__nodes[nodes] = nodes

            if isinstance(nodes, Input):
                self.__inputs[nodes] = nodes

            elif isinstance(nodes, Output):
                self.__outputs[nodes] = len(self.__outputs)

        if isinstance(nodes, cl.abc.Iterable):
            for n in nodes:
                self.add(n)

    def remove_dangling(self):
        """ Remove dangling nodes from graph """

        start_time = time.time()
        zero_out = set()

        for node in self:
            # Select nodes that have no outputs and are not
            # the circuit's primary outputs
            if node.count_outputs == 0 and not isinstance(node, Output):
                zero_out.add(node)

        while zero_out:
            node = zero_out.pop()

            # Remove nodes found from the outputs of another
            for i in range(node.count_inputs):
                inp, ipos, _ = node.get_input(i)
                inp.remove_outputs(ipos)

                # Keep moving up
                if inp.count_outputs == 0:
                    zero_out.add(inp)

            self.remove(node)

        return time.time() - start_time

    def remove_wires(self):
        """ Remove wires from graph """

        start_time = time.time()
        wire = gates.gate("W")
        remove = []

        for node in self:
            # Select only wires
            if node.gate is not wire:
                continue

            inp, ipos, iinv = node.get_input(0)
            # Remove wire's input
            inp.remove_outputs(ipos)

            # Move wire's outputs to its input
            for out, opos, oinv in node.outputs:
                inv = iinv ^ oinv
                out.replace_input_pos(opos, inp, ipos, inv)
                inp.add_output(out, opos, inv)

            remove.append(node)

        # Safely remove wires from circuit
        for node in remove:
            self.remove(node)

        return time.time() - start_time

    def draw(
        self, stream, labels=False, use_gates=False,
        gargs={}, nargs={}, eargs={}, rargs={}, bargs={}
    ):
        """ Draw a graph representing the result of recycling """

        start_time = time.time()

        # Default parameters
        default_gargs = {
            "strict": False,
            "ordering": "out",
            "directed": False,
            "bgcolor": "transparent",
            "outputorder": "edgesfirst",
            "dpi": 300,
            "rankdir": "LR",
        }

        default_nargs = {
            "shape": "circle",
            "style": "filled",
            "fillcolor": "#ffffff",
            "width": 0.2,
        }

        default_eargs = {
            "arrowsize": 0.4,
            "fillcolor": "#000000",
        }

        default_rargs = {
            "style": "filled",
            "fillcolor": "#6691ce",
            "width": 0.3,
        }

        default_bargs = {
            "fillcolor": "#000000",
            "width": 0.15,
            "penwidth": 0,
            "fontcolor": "#ffffff",
        }

        debug_args = {
            "fillcolor": "#ff0000"
        }

        # Join default parameters with the ones passed by the user
        gargs = {**default_gargs, **gargs}
        nargs = {**default_nargs, **nargs}
        eargs = {**default_eargs, **eargs}
        rargs = {**nargs, **default_rargs, **rargs}
        bargs = {**nargs, **default_bargs, **bargs}

        if labels:
            nargs.pop("fixedsize", None)
            rargs.pop("fixedsize", None)

        # List of colors
        # (generated using http://tools.medialab.sciences-po.fr/iwanthue/)
        colors = [
            "#5d6eb9", "#5db84f", "#c550ba", "#a5b246", "#7861d3",
            "#d69c35", "#bb8ee0", "#4f8040", "#d84380", "#4fb99c",
            "#ce3b46", "#61a2d9", "#da5e30", "#974d89", "#857431",
            "#dc87b7", "#a6582d", "#a3475b", "#d9a06c", "#de7c78"
        ]

        cpos = 0

        # Create graph
        graph = dot.graph(**gargs)
        # Non-recycling edges color
        opaque = "#00000032"
        ncolors = {}

        # Iterate over ranks
        for i, (rank, nodes, last) in enumerate(self.ranks()):
            graph.add_subgraph({
                "rank": ("source" if i == 0 else ("sink" if last else "same")),
                "style": "filled",
                "color": "lightgrey"
            })

            for node in nodes:
                label = ""

                if labels:
                    label = node.tree if use_gates else node.name

                # If node is bit-recycling
                if isinstance(node, Recycled):

                    settings = {**rargs, **
                                debug_args} if node.debug else {**rargs}
                    graph.add_node(node.name, label=label, **settings)

                    # Iterate over its outputs
                    for j, (out, _, inv) in enumerate(node.outputs):
                        # Find out whence its signal comes from
                        sign = node.signal(j)
                        style = "dashed" if inv else "solid"

                        if sign[0] is not node:
                            # Its signal came from another node
                            color = colors[cpos]

                            if sign in ncolors:
                                color = ncolors[sign]
                            else:
                                ncolors[sign] = color
                                cpos = (cpos + 1) % len(colors)

                            # Add coloured edge
                            graph.add_edge(node.name, out.name, style=style,
                                           color=color, **eargs)
                        else:
                            # Add opaque edge
                            graph.add_edge(node.name, out.name, style=style,
                                           color=opaque, **eargs)
                else:
                    # Other nodes
                    if isinstance(node, (Input, Output)):
                        settings = {**bargs, **
                                    debug_args} if node.debug else {**bargs}
                        graph.add_node(node.name, label=label, **settings)
                    else:
                        settings = {**nargs, **
                                    debug_args} if node.debug else {**nargs}
                        graph.add_node(node.name, label=label, **settings)

                    for out, _, inv in node.outputs:
                        style = "dashed" if inv else "solid"
                        graph.add_edge(node.name, out.name, style=style,
                                       color=opaque, **eargs)

            names = [node.name for node in nodes]

        # Color remaining edges
        for (node, opos), color in ncolors.items():
            edge = graph.get_edge(node.name, node.get_output(opos)[0].name)
            edge["color"] = color

        # Save dot file
        graph.write(stream)

        return time.time() - start_time

    @staticmethod
    def save_tree_line(file, names, gates, positions, inverts, comments):
        data = zip(names, gates, positions, inverts, comments)

        for i, (name, gate, pos, invs, com) in enumerate(data):
            if i > 0:
                print(end=" ", file=file)

            print(name, gate, end="@", sep="=", file=file)

            print(*(
                ("~{}" if inv else "{}").format(p)
                for inv, p in zip(invs, pos)
            ), sep=",", end="", file=file)

            print("#{}".format(com), end="", file=file)

        print(file=file)

    def save_tree(self, file):
        """ Saves the circuit's tree representation """

        start_time = time.time()

        # Identity name
        idn = gates.gate("W").name

        # Bit type used to store the information passing through the sections
        Bit = cl.namedtuple("Bit", [
            "node", "idx", "comment", "tree", "is_wire", "outputs"
        ])

        line = cl.OrderedDict()
        wires = cl.OrderedDict()
        wire_count = {}

        # Iterate over the graph's rank
        for i, (_, nodes, _) in enumerate(self.ranks()):
            prev = line
            line = cl.OrderedDict()
            ipos = 0

            # Add nodes to line
            for node in nodes:
                line[node] = ipos
                ipos += node.count_inputs

            # To be able to point at the right output, we print the lines
            # only on its outputs
            if i == 0:
                continue

            found = []

            # Open nodes from previous line
            for node in prev.keys():
                outs = tuple(node.outputs)

                # Treats recycling bits gates
                if isinstance(node, Recycled):
                    stop = node.count_outputs - node.full

                    # First recycled bit (always exists)
                    linp, _ = node.signal(0)

                    found.append(Bit(
                        node=node, idx="L", comment=linp.name,
                        tree=node.tree, is_wire=False,
                        outputs=outs[: 1]
                    ))

                    # Center (logic) bit
                    cinp, _ = node.signal(1)

                    found.append(Bit(
                        node=node, idx="C", comment=cinp.name,
                        tree=node.tree, is_wire=False,
                        outputs=outs[1: stop]
                    ))

                    if node.full:
                        # Last recycled bit
                        rinp, _ = node.signal(-1)

                        found.append(Bit(
                            node=node, idx="R", comment=rinp.name,
                            tree=node.tree, is_wire=False,
                            outputs=outs[stop:]
                        ))

                else:
                    inp, _ = node.signal(0)

                    found.append(Bit(
                        node=node, idx=None, comment=inp.name,
                        tree=node.tree, is_wire=False,
                        outputs=outs
                    ))

            # Open unassigned wires
            found.extend(
                Bit(node=w, idx=idx, comment=comm, tree=idn,
                    is_wire=True, outputs=outs)
                for (w, idx), (comm, outs) in wires.items()
            )

            # Create new wires
            wires = cl.OrderedDict()

            # Circuit's data
            names = []
            circuit = []
            positions = []
            inverts = []
            comments = []
            gate_idx = {}

            # Iterate over open nodes
            for inp, idx, comm, tree, is_wire, outs in found:
                gate_positions = []
                gate_inverts = []
                key = (inp, idx)

                for out, opos, inv in outs:

                    # Search the output on the current line
                    # If it exists, just point at it
                    if out in line:
                        gate_positions.append(line[out] + opos)
                        gate_inverts.append(inv)
                        continue

                    # Otherwise, use wires
                    if key not in wires:
                        wires.setdefault(key, (comm, []))
                        gate_positions.append(ipos)
                        gate_inverts.append(False)
                        ipos += 1

                    wires[key][1].append((out, opos, inv))

                # Save data
                if is_wire or inp not in gate_idx:
                    name = inp.name

                    if is_wire:
                        wire_count[inp] = wire_count.get(inp, 0) + 1
                        name = "{}-w{}".format(inp.name, wire_count[inp])
                    else:
                        gate_idx[inp] = len(circuit)

                    names.append(name)
                    circuit.append(tree)
                    positions.append(gate_positions)
                    inverts.append(gate_inverts)
                    comments.append(comm)

                else:
                    pos = gate_idx[inp]
                    positions[pos].extend(gate_positions)
                    inverts[pos].extend(gate_inverts)
                    comments[pos] += ",{}".format(comm)

            # Save data
            Graph.save_tree_line(
                file, np.array(names), np.array(circuit),
                [np.array(v, np.int) for v in positions],
                [np.array(v, np.bool8) for v in inverts],
                np.array(comments)
            )

        # Output's data
        names = []
        circuit = []
        positions = []
        inverts = []
        comments = []

        for out, pos in self.__outputs.items():
            names.append(out.name)
            circuit.append(out.tree)
            positions.append(np.full(1, pos, np.uint))
            inverts.append(np.zeros(1, np.bool8))
            comments.append(out.signal(0)[0].name)

        # Save data
        Graph.save_tree_line(
            file, np.array(names), np.array(circuit),
            positions, inverts, np.array(comments)
        )

        return time.time() - start_time

    def topology(self):
        """ Topological sort """

        edges = {}
        nodes = cl.OrderedDict((n, 0) for n in self.inputs)
        out_rank = 0

        # Since it is a DAG, it is safe to use an adapted BFS
        # to make the topological sort
        while nodes:
            node, rank = nodes.popitem(last=False)

            if node not in self.__outputs:
                out_rank = rank + 1
                yield node, rank

            for out, *_ in node.outputs:
                oedges, orank = edges.pop(out, (0, 0))

                oedges += 1
                orank = max(orank, rank + 1)

                # This adaptation only opens the node after all
                # of its inputs where opened
                if oedges == out.count_inputs:
                    nodes[out] = orank
                else:
                    edges[out] = (oedges, orank)

        for node in self.outputs:
            yield node, out_rank

        # Tests if circuit is still combinational
        if edges:
            raise GraphLoopException("There are loops on this graph.")

    def ranks(self):
        """ Rank sort """

        last_rank = None
        nodes = None

        # Use the topological sort to iterate over nodes
        for node, rank in self.topology():
            # If rank has changed, yield the previous rank
            if rank != last_rank:

                if nodes is not None:
                    yield last_rank, nodes, False

                last_rank = rank
                nodes = []

            nodes.append(node)

        if nodes:
            # Yield the outputs
            yield last_rank, nodes, True

    def count_levels(self):
        """ Gets the number of levels on the graph """
        return max(rank for _, rank in self.topology()) - 1

    def count_fixed(self):
        """ Gets the number of fixed nodes on the graph """
        return sum(isinstance(n, Zero) for n in self.inputs)

    @property
    def count_inputs(self):
        """ Gets the number of inputs on the graph """
        return len(self.__inputs)

    @property
    def count_nodes(self):
        """ Gets the number of nodes on the graph """
        return len(self.__nodes)

    @property
    def count_outputs(self):
        """ Gets the number of outputs on the graph """
        return len(self.__outputs)

    @property
    def inputs(self):
        """ Iterate over the graph's inputs """
        yield from self.__inputs.keys()

    @property
    def nodes(self):
        """ Iterate over the graph's nodes """
        yield from self.__nodes.keys()

    @property
    def outputs(self):
        """ Iterate over the graph's outputs """
        yield from self.__outputs.keys()

    def __iter__(self):
        """ Iterate over the graph's nodes """
        return self.nodes

    def __len__(self):
        """ Gets the number of nodes on the graph """
        return self.count_nodes

    def __getitem__(self, node):
        """ Gets a node on the graph by its name """
        return self.__nodes[node]

    def __contains__(self, node):
        """ Tests if the graph contains a given node """
        return node in self.__nodes

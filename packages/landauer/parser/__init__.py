import re
import time
import string
import itertools as it
import collections as cl

from landauer import gates
from landauer import graph


class ParserException (Exception):
    """ Class to represent parser's exceptions """
    pass


# Pre-compiled REGEXPs
remove_newline_comment = re.compile(r"//.*")
single_spaces = re.compile(r"\s+")
norm_spaces = re.compile(r"\s*([{},;()&|=])\s*")
gates_split = re.compile(r"[&|^]")

parse_netlist = re.compile(r"^module ([^\s]+) \(([^;]*)\) ; "
                           r"input ([^;]*) ; "
                           r"output ([^;]*) ; "
                           r"wire ([^;]*) ; "
                           r"((?:.* ; )*?)"
                           r"endmodule$")


def remove_tilde(name):
    """ Removes the tilde (inversion) from a gate name """

    inv = False
    name = name.strip()

    # Inverts while there is a tilde
    while name[0] == "~":
        name = name[1:].lstrip()
        inv = not inv

    return name, inv


def split(netlist):
    """ Splits netlist into pieces """
    netlist = remove_newline_comment.sub("", netlist)
    netlist = norm_spaces.sub(r" \1 ", netlist)
    netlist = single_spaces.sub(r" ", netlist)
    info = parse_netlist.match(netlist.strip())

    if info is None:
        raise Exception("Could not match netlist.")

    # Break output into metadata
    return {
        "name": info.group(1),
        "args": info.group(2),
        "inputs": list(map(str.strip, info.group(3).split(","))),
        "outputs": list(map(str.strip, info.group(4).split(","))),
        "nodes": list(map(str.strip, info.group(5).split(","))),
        "exprs": list(filter(bool, map(str.strip, info.group(6).split(";"))))
    }


def parse_structure(netlist):
    """ Parses file structure into vertices of a graph """

    # Get pieces
    info = split(netlist)

    # Fetch inputs and nodes
    inputs = (graph.Input(n) for n in info["inputs"])
    nodes = list(map(graph.Node, info["nodes"]))

    # Fetch outputs
    outputs = []

    for i, n in enumerate(info["outputs"]):
        # To avoid having logic on the outputs,
        # we create virtual outputs
        node = graph.Node(n)
        out = graph.Output("o-{}".format(i))

        node.add_output(out, 0, False)
        out.add_input(node, 0, False)

        nodes.append(node)
        outputs.append(out)

    # Return graph and expressions
    return graph.Graph(it.chain(inputs, outputs, nodes)), info["exprs"]


def parse_inputs(circuit, out, inputs):
    """ Parses inputs from a given gate """

    for name, inv in inputs:
        if name not in circuit:
            raise ParserException("Unknown input `{}`.".format(name))

        # Get node
        inp = circuit[name]

        opos = out.count_inputs
        ipos = inp.count_outputs

        out.add_input(inp, ipos, inv)
        inp.add_output(out, opos, inv)


def parse_expression(expr, node_map):
    """ Parses a gate's expression """

    # Get left and right operand
    lop, rop = map(str.strip, expr.split("="))
    gate = None

    # Get output name
    _, output = lop.split()

    # Count ands and ors
    and_count = rop.count("&")
    or_count = rop.count("|")

    # Fetch arguments
    args = []
    unique = set()

    strip = "();{}".format(string.whitespace)

    for op in gates_split.split(rop):
        op = op.strip(strip)

        if op == "" or op in unique:
            continue

        unique.add(op)
        args.append(op)

    # Tries to figure out the gate
    if len(args) == 1:
        gate = gates.gate("W")

    elif len(args) == 2:
        if and_count == 1:
            gate = gates.gate("AND")
        elif or_count == 1:
            gate = gates.gate("OR")

    elif len(args) == 3:
        if (and_count == 2 or and_count == 3) and or_count == 2:
            gate = gates.gate("MAJ")

    if gate is None:
        raise ParserException("Unknown operator at `{}`.".format(expr))

    # Clean argument and detect inversion
    for i, arg in enumerate(args):
        arg, inv = remove_tilde(arg)

        if arg in node_map:
            arg, new_inv = node_map[arg]
            inv = inv ^ new_inv

        args[i] = (arg, inv)

    return gate, output, args


def parse_logic(nodes, circuit):
    """ Create the circuit's graph's edges """

    for gate, output, args in nodes:
        # Create connection to a gate
        try:
            node_output = circuit[output]
            node_output.gate = gate
            parse_inputs(circuit, node_output, args)

        except KeyError:
            raise ParserException("Unknown output node `{}`.".format(output))


def parse_expressions(circuit, exprs):
    """ Parse the circuit's expressions """

    # Fill list of nodes
    nodes = []
    node_map = {
        "1": ("0", True), "1'b1": ("0", True), "1'b0": ("0", False)
    }

    # Create 0 fixed gate (it will be removed if not needed)
    circuit.add(graph.Zero())

    for expr in map(str.strip, exprs):
        nodes.append(parse_expression(expr, node_map))

    # Build the graph's edges
    parse_logic(nodes, circuit)


def parse(netlist):
    """ Call all parsing functions """

    start_time = time.time()
    circuit, exprs = parse_structure(netlist)
    parse_expressions(circuit, exprs)
    circuit.remove_wires()
    circuit.remove_dangling()

    parse_time = time.time() - start_time
    return circuit, parse_time

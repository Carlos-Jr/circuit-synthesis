#!/usr/bin/env python3

import os
import sys
import argparse

import numpy as np

from trope import gates
from trope import parser


class ConvertException (Exception):
    """ Class to represent conversor's exceptions """

    __slots__ = ()

    def __init__ (self, kind, value = None, limit = None):
        """ Creates a new conversor's exception """

        if value is not None and limit is not None:
            kind = "Graph {} ({}) beyond limit ({})".format(kind, value, limit)

        super().__init__(kind)

argparser = argparse.ArgumentParser(prog = os.path.basename(__file__))

argparser.add_argument("input", help = "Input circuit (in ABC's verilog format)")
argparser.add_argument("output", nargs = "?", help = "Output file (in circuit's tree representation)")

argparser.add_argument("-limit-inputs", type = int, help = "Limit the number of inputs by raising an exception if exceeded.")
argparser.add_argument("-limit-outputs", type = int, help = "Limit the number of outputs by raising an exception if exceeded.")
argparser.add_argument("-limit-size", type = int, help = "Limit the number of gates by raising an exception if exceeded.")
argparser.add_argument("-limit-depth", type = int, help = "Limit the number of levels by raising an exception if exceeded.")

argparser.add_argument("-recycle-bits", action = "store_true", help = "Enable bit-recycling")
argparser.add_argument("-maj-bits", type = int, nargs = "+", default = { 0, 1, 2 }, choices = ( 0, 1, 2 ), help = "Majorities' positions enabled to recycle.")
argparser.add_argument("-recycle-focus", default = "1-bit", choices = ( "1-bit", "2-bit", "gates", "entropy" ), help = "Choose recycling focus.")
argparser.add_argument("-gate-inputs", help = "Relation of gates and their inputs' combinations (required if -recycle-focus is entropy).")
argparser.add_argument("-prefer-gates", nargs = "+", default = { "AND", "OR" }, choices = ( "AND", "OR", "MAJ" ), help = "Choose preferred gates to recycle.")
argparser.add_argument("-save-1-bit", help = "Save 1-bit recycled count per level (gets file name as parameter).")
argparser.add_argument("-save-2-bit", help = "Save 2-bit recycled count per level (gets file name as parameter).")
argparser.add_argument("-save-recycled", help = "Save 1-bit + 2-bit recycled count per level (gets file name as parameter).")
argparser.add_argument("-energy-oriented", action = "store_true", help = "Energy oriented recycling.")

argparser.add_argument("-save-size", help = "Save the circuit's size (gets file name as parameter).")
argparser.add_argument("-save-depth", help = "Save the circuit's depth (gets file name as parameter).")
argparser.add_argument("-save-inputs", help = "Save the circuit's input count (gets file name as parameter).")
argparser.add_argument("-save-outputs", help = "Save the circuit's output count (gets file name as parameter).")

argparser.add_argument("-save-dot", help = "Save the circuit in dot format (gets file name as parameter).")
argparser.add_argument("-use-labels", action = "store_true", help = "Use labels when drawing.")
argparser.add_argument("-use-gates", action = "store_true", help = "Use gate name as label (requires -use-labels enabled).")
argparser.add_argument("-edge-width", type = float, default = 1.0, help = "Edge with when drawing.")
argparser.add_argument("-rankdir", default = "LR", choices = ( "LR", "TB" ), help = "Rank direction when drawing.")

argparser.add_argument("-quiet", action = "store_true", help = "Non-verbose mode (except errors).")

def main (argv):

def convert(circuit,
            input_limit = None,
            output_limit = None,
            size_limit = None,
            depth_limit = None,
            ):

    '''
    Convert netlist (in ABC's verilog format) to our internal tree representation.

    Parameters
    ----------
    circuit : str
        Netlist in ABC's verilog format
    input_limit : int
        Check 'circuit' netlist regarding number of inputs. Throw an exception if exceeded. It is optional.

    Raises
    ------
    ConvertException
        Exception thrown if any limits are reached. 
    '''
    args = argparser.parse_args(argv)
    out = open(os.devnull, "w") if args.quiet else sys.stdout

    time_fmt = "time = {:.5f}s".format

    # Read circuit
    print("reading circuit", flush = True, file = out)
    circuit, cir_time = parser.parse(args.input)
    print("size =", len(circuit), time_fmt(cir_time), file = out)

    # Test input limit
    if args.limit_inputs is not None:
        inputs = circuit.count_inputs

        if inputs > args.limit_inputs:
            raise ConvertException("inputs", inputs, args.limit_inputs)

    # Test output limit
    if args.limit_outputs is not None:
        outputs = circuit.count_outputs

        if outputs > args.limit_outputs:
            raise ConvertException("outputs", outputs, args.limit_outputs)

    # Test size limit
    if args.limit_size is not None:
        size = len(circuit)

        if size > args.limit_size:
            raise ConvertException("size", size, args.limit_size)

    # Test depth limit
    if args.limit_depth is not None:
        depth = circuit.count_levels()

        if depth > args.limit_depth:
            raise ConvertException("depth", depth, args.limit_depth)

    # Recycle bits
    if args.recycle_bits:
        print("recycling bits", flush = True, file = out)

        # Get recycling preferences
        maj_bits = set(args.maj_bits)
        rec_focus = args.recycle_focus
        prefer_gates = set(map(gates.gate, args.prefer_gates))
        gate_inputs = {}

        if rec_focus == "entropy":
            # Requires -gate-inputs flag
            if args.gate_inputs is None:
                raise ConvertException(
                    "-gate-inputs is required if -recycle_focus is entropy."
                )

            # Read gates' inputs' combinations file
            with open(args.gate_inputs) as file:
                for line in file:
                    gate, *_, inputs = map(str.strip, line.split(","))
                    gate_inputs[gate] = np.array(inputs.split(), np.int)

        # Recycle bits
        rec1, rec2, rec_time = circuit.recycle(
            args.energy_oriented,
            prefer_gates, rec_focus, maj_bits, gate_inputs
        )

        # Count recycled bits
        sr1 = rec1.sum()
        sr2 = rec2.sum()
        sr12 = sr1 + sr2

        print("recycled", sr1, "(1-bit) +", sr2, "(2-bit) =", sr12, file = out)
        print("size =", len(circuit), time_fmt(rec_time), file = out)

        # Save data
        if args.save_1_bit is not None:
            np.savetxt(args.save_1_bit, rec1, fmt = "%d")

        if args.save_2_bit is not None:
            np.savetxt(args.save_2_bit, rec2, fmt = "%d")

        if args.save_recycled is not None:
            np.savetxt(args.save_recycled, rec1 + rec2, fmt = "%d")

    # Save circuit's properties
    if args.save_size is not None:
        with open(args.save_size, "w") as file:
            ignore = circuit.count_inputs + circuit.count_outputs
            print(len(circuit) - ignore, file = file)

    if args.save_inputs is not None:
        with open(args.save_inputs, "w") as file:
            print(circuit.count_inputs - circuit.count_fixed(), file = file)

    if args.save_outputs is not None:
        with open(args.save_outputs, "w") as file:
            print(circuit.count_outputs, file = file)

    if args.save_depth is not None:
        with open(args.save_depth, "w") as file:
            print(circuit.count_levels(), file = file)

    # Draw circuit
    gargs = { "rankdir" : args.rankdir }
    eargs = { "penwidth": args.edge_width }

    if args.save_dot is not None:
        # Save circuit in graphviz format
        print("saving dot", file = out)

        dot_time = circuit.draw(
            args.save_dot,
            labels = args.use_labels, use_gates = args.use_gates,
            gargs = gargs, eargs = eargs
        )

        print(time_fmt(dot_time), file = out)

    if args.output is not None:
        # Save tree representation
        print("saving tree data", file = out)
        save_time = circuit.save_tree(args.output)
        print(time_fmt(save_time), file = out)

    print("done", file = out)

    return circuit

if __name__ == "__main__":
    main(sys.argv[ 1 : ])

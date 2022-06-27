import graphviz
import logging
import sys
from landauer import parser
import io
from pathlib import Path

circuit_types = ["c11", "c13", "c17"]
circuit__n_inputs = range(3, 17)
folder = "../../benchmarks/verilog/Adders_bencgen/balanced_aig/"
for n in circuit__n_inputs:
    for circuit_type in circuit_types:
        file = folder+circuit_type+"_"+str(n)+".balanced.aig.v"
        netlist = Path(file).read_text()

        circuit, parse_time = parser.parse(netlist)
        original_tree = io.StringIO()
        ir_time = circuit.save_tree(original_tree)
        graph = io.StringIO()
        graph_time = circuit.draw(graph,
                                  labels=False,
                                  use_gates=False,
                                  gargs={"rankdir": "TB"},
                                  eargs={"penwidth": "1.0"})

        output = graphviz.Source(graph.getvalue())
        output.format = 'png'
        print("Desenhando "+circuit_type+"_"+str(n))
        output.render("results/Graph_"+circuit_type+"_"+str(n))

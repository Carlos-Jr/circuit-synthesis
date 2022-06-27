import graphviz
import logging
import sys
from landauer import parser
import io
from pathlib import Path


folder = "../../benchmarks/verilog/Adders_bencgen/balanced_aig/"

circuit_type = "c11"
circuit__n_inputs = 3

file = folder+circuit_type+"_"+str(circuit__n_inputs)+".balanced.aig.v"
netlist = Path(file).read_text()

circuit, parse_time = parser.parse(netlist)
original_tree = io.StringIO()
ir_time = circuit.save_tree(original_tree)
graph = io.StringIO()
graph_time = circuit.draw(graph,
                          labels=True,
                          use_gates=True,
                          gargs={"rankdir": "LR"},
                          eargs={"penwidth": "4.0"})

output = graphviz.Source(graph.getvalue())
output.format = 'pdf'
print("Desenhando "+circuit_type+"_"+str(circuit__n_inputs))
output.render("results/Graph_"+circuit_type+"_"+str(circuit__n_inputs))

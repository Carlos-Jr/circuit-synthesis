from data_visualization import circuit_draw

folder = "../../benchmarks/verilog/Adders_bencgen/balanced_aig/"

circuit_type = "c11"
circuit__n_inputs = 3

pipeline_cuts = [0, 1, 3, 5]
max_pipeline_cuts = 10

verilog_file = folder+circuit_type+"_"+str(circuit__n_inputs)+".balanced.aig.v"

file_out = "results/Graph_"+circuit_type+"_"+str(circuit__n_inputs)

circuit_draw.draw_with_pipelines(
    verilog_file, pipeline_cuts, max_pipeline_cuts, file_out)

import graphviz
from landauer import parser
import io
from pathlib import Path
from PIL import Image, ImageDraw


def draw_with_pipelines(verilog_file, pipeline_cuts, max_pipeline_cuts, file_out):
    netlist = Path(verilog_file).read_text()

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
    output.format = 'png'
    output.render(file_out)

    image = Image.open(file_out+".png")
    image_width, image_height = image.size
    draw = ImageDraw.Draw(image)

    distance_btw_cuts = int(
        (image_width - int((image_width/100)*10))/max_pipeline_cuts)
    for i in pipeline_cuts:
        if(i > 0):
            cut_x = int((image_width/100)*5) + distance_btw_cuts*(i-1)
            draw.line([(cut_x, 0), (cut_x, image_height)],
                      width=10, fill="red")
    image.save(file_out+".png")

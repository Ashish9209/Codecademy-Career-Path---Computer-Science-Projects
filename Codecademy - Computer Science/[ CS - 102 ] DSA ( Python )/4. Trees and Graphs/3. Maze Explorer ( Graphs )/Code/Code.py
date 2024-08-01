# import classes
from graph import Graph, build_graph
from vertex import Vertex

excavation_site = build_graph()
try:
    excavation_site.explore()
except EOFError:
    print("An error occurred during room exploration.")

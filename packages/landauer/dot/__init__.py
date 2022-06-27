#!/usr/bin/env python3

import json
import itertools as it
import collections as cl


class DotException (Exception):
    """ Class to represent dot's exceptions """
    pass

def sanitize (value):
    """ Sanitize string to save to dot file """
    return json.dumps(str(value))

class subgraph (object):
    """ Class to manage dot's subgraphs """

    __slots__ = [ "nodes", "attrs" ]

    def __init__ (self, nodes = [], attrs = {}, **kwattrs):
        """ Constructs subgraphs """
        self.nodes = nodes
        self.attrs = { **attrs, **kwattrs }

    def append (self, node):
        """ Appends nodes to subgraphs """
        self.nodes.append(node)

class graph (object):
    """ Class to manage a subset of graphs from graphviz """

    __slots__ = [
        "directed", "strict",
        "nodes", "edges", "subgraphs",
        "active", "attrs"
    ]

    def __init__ (self, directed = True, strict = True, attrs = {}, **kwattrs):
        """ Constructs graph """
        self.nodes = cl.OrderedDict()
        self.edges = cl.OrderedDict()
        self.subgraphs = []
        self.active = None
        self.directed = directed
        self.strict = strict
        self.attrs = { **attrs, **kwattrs }

    def add_subgraph (self, attrs = {}, **kwattrs):
        """ Adds subgraph to graph """
        sid = len(self.subgraphs)

        self.subgraphs.append(subgraph([], attrs, **kwattrs))
        self.active = sid

        return sid

    def get_subgraph (self, sid):
        """ Gets subgraph from graph """
        return self.subgraphs[sid]

    def add_node (self, node, attrs = {}, **kwattrs):
        """ Adds node to graph """
        node = str(node)
        self.get_subgraph(self.active).append(node)
        self.nodes[node] = { **attrs, **kwattrs }

    def get_node (self, node):
        """ Gets node from graph """
        return self.nodes[str(node)]

    def add_edge (self, n1, n2, attrs = {}, **kwattrs):
        """ Adds edge to graph """
        n1 = str(n1)
        n2 = str(n2)
        self.edges.setdefault(( n1, n2 ), []).append({ **attrs, **kwattrs })

    def get_edge (self, n1, n2):
        """ Gets first edge from graph """
        n1 = str(n1)
        n2 = str(n2)
        return self.edges[( n1, n2 )][0]

    def get_edges (self, n1, n2):
        """ Gets edges from graph """
        n1 = str(n1)
        n2 = str(n2)
        yield from self.edges[( n1, n2 )]

    def print (self, ind, file, *args, **kwargs):
        """ Prints in dot format to a file """
        print(*it.repeat("  ", ind), sep = "", end = "", file = file)
        print(*args, **kwargs, file = file)

    def print_attrs (self, ind, file, attrs = {}):
        """ Print attributes in dot format to a file,
            optimizing human reading """

        # Test if it will requires multiple lines
        multiline = len(attrs) > 1
        self.print(0, file, "[", end = "")

        if multiline:
            self.print(0, file)

        maxleft = max(map(len, map(sanitize, attrs.keys())))

        # Prints attributes
        for i, ( k, v ) in enumerate(sorted(attrs.items())):

            if i != 0:
                self.print(0, file, ",")

            if multiline:
                self.print(ind + 1, file, end = "")
            else:
                self.print(0, file, " ", end = "")

            ksan = sanitize(k)

            # Aligns attributes for better human reading
            self.print(0, file, ksan, " " * (maxleft - len(ksan)), end = "= ")
            self.print(0, file, sanitize(v), end = "")

        if multiline:
            self.print(0, file)
            self.print(ind, file, end = "")
        else:
            self.print(0, file, end = " ")

        self.print(0, file, "];")

    def print_subgraphs (self, ind, file):
        """ Print subgraphs in dot format into a file """

        sgind = ind + 1

        for sg in self.subgraphs:
            self.print(ind, file, "{")

            self.print(sgind, file, "graph ", end = "")
            self.print_attrs(sgind, file, sg.attrs)

            for nd in sorted(sg.nodes):
                self.print(sgind, file, sanitize(nd), end = " ")
                self.print_attrs(sgind, file, self.nodes[nd])

            self.print(ind, file, "}")

    def print_edges (self, ind, file):
        """ Print edges in dot format into a file """

        for ( n1, n2 ), edges in sorted(self.edges.items()):
            for attrs in edges:
                self.print(ind, file, sanitize(n1), "--", sanitize(n2), end = " ")
                self.print_attrs(ind, file, attrs)

    def write (self, stream):
        """ Save graph in dot format into a stream """

        self.print(0, stream, "{}{}graph {{".format(
            "strict " if self.strict else "",
            "di" if self.directed else ""
        ))

        self.print(1, stream, "graph ", end = "")
        self.print_attrs(1, stream, self.attrs)
        self.print_subgraphs(1, stream)
        self.print_edges(1, stream)
        self.print(0, stream, "}")

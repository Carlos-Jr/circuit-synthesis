import numpy as np


class Gate (object):
    """ Class to manage gates """

    __slots__ = [ "__name", "__inputs", "__outputs", "__out_map" ]
    __gates = {}

    @staticmethod
    def get (label):
        """ Gets gate from name """
        return Gate.__gates[label]

    @staticmethod
    def entropy (combs, total = None):
        """ Evaluate entropy from an array of combinations """

        if total is None:
            total = combs.sum()

        result = 0.0

        # Shannon's entropy formula
        for comb in filter(bool, combs):
            prob = comb / total
            result += prob * np.log2(prob)

        return -result

    @staticmethod
    def energy (i_combs, o_map, outputs):
        """ Evaluate energy """

        total = 0
        s_combs = np.zeros(1 << outputs, np.int)

        # Build output combinations
        for i, comb in enumerate(i_combs):
            total += comb
            s_combs[o_map[i]] += comb

        # Get input and output entropies
        i_ent = Gate.entropy(i_combs, total)
        s_ent = Gate.entropy(s_combs, total)

        return i_ent, s_ent, (i_ent - s_ent)

    def __init__ (self, name, inputs, outputs, out_map):
        """ Constructs gate """
        self.__name = name
        self.__inputs = inputs
        self.__outputs = outputs
        self.__out_map = np.array(out_map, np.int)
        self.__out_map.setflags(write = False)

        Gate.__gates[name] = self

    @property
    def name (self):
        """ Gets gate's name """
        return self.__name

    @property
    def inputs (self):
        """ Gets gate's input count """
        return self.__inputs

    @property
    def outputs (self):
        """ Gets gate's output count """
        return self.__outputs

    @property
    def out_map (self):
        """ Get gate's inputs' to outputs' combinations map """
        return self.__out_map

# Create available gates
Gate("I"   , 1, 1, [ 0, 1 ])
Gate("O"   , 1, 1, [ 0, 1 ])
Gate("W"   , 1, 1, [ 0, 1 ])
Gate("AND" , 2, 1, [ 0, 0, 0, 1 ])
Gate("OR"  , 2, 1, [ 0, 1, 1, 1 ])
Gate("MAJ" , 3, 1, [ 0, 0, 0, 1, 0, 1, 1, 1 ])

def gate (label):
    """ Gets gate from name """
    return Gate.get(label)

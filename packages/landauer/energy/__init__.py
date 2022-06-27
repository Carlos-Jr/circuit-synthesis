import csv
import numpy as np
import os
import shutil
import subprocess
import tempfile

from pathlib import Path

def read_cumulative(entropy_file, ranks_file):
    # Reading ranks
    ranks_file.seek(0)
    reader = csv.DictReader(ranks_file)
    
    rank = {}
    for line in reader:
        rank[line['name']] = int(line['rank'])

    # Reading gates entropy
    entropy_file.seek(0)
    reader = csv.DictReader(entropy_file)
    entropy = np.zeros(max(rank.values()) + 1, np.float)
    
    for line in reader:
        gate = line['name']
        if gate not in rank:
            continue

        entropy[rank[gate]] += float(line['in-entropy']) - float(line['out-entropy'])

    return np.cumsum(entropy)

def exact(tree, use_bits = 20, input_sort = "no"):
    bitcombs = Path(os.environ['DEPENDENCIES']) / "trope" / "bit-combs"
    joincombs = Path(os.environ['DEPENDENCIES']) / "trope" / "join-combs"

    tree.seek(0)
    tree_file = tempfile.NamedTemporaryFile(mode="w+")
    shutil.copyfileobj(tree, tree_file)
    tree_file.flush()

    comb_file = tempfile.NamedTemporaryFile(mode="w+")
    time_file = tempfile.NamedTemporaryFile(mode="w+")
    ranks_file = tempfile.NamedTemporaryFile(mode="w+")

    bitcombs_command = [
        str(bitcombs), tree_file.name,
        "-o"            , comb_file.name,
        "-filetype"     , "tree",
        "-use-bits"     , str(use_bits),
        "-input-sort"   , input_sort,
        "-save-time"    , time_file.name,
        "-save-ranks"   , ranks_file.name,
    ]

    bitcombs_process = subprocess.run(bitcombs_command, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    
    entropy_file = tempfile.NamedTemporaryFile(mode="w+")
    energy_file = tempfile.NamedTemporaryFile(mode="w+")
    
    joincombs_command = [
        str(joincombs), comb_file.name,
        "-save-entropy" , entropy_file.name,
        "-save-energy"  , energy_file.name,
    ]

    joicombs_process = subprocess.run(joincombs_command, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    energy = energy_file.readline().strip('\n ')
    cumulative = read_cumulative(entropy_file, ranks_file)
    return (energy, cumulative)

def approx(tree):
    appenergy = Path(os.environ['DEPENDENCIES']) / "trope" / "app-energy"
   
    tree.seek(0)
    tree_file = tempfile.NamedTemporaryFile(mode="w+")
    shutil.copyfileobj(tree, tree_file)
    tree_file.flush()

    time_file = tempfile.NamedTemporaryFile(mode="w+")
    entropy_file = tempfile.NamedTemporaryFile(mode="w+")
    ranks_file = tempfile.NamedTemporaryFile(mode="w+")
    energy_file = tempfile.NamedTemporaryFile(mode="w+")

    appenergy_command = [
        str(appenergy), tree_file.name,
        "-filetype"     , "tree",
        "-save-time"    , time_file.name,
        "-save-entropy" , entropy_file.name,
        "-save-ranks"   , ranks_file.name,
        "-save-energy"  , energy_file.name,
    ]

    appenergy_process = subprocess.run(appenergy_command, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    energy = energy_file.readline().strip('\n ')
    cumulative = read_cumulative(entropy_file, ranks_file)
    return (energy, cumulative)

if __name__ == "__main__":
    exit()
import math
import matplotlib.pyplot as plt
import matplotlib.ticker as tck
import numpy as np

def set_sci (*data, axis="y", fmt="${x:.0f}$", base=10, max_places=1, **tattrs):
    max_val = max(map(np.max, map(np.asarray, data)))
    max_val_places = int((math.log(max_val) / math.log(base)) + 1) if max_val > 0 else 1
    exp = max_val_places - max_places

    axes = plt.gca()

    if axis == "y":
        plt.text(
            0,  1.0175, r"$\times\,{}^{{{}}}$".format(base, exp),
            verticalalignment="bottom", horizontalalignment="left",
            transform=axes.transAxes, **tattrs
        )

        axes.yaxis.set_major_formatter(tck.StrMethodFormatter(fmt))

    elif axis == "x":
        plt.text(
            1, -0.0675, r"$\times\,{}^{{{}}}$".format(base, exp),
            verticalalignment="top", horizontalalignment="right",
            transform=axes.transAxes, **tattrs
        )

        axes.xaxis.set_major_formatter(tck.StrMethodFormatter(fmt))

    power = base ** exp
    for d in data:
        yield d / power

def plot_cumulative (cumulatives, mark = None):
  
    fig = plt.figure(figsize=( 10, 2.925 ))
    axes = plt.gca()

    axes.yaxis.set_minor_locator(tck.AutoMinorLocator(2))

    plt.grid(True, "major", "y", lw=1, color="#CCCCCC", ls="-")
    plt.grid(True, "minor", "y", lw=0.5, color="#DDDDDD", ls="-")

    value = set_sci(*[c['value'] for c in cumulatives])
    for c in cumulatives:
        plt.plot(next(value), label=c['name'], color=c['color'])
    
    if mark:
        plt.axvline(mark['value'], label=mark['name'], color=mark['color'], ls="--", lw=1)

    plt.xlabel("Level")
    plt.ylabel("Cumulative energy ($k_{B}T$)")

    plt.legend()

    plt.tight_layout(rect=[ 0.01, 0.01, 0.99, 0.99 ])
    return plt

def plot_recycled (recycled, mark = None):
    
    fig = plt.figure(figsize=( 10, 2.925 ))
    axes = plt.gca()

    value = set_sci(*[r['value'] for r in recycled])
    for r in recycled:
        plt.plot(next(value), label=r['name'], color=r['color'])

    if mark:
        plt.axvline(mark['value'], label=mark['name'], color=mark['color'], ls="--", lw=1)

    plt.xlabel("Original circuit's level")
    plt.ylabel("Fan-outs exploited (bits)")

    plt.legend()

    plt.tight_layout(rect=[ 0.01, 0.01, 0.99, 0.99 ])
    return plt
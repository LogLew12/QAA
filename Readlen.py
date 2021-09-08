import argparse
import matplotlib.pyplot as plt

def get_args():
    parser = argparse.ArgumentParser(
        description="Plots a histogram of read lengths from both read 1 and read 2 from trimommatic output"
    )
    parser.add_argument("-f", "--file", help="input trimommatic filename", required=True)
    return parser.parse_args()

args = get_args()



Read1_lens = []
Read2_lens = []
with open(args.file, "r") as fh:
    for line in fh:
        line = line.strip()
        line = line.split(" ")
        read_num = line[1]
        length = int(line[2])
        if length != 0:
            if read_num.startswith("1"):
                Read1_lens.append(length)
            elif read_num.startswith("2"):
                Read2_lens.append(length)


plt.hist([Read1_lens, Read2_lens], bins = 20, log = True, color = ["Blue", "Orange"], label = ["Read 1", "Read 2"])
plt.legend(loc = "upper left")
plt.title("Read Length Distributions")
plt.xlabel("Read Length")
plt.ylabel("Frequency (log scale)")
plt.savefig("6_hist.png")
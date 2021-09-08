#!/usr/bin/env python

import argparse
#Using Argeparse to get the input file
def get_args():
    parser = argparse.ArgumentParser(
        description="Returns the number of mapped and unmapped reads in a SAM file.")
    parser.add_argument("-f", "--file", help="filename", required=True)
    return parser.parse_args()

args = get_args()

with open(args.file, "r") as fh:
    # counter = 0 for testing
    mapped = 0
    unmapped = 0
    for line in fh:
        line = line.strip()
        if line.startswith('@'):
            continue
        flag = int(line.split("\t")[1])
        #checking if its a secondary alingment
        if((flag & 256) == 256):
            continue
        #checking if it is mapped or not
        if((flag & 4) != 4):
            mapped += 1
        elif((flag & 4) == 4):
            unmapped += 1
        # if counter > 100: #for testing
        #     break
        # counter += 1
    print(mapped)
    print(unmapped)
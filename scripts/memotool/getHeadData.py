#!/usr/bin/env python
# -*- coding: utf-8 -*-

import sys
import os
import re

args = sys.argv

# get head data
for line in open(args[1], "r"):

    # blank line
    if not line.strip():
        continue

    else:
        # remove Title Tag of Mardown
        filename = line.replace('#', '').strip()
        break


# a list of files at Memo Dir
filelist = os.listdir(os.path.dirname(args[1]))

# counter
numOfSameName = 0


for file in filelist:

    # detect same filename
    if re.match(filename + "_*\.md", file):
        numOfSameName += 1


if numOfSameName == 0:
    print(filename + ".md", end="")

# already exist same filename
else:
    # append "_" to filename
    for var in range(0, numOfSameName):
        filename = filename + "_"
    print(filename + ".md", end="")

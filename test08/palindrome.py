#!/usr/bin/python3

import re
import sys

line = sys.argv[1]

line = line.lower()

line = re.sub("[^a-z]","",line)

length = len(line) - 1

mid = length//2

count = 0

while count <= mid:
    if line[count] != line[length-count]:
        print("False")
        exit()
    count+=1


print("True")

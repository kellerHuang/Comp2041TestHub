#!/usr/bin/python3

import sys

dict = {}
arr = []

for i in sys.argv:
    if i not in dict and i != sys.argv[0]:
        arr.append(i)
        dict[i] = 1

for i in arr:
    print(i, end=' ')
print("")

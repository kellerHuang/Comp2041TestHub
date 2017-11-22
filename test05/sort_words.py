#!/usr/bin/python3

import sys

i = sys.stdin.readlines()

for m in i:
    array = sorted(m.split())
    print(' '.join(array), end=' ')
    print()

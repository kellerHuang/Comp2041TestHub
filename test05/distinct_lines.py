#!/usr/bin/python3

import sys
import re
required = int(sys.argv[1])
counter = 0
totLines = 0
dict = {}

for i in sys.stdin:
    i = re.sub("\s","",i)
    i = i.lower()
    if i not in dict.keys():
        dict[i] = 1
        counter = counter + 1
    totLines = totLines + 1
    if counter == required:
        break
if counter == required:
    print("%d distinct lines seen after %d lines read." % (counter,totLines))
else:
    print("End of input reached after %d lines read -  %d different lines not seen." % (totLines, required))


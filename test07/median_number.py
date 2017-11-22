#!/usr/bin/python

import sys

arr = []

ignorefirst = 0
for i in sys.argv:
   if ignorefirst == 0 :
      ignorefirst = 1
   else:
      arr.append(int(i))

sortedArr = sorted(arr)

m = len(sortedArr)/2

print(sortedArr[m])


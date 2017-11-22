#!/usr/bin/python3

import sys
import re

lines = []
f = open(sys.argv[1],'r')

for i in f:
   lines.append(i)

f.close()

f = open(sys.argv[1],'w')

for i in lines:
   i = re.sub('[aeiouAEIOU]',"",i)
   f.write(i)

f.close()
#replaced = ('a','e','i','o','u')

#for i in lines:
#   i.replace(replaced,"")

#f = open(sys.argv[1],'w')
#f.write(lines)
#f.close()


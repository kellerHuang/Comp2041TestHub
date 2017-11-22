#!/usr/bin/python3

import sys

d = {}
equivalue = 0
printArr = []
for i in sys.stdin:
	printArr = []
	for m in i.split():
		d.clear()
		ori = m
		m = m.lower()
		a = list(m)

		for x in a:
			if x in d.keys():
				d[x] += 1
			else:
				d[x] = 1

		p = 1
		equivalue = 0
		for y in d.keys():
			if(equivalue == 0):
				equivalue = d[y]	
			if(d[y] != equivalue):
				p = 0
				break

		if(p == 1):
			printArr.append(ori)


	print(' '.join(printArr))

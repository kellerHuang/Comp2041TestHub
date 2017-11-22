#!/bin/sh

s=$1

cat $s | tr -d '[aeiouAEIOU]' > temp.txt

mv temp.txt $s

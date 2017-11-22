#!/bin/sh

count=$1;
top=$2;
file=$3;

echo $count >> $3
while [[ $count -ne $top ]]
do
    count=$(($count+1));
    echo $count >> $3;
done

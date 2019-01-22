#!/bin/bash

if [ $# -eq 0 ]
then
	echo "must supply input file"
	exit 1
fi


if [ $# -eq 1 ]
then
	f=$1
	totrim=1
elif
then
	totrim=$1
	f=$2
fi

len=$(cat $f | wc -l)
len_trimmed=$(bc <<< "$len - $totrim")d
head -n $len_trimmed $f

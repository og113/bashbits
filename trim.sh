#!/bin/bash

h=''
t=''
totrim=1
f=''

print_usage() {
  printf "usage: trim -t -n 1 -f file"
}

while getopts 'htn:f:' flag; do
  case "${flag}" in
    h) h='true' ;;
    t) t='true' ;;
    n) totrim=${OPTARG} ;;
    f) f=${OPTARG} ;;
    *) print_usage
       exit 1 ;;
  esac
done


if [ -z $f ]
then
	print_usage
fi

len=$(cat $f | wc -l)
len_trimmed=$(bc <<< "$len - $totrim")

if [ -z $t ]
then
	head -n $len_trimmed $f
else
    tail -n $len_trimmed $f
fi


#!/bin/bash
# simple program to clean up the mess created by tex compilation

if [ -z "$1" ]
then
	echo "removing .aux .bbl .blg .dvi .log .out files in current directory"
	rm -v -f *.aux *.bbl *.blg *.dvi *.log *.out
elif [ -z "$2" ]
then
	echo "removing .aux .bbl .blg .dvi .log .out files in $1"
	dir=$1
	lastchar="${dir: -1}"
	if [ $lastchar = "/" ]
	then
		dir="${dir::-1}"
	fi
	rm -v -f $dir/*.aux $dir/*.bbl $dir/*.blg $dir/*.dvi $dir/*.log $dir/*.out
fi



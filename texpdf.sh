#!/bin/bash
# simple program to compile tex into pdfs with pdflatex and bibtex

if [ -z "$1" ]
then
	echo "must supply input filename/s";
elif [ -z "$2" ]
then
	basefile=$1;
	texfile="${1}.tex";
	#bibfile="${1}.bib";
	pdflatex $texfile
	bibtex $basefile
	pdflatex $texfile
	pdflatex $texfile
else
	texfile=$1;
	bibfile=$2;
	basefile="${2::-4}";
	pdflatex $texfile
	bibtex $basefile
	pdflatex $texfile
	pdflatex $texfile
fi



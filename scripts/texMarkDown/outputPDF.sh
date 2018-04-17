#!/bin/bash

pandoc $1.md --no-highlight -o $1Body.tex

sed -i -e "s;\\\\hypertarget{.\+;;g" ./$1Body.tex
sed -i -e "s;\\\\label{.\+;;g" ./$1Body.tex
sed -i -e "s;\\\\tightlist;;g" ./$1Body.tex
sed -i -e "s;section{;section*{;g" ./$1Body.tex

cp ~/scripts/texMarkDown/template.tex ./$1.tex
sed -i -e "s;output\.tex;$1Body\.tex;g" ./$1.tex
latexmk -pdfdvi -pv $1.tex
##latexmk -pdfdvi -pvc -interaction=nonstopmode template.tex

rm *.aux *.fdb_latexmk *.fls *.dvi *.synctex.gz

##mupdf template.pdf

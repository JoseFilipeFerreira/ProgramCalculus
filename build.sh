#!/bin/bash
lhs2TeX cp1819t.lhs > cp1819t.tex
pdflatex -interaction batchmode cp1819t.tex
bibtex cp1819t.aux
makeindex cp1819t.idx
pdflatex -interaction batchmode cp1819t.tex
rm *.tex
if hash stack 2>/dev/null; then
    stack ghci cp1819t.lhs || exit 1
else
    ghci cp1819t.lhs || exit 1
fi
rm *.o *.hi

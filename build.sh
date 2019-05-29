#!/bin/bash
lhs2TeX cp1819t.lhs > cp1819t.tex
pdflatex cp1819t.tex
pdflatex cp1819t.tex
rm *.tex
stack ghci cp1819t.lhs

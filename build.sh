#!/usr/bin/env sh

pdflatex diploma.tex --draftmode
bibtex diploma.aux
pdflatex diploma.tex --draftmode
pdflatex diploma.tex --draftmode
pdflatex diploma.tex


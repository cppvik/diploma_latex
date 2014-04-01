#!/usr/bin/env sh

ACTION=${1}
case "${ACTION}" in
build)
	rm -f *.aux *.bbl *.blg *.log *.out *.toc *.pdf
        pdflatex diploma.tex --draftmode
        bibtex diploma.aux
        pdflatex diploma.tex --draftmode
        pdflatex diploma.tex --draftmode
        pdflatex diploma.tex
	;;
clean)
	rm -f *.aux *.bbl *.blg *.log *.out *.toc *.pdf
	;;
*)
	rm -f *.aux *.bbl *.blg *.log *.out *.toc *.pdf
        pdflatex diploma.tex --draftmode
        bibtex diploma.aux
        pdflatex diploma.tex

#	echo $"Usage: $0 {build|clean}"
#	exit 1
esac


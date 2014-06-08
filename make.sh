#!/usr/bin/env sh

ACTION=${1}
case "${ACTION}" in
build)
	rm -f *.aux *.bbl *.blg *.log *.out *.toc *.pdf *.lot *.lof
        pdflatex -shell-escape diploma.tex --draftmode
        bibtex diploma.aux
        pdflatex -shell-escape diploma.tex --draftmode
        pdflatex -shell-escape diploma.tex --draftmode
        pdflatex -shell-escape diploma.tex
	;;
clean)
	rm -f *.aux *.bbl *.blg *.log *.out *.toc *.lot *.lof
	;;
*)
#	rm -f *.aux *.bbl *.blg *.log *.out *.toc *.pdf *.lot *.lof
        pdflatex -shell-escape diploma.tex --draftmode
        bibtex diploma.aux
        pdflatex -shell-escape diploma.tex

#	echo $"Usage: $0 {build|clean}"
#	exit 1
esac


main: update.tex
	latex update
	dvips -Ppdf update
	ps2pdf -dCompatibility=1.5 -dPDFSETTINGS=/prepress -dEmbedAllFonts=true update.ps

clean:
	for d in . FRONT CHAPTER-1 CHAPTER-2 CHAPTER-3 CHAPTER-4 CHAPTER-5 CHAPTER-6 CHAPTER-7 APPENDIX-1; do \
	    (rm -f *~ *.aux *.bbl *.blg *.dvi *.lof *.log *.lot *.out *.pdf *.ps *.toc) \
	done

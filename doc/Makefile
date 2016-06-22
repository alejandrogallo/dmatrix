VIEWER=mupdf
all: pdf refresh-pdf
refresh-pdf:
	killall -s SIGHUP $(VIEWER)
pdf:
	pdflatex *.tex
clean:
	-rm *.dvi *.aux *.log *.pdf

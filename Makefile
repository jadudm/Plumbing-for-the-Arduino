all:
	texi2pdf book.tex

clean:
	rm -f *.aux
	rm -f *.log
	rm -f *.bbl
	rm -f book.pdf

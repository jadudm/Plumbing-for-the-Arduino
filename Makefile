all:
	texi2pdf book.tex

clean:
	rm *.aux
	rm *.log
	rm *.bbl
	rm *.pdf

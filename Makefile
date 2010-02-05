BOOKPDF=plumbing-for-the-arduino.pdf
DEST=/data/www/cc/concurrency/www/site/pdf/${BOOKPDF}
all:
	pdflatex -shell-escape book.tex
	pdflatex -shell-escape book.tex

upload:
	cp book.pdf ${BOOKPDF}
	scp ${BOOKPDF} jadudm@unhosting.org:${DEST}


clean:
	rm -f *.aux
	rm -f *.log
	rm -f *.bbl
	rm -f book.pdf

TEXSRC=plumbing-for-arduino
BOOKPDF=plumbing-for-the-arduino.pdf
DEST=/data/www/cc/concurrency/www/site/pdf/${BOOKPDF}
all:
	pdflatex -shell-escape ${TEXSRC}.tex
	pdflatex -shell-escape ${TEXSRC}.tex

upload:
	cp ${TEXSRC}.pdf ${BOOKPDF}
	# scp ${BOOKPDF} jadudm@unhosting.org:${DEST}


clean:
	rm -f *.aux
	rm -f *.log
	rm -f *.bbl
	rm -f ${TEXSRC}.pdf
	rm -f ${BOOKPDF}

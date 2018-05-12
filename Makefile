PDFLATEX=pdflatex

all: clean build

build:
	$(PDFLATEX) --jobname=jonathan_delaigle jonathan_delaigle.tex

clean:
	rm -f *.aux *.dvi *.ps *.log *.pdf *~ *.out *-ott.tex *-output.tex

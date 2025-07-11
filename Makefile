PDFLATEX=pdflatex

all: clean build generate-preview

build:
	$(PDFLATEX) --jobname=jonathan_delaigle jonathan_delaigle.tex

clean:
	rm -f *.aux *.dvi *.ps *.log *.pdf *~ *.out *-ott.tex *-output.tex

generate-preview:
	convert -density 200 jonathan_delaigle.pdf -background white -alpha remove -alpha off -flatten -strip -trim resume_preview.png

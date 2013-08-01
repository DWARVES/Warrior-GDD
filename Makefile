
# Makefile for generating HTML, PDF and LaTeX documents from $(NAME).t2t, using txt2tags


NAME = gdd
BROWSER = chromium
PDFREADER = mupdf



all: html pdf


html: $(NAME).html

pdf: $(NAME).pdf

latex: $(NAME).tex



$(NAME).html: $(NAME).t2t
	txt2tags -t html -o $@ $<

$(NAME).pdf: $(NAME).tex
	pdflatex $<

$(NAME).tex: $(NAME).t2t
	txt2tags -t tex -o $@ $<



readhtml: html
	$(BROWSER) $(NAME).html

readpdf: pdf
	$(PDFREADER) $(NAME).pdf

	

clean: cleantex
	rm -f $(NAME).pdf $(NAME).html

cleantex:
	rm -f $(NAME).tex $(NAME).aux $(NAME).log $(NAME).out

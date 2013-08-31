
# Makefile for generating HTML, PDF and LaTeX documents from $(NAME).t2t, using txt2tags


NAME = gdd
LANG = fr
USED = $(NAME)_$(LANG)

FLAGS=--encoding=UTF-8 --toc --toc-level=3 --enum-title


all: html pdf


html: $(NAME).html

pdf: $(NAME).pdf

latex: $(NAME).tex


$(NAME).html: $(USED).t2t
	txt2tags -t html $(FLAGS) -o $@ $<

$(NAME).pdf: $(NAME).tex
	pdflatex $<
	pdflatex $<

$(NAME).tex: $(USED).t2t
	txt2tags -t tex $(FLAGS) -o $@ $<


clean: cleantex
	rm -f $(NAME).pdf $(NAME).html

cleantex:
	rm -f $(NAME).tex $(NAME).aux $(NAME).log $(NAME).out



langs :
	@ls $(NAME)_*.t2t | sed 's/$(NAME)_\([^\.]*\).t2t/\1/'

plan :
	@txt2tags -t txt --toc-only $(FLAGS) $(USED).t2t



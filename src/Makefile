TEXIN = $(shell echo *.tex)
PDFOUT = $(patsubst %.tex,%.pdf, $(TEXIN))

BASE = $(basename $(TEXIN))
OEFTEX = $(addsuffix _Oefeningen.tex, $(BASE))
OEFPDF = $(addsuffix _Oefeningen.pdf, $(BASE))

PDFLATEXOPTS = "pdflatex -interaction=nonstopmode -shell-escape"

#.PHONY: $(PDFOUT) $(OEFPDF)
all: $(PDFOUT) $(OEFPDF)

%.pdf: %.tex
	latexmk -pdf -silent -pdflatex=$(PDFLATEXOPTS) -use-make $<

%_Oefeningen.pdf: %_Oefeningen.tex
	latexmk -pdf -silent -pdflatex=$(PDFLATEXOPTS) -use-make $<

%_Oefeningen.tex:  %.tex
	cat $< | ../exex.o > $@

.PHONY: clean
clean:
	latexmk -c
	$(RM) *-dot2tex-fig*
	$(RM) *_Oefeningen.tex
	$(RM) *.fdb_latexmk
	$(RM) *.fls
	$(RM) *.log
	$(RM) *.aux

.PHONY: cleanall
cleanall: clean
	latexmk -C



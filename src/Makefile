TEXIN = $(shell echo *.tex)
PDFOUT = $(patsubst %.tex,%.pdf, $(TEXIN))

BASE = $(basename $(TEXIN))
OEFTEX = $(addsuffix _Oefeningen.tex, $(BASE))
OEFPDF = $(addsuffix _Oefeningen.pdf, $(BASE))

#.PHONY: $(PDFOUT) $(OEFPDF)
all: $(PDFOUT) $(OEFPDF)

%.pdf: %.tex
	mkdir -p build
	latexmk -pdf -silent -use-make $<

%_Oefeningen.pdf: %_Oefeningen.tex
	latexmk -pdf -silent -use-make $<

%_Oefeningen.tex:  %.tex
	cat $< | ../exex.o > $@

.PHONY: release
release: all
	mkdir -p ../release
	cp *.pdf ../release

.PHONY: clean
clean:
	latexmk -c
	$(RM) *-dot2tex-fig*
	$(RM) *_Oefeningen.tex
	$(RM) *.fdb_latexmk
	$(RM) *.fls
	$(RM) *.log
	$(RM) *.aux
	$(RM) *.out
	$(RM) *.synctex.gz
	$(RM) _region_*
	$(RM) -fr build/

.PHONY: cleanall
cleanall: clean
	latexmk -C
	$(RM) *.pdf
	$(RM) *_Oefeningen.pdf



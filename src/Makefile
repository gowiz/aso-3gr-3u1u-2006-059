BUILDDIR = ../build
TMPBUILDDIR = ../build/tmp
SRCIN = $(shell echo *.tex *.png *.jpg *.m)
SRCOUT = $(addprefix $(BUILDDIR)/, $(SRCIN))

BUILDFILES = $(BUILDDIR)/Makefile $(BUILDDIR)/latexmkrc

all: $(TMPBUILDDIR) $(BUILDDIR) $(BUILDFILES) $(SRCOUT)
	$(MAKE) -C $(BUILDDIR)

.PHONY:
$(TMPBUILDDIR):
	mkdir -p $(TMPBUILDDIR)

$(BUILDDIR):
	mkdir -p $(BUILDDIR)

$(BUILDDIR)/Makefile: BuildMakefile
	cp BuildMakefile $(BUILDDIR)/Makefile

$(BUILDDIR)/latexmkrc: latexmkrc
	cp latexmkrc $(BUILDDIR)/latexmkrc

$(BUILDDIR)/%: %
	cp $< $@

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

.PHONY: cleanall
cleanall: clean
	latexmk -C
	$(RM) *.pdf
	$(RM) *_Oefeningen.pdf

.PHONY: cleanbuild
cleanbuild:
	$(RM) ../build/tmp
	$(RM) ../build

.PHONY: release
release: all
	$(MAKE) -C $(BUILDDIR) release


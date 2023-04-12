TEXMK?=latexmk
OUTDIR?=latex.out
TEXFLAGS:=-pdf -shell-escape -output-directory=$(OUTDIR)

all: example docs

example: thesis.pdf

docs: uiucthesis2020.dtx uiucthesis2020.ins
	@mkdir -p $(OUTDIR)
	$(TEXMK) $(TEXFLAGS) $<
	@cp $(OUTDIR)/uiucthesis2020.pdf .

%.pdf: %.tex thesisstyle.tex uiucthesis2020.cls references.bib
	@mkdir -p $(OUTDIR)
	$(TEXMK) $(TEXFLAGS) $<
	@cp $(OUTDIR)/$@ .

clean:
	@rm -rf *.log *.out *.bbl *.spl \
		*.sync* *.blg *.aux *.fls *.fdb_latexmk \
		$(OUTDIR)

purge: clean
	@rm -rf *.pdf

.PHONY: clean purge

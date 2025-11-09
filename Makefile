# Makefile for building wedgeGA and antiwedgeGA TikZ symbols

TEXFILES = wedgeGA.tex antiwedgeGA.tex
PDFS = $(TEXFILES:.tex=.pdf)
SVGS = $(TEXFILES:.tex=.svg)

LATEX = pdflatex
PDF2SVG = pdf2svg

.PHONY: all svg clean

# Default target builds SVGs
all: svg

# Compile .tex → .pdf → .svg
svg: $(SVGS)

%.pdf: %.tex wedgeGA.sty
	@echo "==> Compiling $<"
	$(LATEX) -interaction=nonstopmode -halt-on-error $< > /dev/null

%.svg: %.pdf
	@echo "==> Converting $< → $@"
	$(PDF2SVG) $< $@

# Clean up all LaTeX build artifacts
clean:
	rm -f $(PDFS) $(SVGS) *.aux *.log *.out *.synctex.gz *.fls *.fdb_latexmk

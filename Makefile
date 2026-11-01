DOCNAME = CV_Gabriel_Velazquez

all: pdf

pdf: $(DOCNAME).tex
	xelatex -interaction=nonstopmode $(DOCNAME).tex

clean:
	rm -f *.aux *.log *.out *.fls *.fdb_latexmk *.synctex.gz *.xdv

distclean: clean
	rm -f $(DOCNAME).pdf

.PHONY: all pdf clean distclean

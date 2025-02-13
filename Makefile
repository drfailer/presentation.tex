BUILD_DIRECTORY=out
PDFTEX_CMD=pdflatex -output-directory $(BUILD_DIRECTORY) -shell-escape
BIBTEX_CMD=biber --input-directory $(BUILD_DIRECTORY) --output-directory $(BUILD_DIRECTORY)
PDF_NAME=presentation.pdf
SRC=main.tex

latex: $(SRC)
	@mkdir -p $(BUILD_DIRECTORY)
	$(PDFTEX_CMD) $<
	@mv $(BUILD_DIRECTORY)/$(SRC:tex=pdf) $(PDF_NAME)

biber: $(SRC) latex
	$(BIBTEX_CMD) $(basename $<)
	$(PDFTEX_CMD) $<
	$(PDFTEX_CMD) $<
	@mv $(BUILD_DIRECTORY)/main.pdf $(PDF_NAME)

clean:
	rm -rf $(BUILD_DIRECTORY) _minted-main

.PHONY all: biber

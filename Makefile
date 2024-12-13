pdf: main.tex
	pdflatex -shell-escape main.tex
	# if using biber
	biber main
	pdflatex -shell-escape main.tex
	pdflatex -shell-escape main.tex

clean:
	rm -rf *.aux *.log *.nav *.out *.snm *.toc *.vrb *.bbl *.bcf *.blg \
		*.run.xml _minted-main

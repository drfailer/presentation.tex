pdf: main.tex
	pdflatex -shell-escape main.tex

clean:
	rm -rf *.aux *.log *.nav *.out *.snm *.toc

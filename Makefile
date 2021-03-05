all:
	latexmk guide.tex -pdf

watch:
	latexmk guide.tex -pdf -pvc

clean:
	latexmk guide.tex -pdf -C

.PHONY: all watch clean

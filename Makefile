# Some simple tasks (sorry, UNIX only).

mopup:
	git clean -Xdfe \!*.pdf

clean:
	git clean -xdf

run:
	latexmk
	
.PHONY: mopup clean

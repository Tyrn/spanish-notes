# Some simple tasks (sorry, UNIX only).

mopup:
	find . -type f -name '*~'  -delete
	find . -type f -name '.*~'  -delete
	find . -type f -name '@*'  -delete
	find . -type f -name '#*#'  -delete
	find . -type f -name '*.log'  -delete
	find . -type f -name '*.synctex.gz'  -delete
	find . -type f -name '*.fdb_latexmk'  -delete
	find . -type f -name '*.aux'  -delete
	find . -type f -name '*.fls'  -delete
	find . -type f -name '*.idx'  -delete
	find . -type f -name '*.ilg'  -delete
	find . -type f -name '*.ind'  -delete
	find . -type f -name '*.toc'  -delete

cleantarget:
	find . -type f -name '*.pdf'  -delete

clean: mopup cleantarget

run:
	latexmk main-*.tex
	
.PHONY: mopup cleantarget clean

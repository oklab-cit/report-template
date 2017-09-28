#!bin/bash

find . -type f -maxdepth 1 | \
grep -e 'aux' -e 'dvi' -e 'fdb_latexmk' -e 'fls' -e 'log' -e 'synctex.gz' -e 'toc' -e 'bbl' -e 'blg' | \
xargs rm
find . -type f -maxdepth 1 | \
grep -e 'main.pdf' | \
xargs rm

export TEXINPUTS='.//;'

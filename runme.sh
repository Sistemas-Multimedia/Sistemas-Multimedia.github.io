BIBINPUTS=":.:/home/vruiz/bibs/:"
make clean
grep citation ~/Run-length_encoding/index.aux >> index.aux
grep citation ~/Burrows-Wheeler_transform/index.aux >> index.aux
grep citation ~/LZ77/index.aux >> index.aux
grep citation ~/LZ78/index.aux >> index.aux
echo "\bibdata{text-compression}" >> index.aux
echo "\bibstyle{plain}" >> index.aux
#pdflatex citations
bibtex index
touch texput.tex
make


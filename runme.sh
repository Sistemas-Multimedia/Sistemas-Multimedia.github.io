BIBINPUTS=":.:/home/vruiz/bibs/:"
make clean
grep citation ~/text_compression/index.aux >> index.aux
grep citation ~/Run-length_encoding/index.aux >> index.aux
grep citation ~/Burrows-Wheeler_transform/index.aux >> index.aux
grep citation ~/LZ77/index.aux >> index.aux
grep citation ~/LZ78/index.aux >> index.aux
grep citation ~/LZW/index.aux >> index.aux
grep citation ~/Shannon-Fano_coding/index.aux >> index.aux
grep citation ~/Huffman_coding/index.aux >> index.aux
grep citation ~/Arithmetic_coding/index.aux >> index.aux
grep citation ~/move-to-front_transform/index.aux >> index.aux
grep citation ~/Golomb-Rice_coding/index.aux >> index.aux
grep citation ~/gzip/index.aux >> index.aux
grep citation ~/differential_coding/index.aux >> index.aux
echo "\bibdata{signal-processing,text-compression}" >> index.aux
echo "\bibstyle{plain}" >> index.aux
#pdflatex citations
bibtex index
touch texput.tex
make


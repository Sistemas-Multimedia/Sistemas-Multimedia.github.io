BIBINPUTS=":.:/home/vruiz/bibs/:"
make clean
grep citation ~/text_compression/index.aux >> index.aux
grep citation ~/run-length_encoding/index.aux >> index.aux
grep citation ~/Burrows-Wheeler_transform/index.aux >> index.aux
grep citation ~/LZ77/index.aux >> index.aux
grep citation ~/LZ78/index.aux >> index.aux
grep citation ~/LZW/index.aux >> index.aux
grep citation ~/Shannon-Fano_coding/index.aux >> index.aux
grep citation ~/Huffman_coding/index.aux >> index.aux
grep citation ~/arithmetic_coding/index.aux >> index.aux
grep citation ~/move-to-front_transform/index.aux >> index.aux
grep citation ~/Golomb-Rice_coding/index.aux >> index.aux
grep citation ~/gzip/index.aux >> index.aux
grep citation ~/audio_compression/index.aux >> index.aux
grep citation ~/quantization/index.aux >> index.aux
grep citation ~/differential_coding/index.aux >> index.aux
grep citation ~/MP3/index.aux >> index.aux
grep citation ~/Vorbis/index.aux >> index.aux
grep citation ~/image_compression/index.aux >> index.aux
grep citation ~/image_redundancies/index.aux >> index.aux
grep citation ~/image_transformations_for_coding/index.aux >> index.aux
grep citation ~/LOCO/index.aux >> index.aux
grep citation ~/JPEG/index.aux >> index.aux
grep citation ~/JPEG2000/index.aux >> index.aux
grep citation ~/MCTF-video-coding/index.aux >> index.aux
grep citation ~/MCDWT/index.aux >> index.aux
echo "\bibdata{signal-processing,text-compression,audio-coding}" >> index.aux
echo "\bibstyle{plain}" >> index.aux
#pdflatex citations
bibtex index
touch texput.tex
make


export BIBINPUTS=":.:/home/vruiz/bibs/:"
make clean
make index.pdf
rm -f citations
grep citation ~/why_to_compress/index.aux >> citations
grep citation ~/compression_insights/index.aux >> citations
grep citation ~/redundancy/index.aux >> citations
cat ~/signal_digitization/citations >> citations
cat ~/text_compression/citations >> citations
cat ~/audio_compression/citations >> citations
cat ~/image_compression/citations >> citations
grep citation ~/video_compression/index.aux >> citations
cat citations >> index.aux
bibtex index
make index.html


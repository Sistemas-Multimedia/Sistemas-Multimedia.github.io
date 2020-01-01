BIBINPUTS=":.:/home/vruiz/bibs/:"
make clean
make index.pdf
rm -f citations
cat ~/why_to_compress/citations >> citations
cat ~/compression_insights/citations >> citations
cat ~/redundancy/citations >> citations
cat ~/signal_digitization/citations >> citations
cat ~/text_compression/citations >> citations
cat ~/audio_compression/citations >> citations
cat ~/image_compression/citations >> citations
cat ~/video_compression/citations >> citations
cat citations >> index.aux
bibtex index
make index.html


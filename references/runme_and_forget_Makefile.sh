export BIBINPUTS=":.:/home/vruiz/bibs/:"
make clean
make index.pdf
rm -f citations
grep citation ~/repos/Sistemas-Multimedia.github.io/contents/working_environment/index.aux >> citations
grep citation ~/repos/Sistemas-Multimedia.github.io/contents/entropy_coding/index.aux >> citations
grep citation ~/repos/Sistemas-Multimedia.github.io/contents/color_transforms/index.aux >> citations
grep citation ~/repos/Sistemas-Multimedia.github.io/contents/quantization/index.aux >> citations
grep citation ~/repos/Sistemas-Multimedia.github.io/contents/spatial_transforms/index.aux >> citations
grep citation ~/repos/Sistemas-Multimedia.github.io/contents/temporal_transforms/index.aux >> citations
grep citation ~/repos/Sistemas-Multimedia.github.io/contents/perceptual_coding/index.aux >> citations
grep citation ~/repos/Sistemas-Multimedia.github.io/contents/standards/index.aux >> citations
grep citation ~/repos/Sistemas-Multimedia.github.io/contents/data_scalability/index.aux >> citations
cat citations >> index.aux
bibtex index
make index.html


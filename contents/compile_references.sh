export BIBINPUTS=":.:/home/vruiz/repos/bibs/:"
make clean
make index.pdf
rm -f references
grep citation color_transforms/index.aux >> references
grep citation data_scalability/index.aux >> references
grep citation entropy_coding/index.aux >> references
grep citation perceptual_coding/index.aux >> references
grep citation quantization/index.aux >> references
grep citation spatial_transforms/index.aux >> references
grep citation standards/index.aux >> references
grep citation temporal_transforms/index.aux >> references
grep citation working_environment/index.aux >> references
cat references >> index.aux
bibtex index
make index.html











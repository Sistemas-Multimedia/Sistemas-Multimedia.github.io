export BIBINPUTS=":.:/home/vruiz/bibs/:"
make clean
make index.pdf
rm -f citations
grep citation ~/Sistemas-Multimedia.github.io/milestones/01-provisioning/index.aux >> citations
grep citation ~/Sistemas-Multimedia.github.io/milestones/02-python/index.aux >> citations
grep citation ~/Sistemas-Multimedia.github.io/milestones/03-git/index.aux >> citations
grep citation ~/Sistemas-Multimedia.github.io/milestones/04-the_data/index.aux >> citations
grep citation ~/Sistemas-Multimedia.github.io/milestones/05-quantization/index.aux >> citations
grep citation ~/Sistemas-Multimedia.github.io/milestones/06-color_transform/index.aux >> citations
grep citation ~/Sistemas-Multimedia.github.io/milestones/07-DWT/index.aux >> citations
grep citation ~/Sistemas-Multimedia.github.io/milestones/08-2D-DWT/index.aux >> citations
grep citation ~/Sistemas-Multimedia.github.io/milestones/09-MDWT/index.aux >> citations
grep citation ~/Sistemas-Multimedia.github.io/milestones/10-ME/index.aux >> citations
grep citation ~/Sistemas-Multimedia.github.io/milestones/11-MC_in_DWT_domain/index.aux >> citations
grep citation ~/Sistemas-Multimedia.github.io/milestones/12-IPP_coding/index.aux >> citations
cat citations >> index.aux
bibtex index
make index.html


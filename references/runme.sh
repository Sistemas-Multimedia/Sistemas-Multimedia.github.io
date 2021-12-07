export BIBINPUTS=":.:/home/vruiz/bibs/:"
make clean
make index.pdf
rm -f citations
grep citation ~/Sistemas-Multimedia.github.io/milestones/01-provisioning/index.aux >> citations
grep citation ~/Sistemas-Multimedia.github.io/milestones/02-python/index.aux >> citations
grep citation ~/Sistemas-Multimedia.github.io/milestones/03-git/index.aux >> citations
grep citation ~/Sistemas-Multimedia.github.io/milestones/04-PNG/index.aux >> citations
grep citation ~/Sistemas-Multimedia.github.io/milestones/05-RGB_compression/index.aux >> citations
grep citation ~/Sistemas-Multimedia.github.io/milestones/06-YUV_compression/index.aux >> citations
grep citation ~/Sistemas-Multimedia.github.io/milestones/07-DCT/index.aux >> citations
grep citation ~/Sistemas-Multimedia.github.io/milestones/08-DWT/index.aux >> citations
grep citation ~/Sistemas-Multimedia.github.io/milestones/09-III_coding/index.aux >> citations
grep citation ~/Sistemas-Multimedia.github.io/milestones/10-ME/index.aux >> citations
grep citation ~/Sistemas-Multimedia.github.io/milestones/11-image_domain_IPP/index.aux >> citations
grep citation ~/Sistemas-Multimedia.github.io/milestones/12-transform_domain_MC/index.aux >> citations
grep citation ~/Sistemas-Multimedia.github.io/milestones/13-transform_domain_IPP/index.aux >> citations
cat citations >> index.aux
bibtex index
make index.html


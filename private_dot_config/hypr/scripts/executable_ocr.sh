#!/bin/bash
# Dependencies: tesseract-ocr imagemagick hyprshot

SCR_IMG=`mktemp`
trap "rm $SCR_IMG*" EXIT

hyprshot -m region -z -t 1 -o / -f $SCR_IMG.png
# increase quality with option -q from default 75 to 100
# Typo "$SCR_IMG.png000" does not continue with same name.

mogrify -modulate 100,0 -resize 400% $SCR_IMG.png 
#should increase detection rate

tesseract $SCR_IMG.png $SCR_IMG &> /dev/null
cat $SCR_IMG.txt | wl-copy
exit

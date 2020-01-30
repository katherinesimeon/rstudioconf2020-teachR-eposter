#!/bin/bash
#
# These are instructions for turning screenshots of tweets into a slowly
# looping gif, using ImageMagick.
#
# Author: Diya Das (github.com/diyadas)

# First step is to pad screenshots to the same size. We decided to center the screenshots vertically within the padded image.

for file in *.png
do 
  echo "${file%.*}_pad.png"
  convert $file  -gravity north  -extent 1200x1182 ${file%.*}_pad.png
done

# Mext, GIF!
convert -delay 4000 Sc*pad.png -loop 0 movie.gif
convert -delay 800 Sc*pad.png -loop 0 movie_fast.gif
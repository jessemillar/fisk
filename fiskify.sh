#!/usr/bin/env bash

cd $1
mogrify -format png *.jpg
rm *.jpg
mogrify -resize 1920 *.png
mogrify -dither None -remap ~/Desktop/fisk/palette/fisk.png *.png
mogrify -scale 5760 *.png
cd -

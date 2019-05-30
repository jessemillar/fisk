#!/usr/bin/env bash

mogrify -format png *.jpg
trash *.jpg
mogrify -resize 1920 *.png
mogrify -dither None -remap ~/Desktop/fisk/palette/fisk.png *.png
mogrify -scale 5760 *.png

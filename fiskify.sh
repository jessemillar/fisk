#!/usr/bin/env bash

cd $1
echo "Transcoding images"...
mogrify -format png *.jpg
rm *.jpg
echo "Shrinking image sizes"...
mogrify -resize 1920 *.png
echo "Applying color palette"...
mogrify -dither None -remap ~/Desktop/fisk/palette/fisk.png *.png
echo "Inflating image sizes..."
mogrify -scale 5760 *.png
cd -

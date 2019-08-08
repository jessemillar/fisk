#!/usr/bin/env bash

echo "Transcoding images..."
mogrify -format png $2/*.jpg
rm $2/*.jpg
echo "Shrinking image sizes..."
mogrify -resize 1920 $2/*.png
echo "Applying color palette..."
mogrify -dither None -remap $1 $2/*.png
echo "Inflating image sizes..."
mogrify -scale 5760 $2/*.png
echo "Cropping for crisp pixels..."
mogrify -gravity center -crop 5760x3840+0+0 $2/*.png
echo "Done"

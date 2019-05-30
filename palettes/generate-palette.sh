#!/usr/bin/env bash

mkdir tmp

while IFS= read -r line; do
	convert -size 100x100 xc:$line tmp/$line.png
done < "$1"

cd tmp
convert -append *.png ../${1%.*}.png
cd ..
rm -rf tmp

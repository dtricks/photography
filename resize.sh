#!/bin/bash

cp images/* images/fulls
cp images/fulls/* images/thumbs
echo "images transferred"

rm images/*.jpg
rm images/*.JPG
rm images/*.jpeg
rm images/*.JPEG
rm images/*.png

for f in images/thumbs/*; do convert "$f" -resize 512 "$f"; done 
echo "thumbs generated"


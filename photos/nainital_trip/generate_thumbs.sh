#!/bin/bash
for image_file in *.jpg
do
    echo $image_file
    convert -define jpeg:size=500x180  $image_file  -auto-orient -thumbnail 400x400 ${image_file%%.*}'-thumbnail.jpg'
done

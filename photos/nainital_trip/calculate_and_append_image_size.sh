#!/bin/bash
for image_file in *.jpg
do
    echo $image_file
    convert $image_file -set filename:mysize '%wx%h' ${image_file%%.*}"-%[filename:mysize].jpg"
    rm $image_file
done

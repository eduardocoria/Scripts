#!/bin/bash
for file in $(ls *.{opus,mp3,aac,m4a}); do
    folder=$(echo $file | cut -f2 -d-)
    mkdir -p $folder
    mv $file $folder;
done

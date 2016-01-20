#!/bin/bash

#Script to convert a pdf containing images to a ppm images and then to
#text using optical character recognition.

#need to change to allow spaces in filenames
#need to use text substitution to improve filenaming.

#convert all pdfs to ppm images
for pdf in `ls *.pdf`               #for every file with pdf extension
do
    pdftoppm $pdf $pdf.ppm          #convert pdf to ppm image
done

#use gocr to convert ppm images to txt files
for ppm in `ls *.ppm`               #for every file with .ppm extension
do
    convert $ppm -rotate -90 $ppm   #rotates image 90deg left
    gocr $ppm > $ppm.txt            #converts image to text with OCR
    #rm $ppm                              #removes temp ppm image
done
exit

#!/usr/bin/env bash
set -x
tempDir=$(uuidgen)
mkdir $tempDir
inFile="$1"
pdfimages -png ${inFile} "${tempDir}/"

cd $tempDir
mkdir "pdf"
for file in *; do 
    if [ -f "$file" ]; then 
        tesseract $file "pdf/${file//.png/}" -l deu pdf
    fi 
done
cd pdf
mkdir concattedPdf
pdfunite *.pdf "concattedPdf/concat.pdf"


echo "PDF wurde angelegt! Bitte manuell aus ${tempDir} kopieren und löschen :)"

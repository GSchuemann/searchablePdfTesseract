# searchablePdfTesseract
A simple Bash script, taking a pdf, extracting the images, create searchable PDFs with tesseract and then concact the created pdf Files

Usage guide:
```
./searchableCompressedPdf.sh pathToPDF
```
This script will create a temp directory, delete manually and and copy the PDF from Tempdir/pdf/concattedPdf

Requirements:
pdfimages
tesseract
pdfunite

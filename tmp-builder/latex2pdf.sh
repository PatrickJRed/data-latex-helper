#!/bin/bash

# $1 is filename with .tex
if [[ -f "$1" && -r "$1" ]]
 then
  echo "filename : $1"
 else
  echo "invalid filename"
  exit 1
fi

pdflatex --file-line-error-style "$1" && pdflatex --file-line-error-style "$1"

# exit
exit
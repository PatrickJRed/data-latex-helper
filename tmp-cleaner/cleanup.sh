#!/bin/bash

# $1 is filename without .tex
if [[ -f "$1.tex" && -r "$1.tex" ]]
 then
  echo "filename : $1.tex"
 else
  echo "invalid filename"
  exit 1
fi

# file extensions for removeable files
rmfileexts=("toc" "aux" "log") 
for tmpfile in "${rmfileexts[@]}"
 do
  if [[ -f "$1.${tmpfile}" && -w "$1.${tmpfile}" ]]
   then
    echo "removing $1.${tmpfile}"
    rm -v "$1.${tmpfile}"
  fi
done

# exit
exit
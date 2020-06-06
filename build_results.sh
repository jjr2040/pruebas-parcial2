#!/bin/bash
shopt -s nullglob
FILES=./results/mutants/**/*.apk/error.html
for report in $FILES; do

  MUTANTFOLDER=$(echo $report| cut -d'/' -f 4)
  NUM=${MUTANTFOLDER:31}

  echo "Mutant # $NUM | [BDT](${report:1})" >> errors_found.md
done
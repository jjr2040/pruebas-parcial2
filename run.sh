#!/bin/bash
FILES=./mutants/**/*.apk
for apk in $FILES
do
  MUTANTFOLDER=$(echo $apk| cut -d'/' -f 3)
  NUM=${MUTANTFOLDER:31}

  if ! (( $NUM % 2 )) ; then 
    echo "Processing $apk..."
    calabash-android resign $apk
  
    RESULT=$(calabash-android run $apk --format html)

    if echo "$RESULT" | grep -c "step failed"; then
      if [ ! -d ./results/$apk ]
        then mkdir -p ./results/$apk
      fi
      echo "$RESULT" >> ./results/$apk/error.html
    fi
  fi
done
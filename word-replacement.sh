#!/bin/bash

if [ $# -ne 3 ]
then 
echo "usage : $0 <file name> <word_to_replace> <replament_word>"
exit 1
fi

filename=$1
word_to_replace=$2
replament_word=$3

sed -i "s/$word_to_replace/$replament_word/g" "$filename"

echo "replacement completed"
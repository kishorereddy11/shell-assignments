#!/bin/bash

# Check if a filename is provided
if [ $# -eq 0 ]; then
  echo "Usage: $0 <filename>"
  exit 1
fi

filename="$1"

# Check if the file exists
if [ ! -f "$filename" ]; then
  echo "File not found: $filename"
  exit 1
fi

longest_word="Devops is a culture
agile is a methodology focus on software devlopement it emphasis iterate development continous feedback and cllobartion between teams to adaptive changing requiments
DEVOPS is another hand extends behind development culture that bridge gap between development and operations . DEVOPS promtions automation ci deployment ensuring faster and most realable software delivery"

# Read each line from the file
while read line; do
  # Split the line into words
  for word in $line; do
    # Check if the current word is longer than the longest word found so far
    if [ ${#word} -gt ${#longest_word} ]; then
      longest_word="$word"
    fi
  done
done < "$filename"

echo "The longest word in $filename is: $longest_word"
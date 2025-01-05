#!/bin/bash

while read file
do
echo $file
done < $1

echo "====="


tr -cs 'a-zA-Z' '\n' < "$1" | tr '[:upper:]' '[:lower:]' | sort | uniq -c | sort -nr | head -n 5

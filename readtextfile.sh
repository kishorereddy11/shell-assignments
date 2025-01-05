#!/bin/bash

while read file
do
echo $file
done < $1

echo "====="

while read line; do
  echo "$line"
done < "$1"
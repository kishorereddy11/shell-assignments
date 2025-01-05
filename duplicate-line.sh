#!/bin/bash

duplicate="/home/ec2-user/demo.txt"

if [ $# -ne 1 ]; then
  echo "Usage: $0 <filename>"
  exit 1
fi

filename="$1"

if [ ! -f "$filename" ]; then
  echo "Error: File not found: $filename"
  exit 1
fi

sort "$filename" | uniq -c | awk '$1 > 1 {print $1, $2}' >> "$duplicate"
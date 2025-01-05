#!/bin/bash
input_file="/home/ec2-user/text"
out_file="/home/ec2-user/txt1"

if [ ! -f "$input_file" ]
then
echo "Error input file not present"
exit 1
fi

while read line
do
reversed_line=$(echo "$line" | rev)
echo "$reversed_line"
done < "$input_file"
#! /bin/bash

count="0"
while read line
do
    name=$line
	count=$((count + 1))
	if [[ $count = "10" ]]; then
		echo "$name"
		break
	fi
done < file.txt

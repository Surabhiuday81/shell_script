#!/bin/bash



echo "Enter the file to be searched: "
read file_name

if [ -f "$file_name" ]; then
	echo "File is found "
else
	echo "File is missing in the dir"
fi


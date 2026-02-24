#!/bin/bash




echo "Printing all the files"

for i in *; do

	if [ -f "$i" ]; then
		echo "The file is $i"
	fi
done 

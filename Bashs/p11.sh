#!/bin/bash


read -p "Enter the file name :" name

if [ -r "$name" ]; then
	echo "The file $name is readable"
	cat "$name"
else 
	if [ ! -e "$name" ]; then
		echo "The file $name doesnot exist"
	else
		echo "The file $name exist but not readable"
	fi
fi


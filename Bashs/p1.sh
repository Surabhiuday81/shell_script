#!/bin/bash


read -p "Enter the file name: " name
if [ -f "$name" ]; then
	echo "The file $name is in the dir"
else
	echo "The file $name is not in the dir"
fi

read -p "Enter the dir name: " dir_name


if [ -d "$dir_name" ]; then
	echo "The dir exits in the current working directory"
else
	mkdir "$dir_name"
	echo "The new dir was created with the name $dir_name"
fi



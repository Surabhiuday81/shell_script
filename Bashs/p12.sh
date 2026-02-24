#!/bin/bash

shopt -s nocasematch

read -p "Enter the yes/no : " temp



if [ "$temp" == "yes" ]; then
	echo "You entered YES"
elif [ "$temp" == "no" ]; then
	echo "You entered NO"
else
	echo "invalid input!!!!"
fi


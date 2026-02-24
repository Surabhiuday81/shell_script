#!/bin/bash



read -p "Enter the number : " num
while true
do

if [[ "$num" =~ ^[0-9]+$ ]]; then
	echo "valid  input"
	echo "The given number is $num"
	break
else 
	echo "Invalid input.. Please give the given number"
fi

done 

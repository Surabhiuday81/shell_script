#!/bin/bash


read -p "Enter the two numbers: " A B

if [ "$B" -eq 0 ]; then
	echo "Division by 0 which is not possible"
else
	div=$((A/B))
	echo "The result is $div"
fi


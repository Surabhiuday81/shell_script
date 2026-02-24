#!/bin/bash


echo "Enter the command "
read comm

if command -v $comm &> /dev/null; then
	echo "command exist"
else
	echo "command doesnot exist"
fi


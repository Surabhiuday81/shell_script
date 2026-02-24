#!/bin/bash



echo "Hello world this is the new line that we are appending" >> file.txt


if [ $? -eq 0 ]; then
	echo "Appending was successful"
else
	echo "Appending was unsucessful"
fi


#!/bin/bash



stud=("uday" "bhanu" "chinni" "viplav")

for i in "${stud[@]}"
do
	echo "Hello $i"
done

read -p "Enter the name: " name

stud+=("$name")

echo "updated student list"

for i in "${stud[@]}"
do
	echo "Hello $i"
done

echo "Total number of students are : ${#stud[@]}"

echo "The current date and time are : $(date +"%H:%M:%S")"

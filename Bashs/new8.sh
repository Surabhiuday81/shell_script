#!/bin/bash



read -p "Enter your name :" name
echo "Hello $name Welcome to the Linux terminal"


fruits=("Appple" "Banana" "Grapes")

echo "first fruits : ${fruits[0]}"
echo "Total fruits : ${fruits[@]}"
echo "Total number of fruits : ${#fruits[@]}"


num=(1 2 3 4 5 6 7 8 9)

for num in "${num[@]}"
do
	echo "number = $num"
done 

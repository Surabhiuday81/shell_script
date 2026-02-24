#!/bin/bash

func(){

	local n=$1
	
	if (( n%3 == 0 && n%5 == 0 )); then
		echo "FIZZBUZZ"

	elif (( n%3 == 0 )); then
		echo "FIZZ"

	else
		echo "BUZZ"

	fi
}


read -p "Enter the number : " num
func "${num}"

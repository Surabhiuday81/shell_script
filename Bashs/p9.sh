#!/bin/bash


func(){

	while true 
	do
		echo "Enter the num: "
		read num

		if [[ "$num" =~ ^[a-zA-Z]+$ ]]; then
			echo "valid string $num"
			break
		else
			echo "invalid string"
		fi 
	done 
}


func

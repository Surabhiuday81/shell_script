#!/bin/bash


my_fib(){
	local n=$1

	if [ "$n" -eq 0 ]; then
		echo 0
		return
	elif [ "$n" -eq 1 ]; then
		echo 1
		return 
	fi

	local a=0
	local b=1
	local i
	local temp

	for(( i=2; i<=n; i++ )); do
		temp=$((a+b))
		a=$b
		b=$temp
	done


	echo "The fib of the given number $n is: $temp"

}


read -p "Enter the number : " num
my_fib "$num"

	

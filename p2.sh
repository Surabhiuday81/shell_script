#!/bin/bash


num_arr=()
debug=false
op=""


while [[ $# -gt 0 ]]; do
	case $1 in 
		-o) op=$2; shift 2 ;;
		-n) shift 
			while [[ $# -gt 0 && $1 != -* ]]; do
				num_arr+=("$1")
				shift
			done 
			;;
		-d) debug=true; shift ;;
		*) shift ;;
	esac
done


res=${num_arr[0]}

for n in "${num_arr[@]:1}" ; do
	case $op in 
		+) res=$((res+n)) ;;
		-) res=$((res-n)) ;;
		\*) res=$((res*n)) ;;
		%) res=$((res%n)) ;;
	esac
done


if $debug; then
	echo "Username : $(whoami)"
	echo "Script : $0"
	echo "Operation : $op"
	echo -n "Numbers :" 
	echo "${num_arr[@]}"
fi

echo "Result : $res"



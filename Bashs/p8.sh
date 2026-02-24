#!/bin/bash



while true
do
	read -p "Enter the num : " num

	if [[ "$num" =~ ^[0-9]+$ ]]; then
		echo "valid input $num"
		break
	else
		echo "invalid input"
	fi
done


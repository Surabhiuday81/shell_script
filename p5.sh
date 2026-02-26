#!/bin/bash


if [[ $# -ne 3 ]]; then
	echo "Invalid Arguments SHIFT,INPUT,OUTPUT"
	exit 1	
fi


shift=$1
infile=$2
outfile=$3

if [[ ! -f $infile ]]; then
       echo "Input file not found"
       exit 1
fi



shift=$((shift % 26))


lower="abcdefghijklmnopqrstuvwxyz"
upper="ABCDEFGHIJKLMNOPQRSTUVWXYZ"



lower_rot="${lower:$shift}${lower:0:$shift}"
upper_rot="${upper:$shift}${upper:0:$shift}"

tr "$lower$upper" "$lower_rot$upper_rot" < "$infile" > "$outfile"

echo "Encryption complete. Output written to $outfile"







#!/bin/bash
#
#


read -p "Enter the variables:" a b

echo "A is: $a"
echo "B is: $b"

add=$((a+b))
sub=$((a-b))
mul=$((a*b))
div=$((a/b))

echo "addition= $add"
echo "subtraction= $sub"
echo "multiplication= $mul"
echo "division= $div"



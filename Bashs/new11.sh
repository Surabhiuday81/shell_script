#!/bin/bash


text="Hello this is java"

new_text=${text/java/golang}

echo "$new_text"
echo "Length of the string is ${#new_text}"


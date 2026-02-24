#!/bin/bash



current_date=$(date)
current_user=$(whoami)



echo "The user $current_user is working at $current_date"


file_count=$(ls | wc -l)

echo "The number of files available in the current dir is : $file_count)"




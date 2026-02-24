#!/bin/bash


readonly App_name="Inventory app"

version="1.0"

echo "Hello Welcome to $App_name with the latest version $version"


read -p "Enter your name: " user


if [ -z "$user" ];then
	user="Guest"
fi

echo "Logged in as $user"



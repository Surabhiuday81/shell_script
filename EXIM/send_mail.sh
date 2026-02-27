#!/bin/bash


echo "Working on the EXIM services"


read -p "Enter the recipient Mail : " mail


echo "Subject : Hello this is a test mail " > msg.txt
echo " " >> msg.txt
echo "Welcome to the EXIM services this is a test concept" >> msg.txt

exim -v "$mail@loaclhost" < msg.txt


echo "The test mail was sent (if no error was shown)"

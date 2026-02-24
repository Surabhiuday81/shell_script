#!/bin/bash


echo "SYSTEM REPORT" >>report.txt
echo " ">>report.txt
echo "Username : $(whoami)">>report.txt
echo "Date : $(date)">>report.txt
echo "Hostname : $(hostname)">>report.txt
echo "Internal IP : $(hostname -I)">>report.txt
echo "External IP : $(curl -s ifconfig.me)">>report.txt
echo "Linux version : $(uname -v)">>report.txt
echo "Uptime : $(uptime -p)">>report.txt
echo "Disk : $(df -h)">>report.txt
echo "Ram : $(free -h)">>report.txt
echo "CPU cores : $(nproc)">>report.txt
echo "CPU frequency : $(lscpu)">>report.txt
echo " ">>report.txt
echo "END OF THE FILE">>report.txt
echo "Report saved to the report.txt"

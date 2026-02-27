#!/bin/bash



echo "Working on the batch mail services"


recp=("root" "nouser")


logfile="batch_mail.log"

echo "Batch mail sending started at the time $(date)" > "$logfile"


for i in "${recp[@]}"
do 
	msg_file="msg_${rec[i]}.txt"
	echo "Subject : This is a sample subject ( BATCH MAIL )" > msg_file
	echo " "
	echo "This is the sample content in the BATCH MAIL that will forward to all the recipients" >> msg_file
	echo " "
	echo "This is sent by EXIM services using the host $(hostname) at the time $(date)"

	exim -v "$i@localhost" < "$msg_file" >> "$logfile" 2>&1


	echo "Mail sent to $i" >> "$logfile"
done



echo "Batch Mail sending completed at the time $(date)" >> "$logfile"


cat "$logfile"

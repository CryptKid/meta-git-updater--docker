#!/bin/sh
directory="/opt/" #The folder, the script should search in for gits
logfile="/opt/git-pull.log" #A text file, the output goes to
echo "" >> $logfile
echo "Running git-updates @ $(date)" |tee -a $logfile
find $directory -type d | grep -Eo '+.*/\.git' |sed 's/\.git//g' | sort | uniq |while read -r folder
	do
		cd "$folder" && echo "Pulling $folder" |tee -a  $logfile && git pull |tee $logfile 2>&1
	done


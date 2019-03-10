#!/bin/sh
directory="/repos/" #The folder, the script should search in for gits
echo "Running git-updates @ $(date)" |tee -a $logfile
find $directory -type d | grep -Eo '+.*/\.git' |sed 's/\.git//g' | sort | uniq |while read -r folder
	do
		cd "$folder" && echo "Pulling $folder"  && git pull
	done


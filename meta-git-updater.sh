#!/bin/sh
directory="/opt/" #The folder, the script should search in for gits
logfile="/opt/git-pull.log" #A text file, the output goes to
echo "" >> $logfile
echo "Running git-updates @ $(date)" |tee -a $logfile
for i in $(find $directory -type d); do
    cd "$i"
    ls .git >/dev/null 2>/dev/null && echo "Pulling $i" |tee -a  $logfile && git pull |tee $logfile 2>&1
done


#!/bin/bash
INTERVAL=$((60*60))
while true
do
	echo "Starting MetaGitUpdater @ $(date)"
	/Scripts/meta-git-updater.sh
done

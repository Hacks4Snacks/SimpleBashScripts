#!/bin/bash

# Simple script to find top 10 disk space consumers

CHECK_DIR="/var/log /home"
DATE=$(date '+%m%d%y')

exec >disk_space_$DATE.rpt

echo "Top Ten Disk Space Users"
echo "For $CHECK_DIR Directories"

for DIR_CHECK in $CHECK_DIR; do
	echo ""
	echo "The $DIR_CHECK Directory:"
	du -Sh $DIR_CHECK 2>/dev/null | sort -rn | sed '{11,$D; =}' | sed 'N; s/\n/ /' | gawk '{printf $1 ":" "\t" $2 "\t" $3 "\n"}'
done
exit

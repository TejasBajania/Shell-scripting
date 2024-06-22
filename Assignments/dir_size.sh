#!/bin/bash
echo "Enter directory"
read directory
# -c: Produce a grand total.
# -s: Display only the total size of the specified directory.
# -h: Print sizes in a human-readable format (e.g., KB, MB, GB).
if  [ -e "$directory" ];then
total_size=$(du -csh "$directory" | grep total| awk '{print$1}')
echo "Total size of files in $directory:$total_size"
else
echo "No such directory"
fi

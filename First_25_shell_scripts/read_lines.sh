#!/bin/bash
file="tasks.txt"
if [ -e "$file" ]; then
while IFS= read -r line;do #Internal Field separator
echo "Line read:$line"
done < "$file"
else
echo "$file not found"
fi

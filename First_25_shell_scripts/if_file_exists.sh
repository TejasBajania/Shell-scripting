#!/bin/bash

file="/home/tejas/Scripting_practice/Shell-scripting/README1.md"

if [ -e "$file" ];then
echo "$file exists"
else
echo "$file not found"
fi

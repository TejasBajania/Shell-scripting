#!/bin/bash
input_file='tasks.txt'
output_file='tasksup.txt'
sort "$input_file" | uniq>"$output_file"
echo "Duplicate lines are removed"

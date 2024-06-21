#!/bin/bash

echo "Enter a word to search for :"
read target_word
echo "Enter a file name"
read filename
count=$(grep -o -w "$target_word" "$filename" | wc -l)
echo "The word '$target_word' appears $count times in '$filename'"


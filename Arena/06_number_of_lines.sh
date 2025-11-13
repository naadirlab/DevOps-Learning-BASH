#!/bin/bash

: '
This script accepts a filename as an argument
and prints the number of lines in that file.
If no filename is provided, it displays a 
message saying "No file provided".
'

file_name="$1"  # argument 

# Check if filename is provided 
if [ -z "$file_name" ]; then
    echo "No file provided"
    exit 1
fi

# Check if file exists 
if [ ! -f "$file_name" ]; then
    echo "$file_name not found!"
    exit 1
fi

# Count the lines of the file 
line_count=$(wc -l < "$file_name")
echo "The file '$file_name' has '$line_count' lines."

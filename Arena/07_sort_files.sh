#!/bin/bash

: ' 
This script sorts all .txt files in a directory
by their size, from smallest to largest, and displays 
the sorted list.
'

directory_name="$1"   

# Check if directory name is provided 
if [ -z "$directory_name" ]; then
    echo "Please provide directory name"
    exit 1
fi

# Check if directory exists 
if [ ! -d "$directory_name" ]; then
    echo "Directory does not exist"
    exit 1
fi

# Find all .txt files (including subfolders), list all their sizes
# Sort them by size (smallest to largest), Display size + filename
find "$directory_name" -type f -name "*.txt" -exec ls -lh {} + | sort -k 5,5 -h | awk '{ print $5, $9 }'
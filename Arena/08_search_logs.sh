#!/bin/bash

: '
This script searches for a specific word or phrase
across all .log files in a directory and outputs the
names of the files that contain the word or phrase.
'

WORD="$1"
DIRECTORY="$2"

# Check if the word or directory is missing
if [ -z "$WORD" ] || [ -z "$DIRECTORY" ]; then
    echo "Please provide a word and a directory name"
    exit 1
fi

# Check if directory exists 
if [ ! -d "$DIRECTORY" ]; then
    echo "directory not found"
    exit 1
fi

# Search for the word in all .log files
found_files=$(find "$DIRECTORY" -type f -name "*.log" -exec grep -l "$WORD" {} +)

# Check if any file was found
if [ -z "$found_files" ]; then
    echo "Word '$WORD' does not exist in this directory"
else 
    echo ".log files containing '$WORD':"
    echo "$found_files"
fi


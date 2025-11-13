#!/bin/bash

: '
This script checks if a file exists and prints
a message indicating whether it exists or not. 
If it exists, the script also checks if the file
is readable, writable, or executable.
'

# Prompt user to enter a file name
echo "Enter a file name:"
read file_name

# Search for the file recursively in the current directory
file_check=$(find . -type f -name "$file_name" 2>/dev/null)

# # Check if any matching files were found
if [ -n "$file_check" ]; then
    echo "$file_name exists at: $file_check"

    # Display file permissions
    echo "File permissions:"
    ls -lh "$file_check" | awk '{print $1}'
else
    # File not found
    echo "$file_name does not exist."
fi






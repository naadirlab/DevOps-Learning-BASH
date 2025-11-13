#!/bin/bash

: '
This script copies all ".txt" files from a specified
directory to a backup directory. If the backup directory
does not exist, the script creates it first.
'

# Source directory
source_dir="/Arena/Assignments"

# Backup directory
backup_dir="$source_dir/BACKUP_DIR"

# Create backup directory if it doesn't exist
mkdir -p "$backup_dir"

# Find all .txt files in source directory
txt_files=$(find "$source_dir" -type f -name "*.txt")

# Copy each .txt file to backup directory
for file in $txt_files; do
    cp "$file" "$backup_dir"
done

echo "All .txt files have been backed up to $backup_dir"
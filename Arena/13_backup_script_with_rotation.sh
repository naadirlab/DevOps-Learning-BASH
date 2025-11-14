#!/bin/bash

: '
This script backs up a directory to a specified
location and keeps only the last 5 backups.
'

SOURCE_DIR="Arena"
BACKUP_DIR="Backups"

mkdir -p "$BACKUP_DIR"  # Create Backup Directory 

#  Create a compressed archive of SOURCE_DIR
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")  # remove spaces and fix syntax
BACKUP_NAME="backup_$TIMESTAMP_.tar.gz"
tar -czf "$BACKUP_DIR/$BACKUP_NAME" "$SOURCE_DIR" 
echo "Created Backup: $BACKUP_NAME"

# Only keep the 5 most recent files
cd "$BACKUP_DIR" || exit  # Change to backup directory, exit script if it fails
ls -t | sed '1,5d' | while read -r file; do   # removed space in '1,5d'
    rm -f "$file"   # Delete files while excluding the 5 most recent files
done




#!/bin/bash

: '
This script monitors a directory for any changes 
(file creation, modification, or deletion) and logs 
the changes with a timestamp.
'

DIRECTORY="Arena"
LOG_FILE="change_log.txt"

# Check if directory exists 
if [ ! -d "$DIRECTORY" ]; then
    echo "Directory does not exist."
    exit 1
fi

# Watch the directory recursively for changes
fswatch -r "$DIRECTORY" | while read event; do
    if [ -e "$event" ]; then  # Check if file still exists
        echo "$(date +'%Y-%m-%d %H:%M:%S') File modified/created: $event" >> "$LOG_FILE"
    else
        echo "$(date +'%Y-%m-%d %H:%M:%S') File deleted: $event" >> "$LOG_FILE" 
    fi
done




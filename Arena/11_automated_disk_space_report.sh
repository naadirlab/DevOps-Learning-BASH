#!/bin/bash

: '
This script checks the disk space usage of a specified
directory and sends an alert if the usage exceeds a given threshold.
'

DIRECTORY="$1"
THRESHOLD=1

# Display disk usage in MiB
USAGE=$(du -sm "$DIRECTORY" | awk '{print $1}')

# Check if usage is greater than threshold 
if [ "$USAGE" -gt "$THRESHOLD" ]; then
    echo "Warning: Disk usage for $DIRECTORY is at $USAGE%!"
else
    echo "Disk usage for $DIRECTORY is at $USAGE%. All is well."
fi


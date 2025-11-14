#!/bin/bash

: '
This script presents a menu to the user with the following options:
- Check disk space
- Show system uptime
- Backup the Arena directory and keep the last 3 backups
- Parse a configuration file settings.conf and display the values
'
# Options 
echo "Choose an option: "
echo "1. Check disk space"
echo "2. Show system uptime"
echo "3. Backup Arena directory"
echo "4. Parse configuration file"

# Read user input 
read -rp "Enter your choice (1-4): " choice

# Execute users choice
case $choice in
    1) 
        df -h  # Show disk usage
        ;;
    2) 
        uptime  # Show system uptime
        ;;
    3) 
        SOURCE_DIR="Arena"         # Directory to backup
        BACKUP_DIR="Backup_Arena"  # Backup destination

        mkdir -p "$BACKUP_DIR"     # Create backup directory if it doesn't exist

        # Create a timestamp for the backup filename
        TIMESTAMP=$(date +'%Y-%m-%d_%H:%M:%S')
        NAME_FILE="${SOURCE_DIR}_$TIMESTAMP.tar.gz"  # Backup filename

        tar -czf "$BACKUP_DIR/$NAME_FILE" "$SOURCE_DIR"  # Create compressed backup
        echo "Created backup: $NAME_FILE"

        # Keep only the last 3 backups, delete older ones
        cd "$BACKUP_DIR" || exit 
        ls -t | sed '1,3d' | while read -r file; do 
            rm -f "$file" 
        done
        ;;
    4) 
        CONF_FILE="settings.conf"  # Configuration file to read
        if [ ! -f "$CONF_FILE" ]; then 
            echo "Configuration file does not exist."
            exit 1
        fi

        # Read config file line by line and split key/value
        while IFS='=' read -r key value; do
            echo "Key: $key, Value: $value"
        done < "$CONF_FILE"
        ;;
    *)
        echo "Invalid!"  # Catch all for wrong input
        ;;  
esac

           

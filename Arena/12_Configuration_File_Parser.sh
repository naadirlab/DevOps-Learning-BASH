#!/bin/bash

: '
This script reads a configuration file in the
format "KEY=VALUE" and prints each key-value pair.
'

CONFIG_FILE="settings.conf"

# Check if the configuration file exists
if [ ! -f "$CONFIG_FILE" ]; then
    echo "Configuration File does not exist."
    exit 1
fi

# Read the file line by line and split into key and value
while IFS='=' read -r key value; do 
    echo "Key: $key, Value: $value"   # Print each key-value pair
done < "$CONFIG_FILE"
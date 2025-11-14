#!/bin/bash

: '
This scripts presents a menu with options for
different system tasks (e.g., check disk space,
show system uptime, list users), and executes the
chosen task.
'

echo "Choose an option:"
echo "1. Check disk"
echo "2. Show system uptime"
echo "3. List users"

read -rp "Enter your choice (1-3): " choice 

# Execute users choice 
case $choice in
    1) df -h ;;
    2) uptime ;;
    3) cut -d: -f1 /etc/passwd
    *) echo "Invalid option!" ;;
esac


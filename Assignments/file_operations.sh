#!/bin/bash

: '
This script creates a directory, navigates into it,
creates a file inside it, writes some text to the file,
and then displays the contents of the file. 
'

# Create Directory
mkdir -p /Arena/Assignments/dir_1

# Navigate into Directory
cd /Arena/Assignments/dir_1

# Create file inside Directory
touch file.txt 

# Write some text into the File 
echo "This script is created by Naadir." > file.txt

# Display content of the File
cat file.txt
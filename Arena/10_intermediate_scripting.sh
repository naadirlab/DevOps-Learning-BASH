#!/bin/bash

: '
This script:
1. Creates a directory called Arena_Boss.
2. Creates 5 text files inside the directory, named file1.txt to file5.txt.
3. Generates a random number of lines (between 10 and 20) in each file.
4. Sorts these files by their size and displays the list.
5. Checks if any of the files contain the word 'Victory', and if found, moves the file to a directory called Victory_Archive.
'
# Create directories 
mkdir -p /Arena/Arena_Boss
mkdir -p /Arena/Victory_Archive

# Loop 5 times to create 5 files
for i in {1..5}; do
    FILE="/Arena/Arena_Boss/file$i.txt"   # Set the filename for this file
    LINES=$((RANDOM % 11 + 10))    # Pick random number of lines (10–20)
    for j in $(seq 1 "$LINES"); do   # Loop from 1 to LINES to write lines
        echo "This is line: $j" >> "$FILE"
    done
done

# Display files sorted by size (human-readable)
echo "Files sorted by size:"
find /Arena/Arena_Boss -type f -exec ls -lh {} + | sort -k5,5 -h

# Check each file for the word 'Victory' and move it if found
for FILE in /Arena/Arena_Boss/*.txt; do
    if grep -q "Victory" "$FILE"; then
        mv "$FILE" /Arena/Victory_Archive/
        echo "$FILE contains 'Victory' and has been moved to Victory_Archive."
    else 
        echo "$FILE does not contain 'Victory'."
    fi
done

    
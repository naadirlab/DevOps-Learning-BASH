#!/bin/bash

: '
This script...
1. Creates a directory named "Battlefield"
2. Inside Battlefield, creates files named knight.txt, sorcerer.txt, and rogue.txt.
3. Checks if knight.txt exists; if it does, moves it to a new directory called Archive.
4. Lists the contents of both Battlefield and Archive.
'

# Create directory named 'Battlefield'
mkdir -p Battlefield  

# Inside Battlefield, create files named knight.txt, sorcerer.txt, and rogue.txt.
touch Battlefield/knight.txt Battlefield/sorcerer.txt Battlefield/rogue.txt

# Check if knight.txt exists; if it does, move it to a new directory called Archive.
if [ -f Battlefield/knight.txt ]; then
    mkdir -p Archive
    mv Battlefield/knight.txt Archive/
    echo "knight.txt has been moved to Archive."
else
    echo "knight.txt not found."
fi

# List the contents of Battlefield and Archive.
echo "Contents of Battlefield:"
ls Battlefield 

echo "Contents of Archive:"
ls Archive
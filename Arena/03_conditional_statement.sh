#!/bin/bash

: '
This script checks if a file named hero.txt exists
in the Arena directory. If it does, it prints Hero found!;
otherwise, it prints Hero missing!
'

# Debug | Stop when error | Stop when uninitialized
set -eux

script_search() {

    # Check if a file called hero.txt exists in the Arena folder
    if [[ -f "Arena/hero.txt" ]]; then
        echo "Hero found!"
    else 
        echo "Hero missing!"
    fi
} 

# Stop only debug mode
set +x

# Call the function
script_search



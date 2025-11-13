#!/bin/bash

: '
This script outputs the number 1 to 10,
one number per line.
'


for number in $(seq 1 10); do   # Create sequence from 1 to 10
    echo "$number"  # Print the numbers for each loop
done
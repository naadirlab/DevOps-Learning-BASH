#!/bin/bash

# break loop when number 3 reached 
for (( i=1; i<=5; i++ ))
do
    if [ $i -eq 3 ]
    then 
        break
    fi
    echo "Number: $i"
done

# escape number 3 
for (( i=1; i<=5; i++ ))
do
    if [ $i -eq 3 ]
    then 
        continue
    fi
    echo "Number: $i"
done
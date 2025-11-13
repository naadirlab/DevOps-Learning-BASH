#!/bin/bash

age=19
grade=85

if [ $age -gt 18 ]; then
    echo "You are elegible based on your age."
    if [ $grade -ge 80 ]; then
        echo "You are elegible based on your grade."
        echo "Congrats! You are elegibale for the scholarship!"
    else 
        echo "Sorry your grade is not high enough."
    fi
else
    echo "Sorry, you are not elegible!"
fi

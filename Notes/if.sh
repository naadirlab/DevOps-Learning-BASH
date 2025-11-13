#!/bin/bash

# variable 
grade=95

# # grade must be between 90 and 100, inclusive
if [ $grade -ge 90 ] && [ $grade -le 100 ]
then
    echo "Excellent!"
fi
#!/bin/bash

: '
This script takes two numbers as input from the
user and performs basic arithmetic operations
and then displays all the answers of those 
operations in the terminal. 
'

# Read User Input 
echo "Enter first number:"
read num1
echo "Enter second number:"
read num2

# Addition 
sum=$((num1 + num2))

# Subtraction 
diff=$((num1 - num2))

# Multiplication 
prod=$((num1 * num2))

# Division
if [ $num2 -eq 0 ]; then
    quot="You cannot divide by 0." 
else
    quot=$(( num1 / num2 ))
fi

# Print solutions 
echo "Sum: $sum"
echo "Difference: $diff"
echo "Product: $prod"
echo "Quotient: $quot"
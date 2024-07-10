#!/bin/bash

# Function to check if a number is odd or even
check_odd_or_even() {
    local num=$1
    if [ $((num % 2)) -eq 0 ]; then
        echo "$num is even"
    else
        echo "$num is odd"
    fi
}

# Read input from user
read -p "Enter a number: " input

# Check if input is greater than 20
if [ $input -gt 20 ]; then
    echo "$input is greater than 20"
    # Call function to check if input is odd or even
    check_odd_or_even $input
else
    echo "$input is not greater than 20"
    check_odd_or_even $input
fi


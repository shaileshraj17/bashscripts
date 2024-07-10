
#!/bin/bash

# Function to display half pyramid
display_half_pyramid() {
    local rows=$1
    for ((i = 1; i <= rows; i++)); do
        for ((j = 1; j <= i; j++)); do
            echo -n "* "
        done
        echo
    done
}

# Function to display inverted half pyramid
display_inverted_half_pyramid() {
    local rows=$1
    for ((i = rows; i >= 1; i--)); do
        for ((j = 1; j <= i; j++)); do
            echo -n "* "
        done
        echo
    done
}

# Main program starts here

# Input the number of rows for the pyramids (adjust as needed)
echo "enter the no of rows"
read rows

echo "half pyramid"
display_half_pyramid $rows

echo

echo "inverted pyramid"
display_inverted_half_pyramid $rows





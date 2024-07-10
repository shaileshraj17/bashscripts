#!/bin/bash

# Function to check if file exists
check_file_exists() {
    local username="$1"
    local filename="/home/$username/file"

    if [ -e "$filename" ]; then
        echo "File $filename exists."
    else
        echo "File $filename does not exist."
    fi
}

# Main script

# Replace '<username>' with the actual username you want to check
username="ubuntu"


# Call the function to check if the file exists
check_file_exists "$username"



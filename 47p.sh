#!/bin/bash

# Function to display number of files in the current directory
count_files_in_current_directory() {
    local num_files=$(ls -1 | wc -l)
    echo "Number of files in the current directory: $num_files"
}

# Call the function
count_files_in_current_directory


#!/bin/bash

# Function to search for a pattern in a file
search_pattern_in_file() {
    local pattern="$1"
    local filename="$2"

    # Check if file exists
    if [ ! -f "$filename" ]; then
        echo "File '$filename' does not exist."
        exit 1
    fi

    # Search for the pattern in the file
    echo "Searching for pattern '$pattern' in file '$filename':"
    grep -n "$pattern" "$filename"
}

# Check if correct number of arguments are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <pattern> <filename>"
    exit 1
fi

# Call the function with arguments passed to the script
search_pattern_in_file "$1" "$2"


#!/bin/bash

# Get the file name from the user
echo "Enter the name of the file: "
read file_name

# Check if the file exists
if [ ! -f "$file_name" ]; then
  echo "File does not exist."
  exit 1
fi

# Count the number of lines in the file
number_of_lines=$(wc -l < "$file_name")

# Display the number of lines
echo "The number of lines in the file $file_name is $number_of_lines."

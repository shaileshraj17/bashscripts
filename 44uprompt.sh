#!/bin/bash

# Prompt the user for a file or directory name
echo "Enter the name of a file or directory:"
read filename

# Check if the file or directory exists
if [ -f "$filename" ]; then
  echo "$filename is a regular file."
elif [ -d "$filename" ]; then
  echo "$filename is a directory."
else
  echo "$filename is another type of file."
fi

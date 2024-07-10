#!/bin/bash

# Function to compress a folder and copy it to another folder
compress_and_copy_folder() {
    local source_folder="$1"
    local destination_folder="$2"

    # Check if source folder exists
    if [ ! -d "$source_folder" ]; then
        echo "Source folder '$source_folder' does not exist. Aborting."
        exit 1
    fi

    # Check if destination folder exists or create it
    if [ ! -d "$destination_folder" ]; then
        echo "Destination folder '$destination_folder' does not exist. Creating it..."
        mkdir -p "$destination_folder"
    fi

    # Extract folder name from path
    folder_name=$(basename "$source_folder")

    # Compress the folder into a tar.gz file
    echo "Compressing folder '$folder_name'..."
    tar czf "$destination_folder/$folder_name.tar.gz" -C "$(dirname "$source_folder")" "$folder_name"

    # Copy the compressed file to the destination folder
    echo "Copying compressed file to '$destination_folder'..."
    cp "$destination_folder/$folder_name.tar.gz" "$destination_folder/"

    echo "Compression and copy completed successfully."
}

# Check if correct number of arguments are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <source_folder> <destination_folder>"
    exit 1
fi

# Call the function with arguments passed to the script
compress_and_copy_folder "$1" "$2"


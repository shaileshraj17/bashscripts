#!/bin/bash

reverse_string() {
    local input="$1"
    local length=${#input}
    local reversed=""

    
    for (( i = length - 1; i >= 0; i-- )); do
        reversed="$reversed${input:i:1}"
    done

    echo "$reversed"
}


read -p "Enter a string: " input_string


reversed_string=$(reverse_string "$input_string")

echo "Original string: $input_string"
echo "Reversed string: $reversed_string"


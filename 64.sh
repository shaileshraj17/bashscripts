#!/bin/bash

# Use while loop to create an infinite feedback loop
while true; do
    # Generate some output (can be any command producing output)
    echo "Hello, world!" | tee -a output.log  # Append to a log file
    sleep 1  # Introduce a delay
done


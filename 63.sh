#!/bin/bash

# Get all usernames on the system
usernames=$(cut -d: -f1 /etc/passwd)

# Sort usernames by length
sorted_usernames=$(echo "$usernames" | awk '{ print length, $0 }' | sort -n | cut -d" " -f2-)

# Get the shortest and longest usernames
shortest_username=$(echo "$sorted_usernames" | head -n 1)
longest_username=$(echo "$sorted_usernames" | tail -n 1)

# Display results
echo "Shortest username: $shortest_username"
echo "Longest username: $longest_username"


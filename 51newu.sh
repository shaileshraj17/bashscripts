 #!/bin/bash

# Function to create a new user
create_new_user() {
    read -p "Enter username for new user: " username

    # Check if username already exists
    if id "$username" &>/dev/null; then
        echo "User '$username' already exists. Aborting."
        exit 1
    fi

    # Create the new user
    sudo useradd -m "$username"

    # Set password for the new user
    sudo passwd "$username"
}

# Check if script is run as root or with sudo
if [ "$(id -u)" -ne 0 ]; then
    echo "This script must be run as root or with sudo."
    exit 1
fi

# Call the function to create a new user
create_new_user


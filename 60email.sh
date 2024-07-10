#!/bin/bash

# Function to send an email using mutt
send_email() {
    local recipient="shaileshraj809@gmail.com"
    local subject="PWS Training Program"
    local message="Hello from $(whoami)"

    echo "$message" |sendmail -s "$subject" -- "$recipient"
    echo "Email sent successfully to $recipient"
}

# Call the function to send the email
send_email



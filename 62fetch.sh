#!/bin/bash

# Email configuration
recipient="shaileshraj809@gmail.com"
subject="Resource Usage Alert"
mailbody="/tmp/resource_usage.txt"

# Thresholds in percentage
ram_threshold=60
cpu_threshold=60
disk_threshold=60

# Function to check RAM usage percentage
function check_ram_usage {
    ram_usage=$(free | awk '/Mem/{printf("%.2f"), $3/$2*100}')
    echo "RAM Usage: ${ram_usage}%"
    if (( $(echo "$ram_usage >= $ram_threshold" | bc -l) )); then
        echo "RAM usage is above ${ram_threshold}%. Sending email."
        send_email
    fi
}

# Function to check CPU usage percentage
function check_cpu_usage {
    cpu_usage=$(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1}')
    echo "CPU Usage: ${cpu_usage}%"
    if (( $(echo "$cpu_usage >= $cpu_threshold" | bc -l) )); then
        echo "CPU usage is above ${cpu_threshold}%. Sending email."
        send_email
    fi
}

# Function to check Disk usage percentage
function check_disk_usage {
    disk_usage=$(df -h --output=pcent / | tail -n 1 | sed 's/[^0-9]*//g')
    echo "Disk Usage: ${disk_usage}%"
    if (( $disk_usage >= $disk_threshold )); then
        echo "Disk usage is above ${disk_threshold}%. Sending email."
        send_email
    fi
}

# Function to send email notification
function send_email {
    echo "Subject: $subject" > $mailbody
    echo "RAM Usage: $ram_usage%" >> $mailbody
    echo "CPU Usage: $cpu_usage%" >> $mailbody
    echo "Disk Usage: $disk_usage%" >> $mailbody
    mail -s "$subject" "$recipient" < $mailbody
}

# Main script - continuously monitor and check resource usage
while true
do
    check_ram_usage
    check_cpu_usage
    check_disk_usage
    sleep 300  # Adjust the sleep duration as needed (300 seconds = 5 minutes)
done


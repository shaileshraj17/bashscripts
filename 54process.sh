#!/bin/bash


find_nginx_pid() {
    local nginx_pid=$(pgrep nginx)
    if [ -n "$nginx_pid" ]; then
        echo "Nginx is running with PID: $nginx_pid"
    else
        echo "Nginx is not running."
    fi
}


find_nginx_pid


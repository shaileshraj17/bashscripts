#!/bin/bash


start_nginx_service() {
    sudo systemctl start nginx
    echo "Nginx service started."
}


stop_nginx_service() {
    sudo systemctl stop nginx
    echo "Nginx service stopped."
}


status_nginx_service() {
    sudo systemctl status nginx
}


if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <start|stop|status>"
    exit 1
fi

# Check which operation to perform
case "$1" in
    start)
        start_nginx_service
        ;;
    stop)
        stop_nginx_service
        ;;
    status)
        status_nginx_service
        ;;
    *)
        echo "Invalid operation. Usage: $0 <start|stop|status>"
        exit 1
        ;;
esac

exit 0


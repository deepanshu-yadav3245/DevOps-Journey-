#!/bin/bash

# Check if service is running

SERVICE="nginx"

if systemctl is-active --quiet $SERVICE; then
    echo " $SERVICE is running"
else
    echo " $SERVICE is NOT running"
    echo "Trying to start $SERVICE..."
    systemctl start $SERVICE
fi


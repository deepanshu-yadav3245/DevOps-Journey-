#!/bin/bash

# --- Configuration ---
SERVICE="nginx"          # Service to check
DISK_THRESHOLD=80        # Disk usage threshold %
MEM_THRESHOLD=80         # Memory usage threshold %

echo "########################################"
echo "        SYSTEM HEALTH MONITOR"
echo "########################################"
echo ""

# --- Service Checker ---
echo "Checking service: $SERVICE..."
if systemctl is-active --quiet $SERVICE; then
    echo "✅ $SERVICE is running"
else
    echo "❌ $SERVICE is NOT running"
    echo "Starting $SERVICE..."
    systemctl start $SERVICE
    systemctl enable $SERVICE
    echo "$SERVICE started successfully!"
fi
echo ""

# --- Disk Usage Alert ---
DISK_USAGE=$(df / | grep / | awk '{print $5}' | sed 's/%//')
echo "Checking Disk Usage..."
if [ $DISK_USAGE -ge $DISK_THRESHOLD ]; then
    echo "⚠ Disk usage is above $DISK_THRESHOLD%! Current = $DISK_USAGE%"
else
    echo "✅ Disk usage is normal: $DISK_USAGE%"
fi
echo ""

# --- Memory Usage Alert ---
MEM_USAGE=$(free | grep Mem | awk '{print $3*100/$2}' | cut -d. -f1)   
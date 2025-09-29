#!/bin/bash

# Disk Usage Alert Script

THRESHOLD=80

USAGE=$(df / | grep / | awk '{print $5}' | sed 's/%//')

if [ $USAGE -ge $THRESHOLD ]; then
    echo "Disk usage is above $THRESHOLD%! Current = $USAGE%"
else
    echo "Disk usage is normal: $USAGE%"
fi

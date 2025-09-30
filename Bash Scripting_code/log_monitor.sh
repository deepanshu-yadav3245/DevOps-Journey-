#!/bin/bash

# Monitor logs for errors

LOGFILE="/var/log/syslog"   # Or /var/log/messages in CentOS

ERRORS=$(grep -i "error" $LOGFILE | tail -10)

if [ -n "$ERRORS" ]; then
    echo "Recent Errors Found in Logs:"
    echo "$ERRORS"
else
    echo " No recent errors in $LOGFILE"
fi

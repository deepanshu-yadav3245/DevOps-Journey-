#!/bin/bash

echo "########################################"
echo "      SYSTEM INFORMATION REPORT"
echo "########################################"
echo ""

echo "Date & Time     : $(date)"
echo "User            : $(whoami)"
echo "Hostname        : $(hostname)"
echo "Kernel Version  : $(uname -r)"
echo "Uptime          : $(uptime -p)"
echo "Disk Usage      :"
df -h | head -2

echo ""
echo "Memory Usage    :"
free -m

echo ""
echo "########################################"
echo "      Report Generated Successfully"
echo "########################################"


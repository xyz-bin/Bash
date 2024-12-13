#!/bin/bash

echo "=== System Information ==="

# Kernel Version
echo "Kernel Version:"
uname -r
echo ""

# System Uptime
echo "System Uptime:"
uptime -p
echo ""

# Available Memory
echo "Memory Usage:"
free -h
echo ""

# CPU Information
echo "CPU Information:"
lscpu | grep -E "Model name|Architecture|CPU MHz|Core"
echo ""

# Load Averages
echo "Load Averages (1, 5, 15 min):"
uptime | awk -F'load average:' '{print $2}'
echo ""

# Disk Usage
echo "Disk Usage:"
df -h --total | grep "total"
echo ""

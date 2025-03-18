# Mission: Create a script that checks the disk space usage of a specified directory 
# and sends an alert if the usage exceeds a given threshold.



#!/bin/bash

# Check if the user provided a directory and a threshold
if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Usage: $0 <directory> <threshold_percentage>"
    exit 1
fi

DIRECTORY=$1
THRESHOLD=$2

# Check if the directory exists
if [ ! -d "$DIRECTORY" ]; then
    echo "Error: Directory $DIRECTORY does not exist."
    exit 1
fi

# Get the disk usage percentage of the directory
USAGE=$(du -s "$DIRECTORY" | awk '{print $1}')
TOTAL_DISK=$(df "$DIRECTORY" | awk 'NR==2 {print $2}')
USAGE_PERCENTAGE=$(( 100 * USAGE / TOTAL_DISK ))

# Display disk usage details
echo "Disk usage for $DIRECTORY: $USAGE_PERCENTAGE%"

# Compare with threshold and send alert if exceeded
if [ "$USAGE_PERCENTAGE" -ge "$THRESHOLD" ]; then
    echo "⚠️ ALERT: Disk usage of $DIRECTORY has exceeded $THRESHOLD% ($USAGE_PERCENTAGE%)!"
else
    echo "✅ Disk usage is within safe limits."
fi

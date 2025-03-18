# Write a script that monitors a directory for any changes (file creation, modification, or deletion) 
# and logs the changes with a timestamp.

#!/bin/bash

# Directory to monitor (default to current directory if not specified)
DIR_TO_WATCH="${1:-.}"
LOG_FILE="directory_changes.log"

# Check if inotifywait is installed
if ! command -v inotifywait &> /dev/null; then
    echo "Error: inotifywait is not installed. Install it using: sudo apt-get install inotify-tools"
    exit 1
fi

echo "Monitoring directory: $DIR_TO_WATCH"
echo "Logging changes to: $LOG_FILE"
echo "Press [CTRL+C] to stop."

# Monitor directory for changes and log them
inotifywait -m -r -e create -e modify -e delete --format '%T %w%f %e' --timefmt '%Y-%m-%d %H:%M:%S' "$DIR_TO_WATCH" |
while read timestamp file event; do
    echo "$timestamp | $event | $file" >> "$LOG_FILE"
    echo "$timestamp | $event | $file"
done

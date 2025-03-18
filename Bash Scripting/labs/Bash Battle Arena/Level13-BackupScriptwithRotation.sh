
# Mission: Create a script that backs up a directory to a specified location and keeps only the last 5 backups.


#!/bin/bash

# Check if the user provided a source directory and backup location
if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Usage: $0 <source_directory> <backup_location>"
    exit 1
fi

SOURCE_DIR="$1"
BACKUP_DIR="$2"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
BACKUP_NAME="backup_$TIMESTAMP.tar.gz"

# Check if source directory exists
if [ ! -d "$SOURCE_DIR" ]; then
    echo "Error: Source directory $SOURCE_DIR does not exist."
    exit 1
fi

# Ensure the backup directory exists
mkdir -p "$BACKUP_DIR"

# Create a compressed backup
tar -czf "$BACKUP_DIR/$BACKUP_NAME" "$SOURCE_DIR"
echo "Backup created: $BACKUP_DIR/$BACKUP_NAME"

# Keep only the last 5 backups, delete older ones
cd "$BACKUP_DIR" || exit
BACKUP_COUNT=$(ls -1 backup_*.tar.gz 2>/dev/null | wc -l)

if [ "$BACKUP_COUNT" -gt 5 ]; then
    ls -1t backup_*.tar.gz | tail -n +6 | xargs rm -f
    echo "Old backups removed, keeping only the last 5."
fi

echo "Backup process completed successfully!"

# Mission: Create a script that searches for a specific word or phrase across all .
# log files in a directory and outputs the names of the files that contain the word or phrase.

#!/bin/bash

# Check if the user provided a search term
if [ -z "$1" ]; then
    echo "Usage: $0 'search_term'"
    exit 1
fi

search_term="$1"
found=0

# Search in all .log files
for file in *.log; do
    if [ -f "$file" ] && grep -q "$search_term" "$file"; then
        echo "Found in: $file"
        found=1
    fi
done

# If no files contain the search term, print a message
if [ $found -eq 0 ]; then
    echo "No matches found in any .log files."
fi

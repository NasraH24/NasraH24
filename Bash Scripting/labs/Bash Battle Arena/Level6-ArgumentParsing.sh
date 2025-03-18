
#!/bin/bash

Level 6: Argument Parsing

Mission: Write a script that accepts a filename as an argument and prints the number of lines in that file. 
If no filename is provided, display a message saying 'No file provided'.


#!/bin/bash

# Check if a filename is provided
if [ -z "$1" ]; then
    echo "No file provided"
    exit 1
fi

# Check if the file exists
if [ ! -f "$1" ]; then
    echo "File not found: $1"
    exit 1
fi

# Count and display the number of lines in the file
line_count=$(wc -l < "$1")
echo "Number of lines in $1: $line_count"

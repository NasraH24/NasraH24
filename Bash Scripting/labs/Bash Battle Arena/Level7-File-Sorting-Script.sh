# Mission: Write a script that sorts all .txt files in a directory by their size, 
# from smallest to largest, and displays the sorted list.


#!/bin/bash

# Check if there are any .txt files in the directory
if ls *.txt &> /dev/null; then
    # List .txt files with their sizes, sort by size (numerically), and display
    ls -lS --block-size=K *.txt | awk '{print $5, $9}' | sort -n
else
    echo "No .txt files found in the directory."
fi

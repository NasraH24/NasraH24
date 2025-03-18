
Mission: Write a script that:

# 1. Creates a directory called Arena_Boss.
# 2. Creates 5 text files inside the directory, named file1.txt to file5.txt.
# 3. Generates a random number of lines (between 10 and 20) in each file.
# 4. Sorts these files by their size and displays the list.
# 5. Checks if any of the files contain the word 'Victory', and if found, moves the file to a directory called Victory_Archive.



#!/bin/bash

# Step 1: Create the Arena_Boss directory
mkdir -p Arena_Boss

# Step 2: Create 5 text files inside Arena_Boss
for i in {1..5}; do
    file="Arena_Boss/file$i.txt"
    touch "$file"

    # Step 3: Generate a random number of lines (between 10 and 20) in each file
    num_lines=$((RANDOM % 11 + 10))  # Random number between 10 and 20

    for ((j=1; j<=num_lines; j++)); do
        # Randomly insert 'Victory' in some lines
        if (( RANDOM % 5 == 0 )); then
            echo "Victory in battle!" >> "$file"
        else
            echo "Line $j of file $i" >> "$file"
        fi
    done
done

# Step 4: Sort files by size and display the sorted list
echo "Files sorted by size (smallest to largest):"
ls -lS Arena_Boss/*.txt | awk '{print $5, $9}' | sort -n

# Step 5: Check if any file contains 'Victory' and move it to Victory_Archive
mkdir -p Victory_Archive

for file in Arena_Boss/*.txt; do
    if grep -q "Victory" "$file"; then
        mv "$file" Victory_Archive/
        echo "Moved $(basename "$file") to Victory_Archive."
    fi
done

echo "Task completed successfully!"

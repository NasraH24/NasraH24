
# Level 5: The Boss Battle - Combining Basics

# Mission: Combine what you've learned! Write a script that:

# 1. Creates a directory names 'Battlefield'
# 2. Inside Battlefield, create files named knight.txt, sorcerer.txt, and rogue.txt.
# 3. Check if knight.txt exists; if it does, move it to a new directory called Archive.
# 4. List the contents of both Battlefield and Archive.



#!/bin/bash

# Step 1: Create a directory named 'Battlefield'
mkdir -p Battlefield

# Step 2: Create files inside 'Battlefield'
touch Battlefield/knight.txt Battlefield/sorcerer.txt Battlefield/rogue.txt

# Step 3: Check if 'knight.txt' exists and move it to 'Archive' if it does
if [ -f "Battlefield/knight.txt" ]; then
    mkdir -p Archive  # Create Archive directory if it doesn't exist
    mv Battlefield/knight.txt Archive/
    echo "knight.txt moved to Archive."
else
    echo "knight.txt does not exist."
fi

# Step 4: List contents of both directories
echo "Contents of Battlefield:"
ls -l Battlefield

echo "Contents of Archive:"
ls -l Archive



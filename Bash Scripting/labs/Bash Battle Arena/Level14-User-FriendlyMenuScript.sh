
# Mission: Create an interactive script that presents a menu with options for different system tasks 
# (e.g., check disk space, show system uptime, list users), and executes the chosen task.



#!/bin/bash

while true; do
    # Display the menu
    echo "=========================="
    echo "  System Task Menu"
    echo "=========================="
    echo "1. Check disk space"
    echo "2. Show system uptime"
    echo "3. List logged-in users"
    echo "4. Show memory usage"
    echo "5. Exit"
    echo "=========================="
    
    # Ask for user input
    read -p "Enter your choice (1-5): " choice

    # Execute the chosen task
    case $choice in
        1)
            echo "Disk Space Usage:"
            df -h
            ;;
        2)
            echo "System Uptime:"
            uptime
            ;;
        3)
            echo "Logged-in Users:"
            who
            ;;
        4)
            echo "Memory Usage:"
            free -h
            ;;
        5)
            echo "Exiting... Have a great day!"
            exit 0
            ;;
        *)
            echo "Invalid choice, please select a number between 1 and 5."
            ;;
    esac
    
    # Pause before showing the menu again
    echo ""
    read -p "Press Enter to continue..."
done

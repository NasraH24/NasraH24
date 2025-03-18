
# Mission: Write a script that reads a configuration file in the format KEY=VALUE and prints each key-value pair.

#!/bin/bash

# Check if a configuration file is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <config_file>"
    exit 1
fi

CONFIG_FILE="$1"

# Check if the file exists
if [ ! -f "$CONFIG_FILE" ]; then
    echo "Error: File '$CONFIG_FILE' not found."
    exit 1
fi

# Read and print key-value pairs, ignoring comments and blank lines
echo "Reading configuration from $CONFIG_FILE..."
while IFS='=' read -r key value; do
    # Ignore empty lines and lines starting with #
    if [[ -n "$key" && "$key" != \#* ]]; then
        echo "Key: $key, Value: $value"
    fi
done < "$CONFIG_FILE"


How It Works

1. Checks if a configuration file is provided as an argument.
2. Verifies if the file exists.
3. Reads the file line by line, extracting KEY=VALUE pairs.
4. Ignores:
           Empty lines
           Commented lines (#)
           Prints each key-value pair in a structured format.


#Example configuration file

# Database Configuration
DB_USER=admin
DB_PASSWORD=securepassword
DB_HOST=localhost
DB_PORT=5432

# Application Settings
DEBUG_MODE=true
LOG_LEVEL=info

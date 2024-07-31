#!/bin/bash

# Directory to search (default is the current directory)
DIR=${1:-.}

# Output file
OUTPUT_FILE="file_extensions.txt"

# Check if the directory exists
if [ ! -d "$DIR" ]; then
  echo "Directory $DIR does not exist."
  exit 1
fi

# Find all files in the directory, extract their extensions, and list unique extensions
find "$DIR" -type f | sed -n 's/.*\.\([a-zA-Z0-9]*\)$/\1/p' | sort | uniq > "$OUTPUT_FILE"

echo "File extensions have been saved to $OUTPUT_FILE"


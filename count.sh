#!/bin/bash

# Check if the directory path is passed as an argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 <absolute_path_to_directory>"
    exit 1
fi

DIR="$1"

if [ ! -d "$DIR" ]; then
    echo "Directory '$DIR' does not exist."
    exit 1
fi

# Count only files (not directories or symlinks)
FILE_COUNT=$(find "$DIR" -maxdepth 1 -type f | wc -l)

echo "There are $FILE_COUNT file(s) in directory '$DIR'."
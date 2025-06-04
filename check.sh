#!/bin/bash

# Check if the filename is passed as an argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 <filename>"
    exit 
fi

FILENAME="$1"

if [ -e "$FILENAME" ]; then
    echo "File '$FILENAME' exists."
else
    echo "File '$FILENAME' does not exist."
fi
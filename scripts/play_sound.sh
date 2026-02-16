#!/bin/bash

# Directory where the script is located
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
ASSETS_DIR="$DIR/../assets"

if [ "$1" == "before" ]; then
    TARGET_DIR="$ASSETS_DIR/beforeagent"
elif [ "$1" == "after" ]; then
    TARGET_DIR="$ASSETS_DIR/afteragent"
else
    echo "Usage: $0 {before|after}"
    exit 1
fi

# Check if directory exists
if [ ! -d "$TARGET_DIR" ]; then
    echo "Error: Directory $TARGET_DIR not found."
    exit 1
fi

# Create an array of files. We use a glob to find files.
# We need to handle the case where no files exist or the glob fails.
shopt -s nullglob
FILES=("$TARGET_DIR"/*)
shopt -u nullglob

NUM_FILES=${#FILES[@]}

if [ $NUM_FILES -eq 0 ]; then
    echo "No files found in $TARGET_DIR"
    exit 1
fi

# Pick a random index
RANDOM_INDEX=$((RANDOM % NUM_FILES))
FILE="${FILES[$RANDOM_INDEX]}"

# Play the file (macOS specific)
if command -v afplay &> /dev/null; then
    afplay "$FILE"
else
    echo "afplay not found. Please install a media player or run on macOS."
    # Fallback to play if available (Linux)
    if command -v play &> /dev/null; then
        play "$FILE"
    fi
fi

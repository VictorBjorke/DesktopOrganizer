#!/bin/bash

# Define the desktop directory
DESKTOP_DIR="$HOME/Desktop"

# Create directories for file types
IMAGE_DIR="$DESKTOP_DIR/Images"
DOCUMENT_DIR="$DESKTOP_DIR/Documents"
VIDEO_DIR="$DESKTOP_DIR/Videos"
OTHER_DIR="$DESKTOP_DIR/Other"

# Ensure the target directories exist
mkdir -p "$IMAGE_DIR" "$DOCUMENT_DIR" "$VIDEO_DIR" "$OTHER_DIR"

# Loop through files on the desktop
for FILE in "$DESKTOP_DIR"/*; do
    if [ -f "$FILE" ]; then
        # Determine the file type
        FILE_TYPE=$(file -b --mime-type "$FILE" | cut -d/ -f1)

        # Move the file to the appropriate directory
        case "$FILE_TYPE" in
            "image")
                mv "$FILE" "$IMAGE_DIR"
                ;;
            "text" | "application")
                mv "$FILE" "$DOCUMENT_DIR"
                ;;
            "video")
                mv "$FILE" "$VIDEO_DIR"
                ;;
            *)
                mv "$FILE" "$OTHER_DIR"
                ;;
        esac
    fi
done
# Lets the user know that its done.
echo "Desktop organization complete."

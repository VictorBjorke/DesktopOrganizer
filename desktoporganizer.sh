#!/bin/bash

# Define the desktop directory
DESKTOP_DIR="$HOME/Desktop"

# Create directories for file types
IMAGE_DIR="$DESKTOP_DIR/Images"
DOCUMENT_DIR="$DESKTOP_DIR/Documents"
VIDEO_DIR="$DESKTOP_DIR/Videos"
OTHER_DIR="$DESKTOP_DIR/Other"

# Define the log file path
LOG_FILE="$DESKTOP_DIR/Desktop_Organization_Log.txt"

# Ensure the target directories exist
mkdir -p "$IMAGE_DIR" "$DOCUMENT_DIR" "$VIDEO_DIR" "$OTHER_DIR"

# Initialize the log file
echo "Desktop Organization Log" > "$LOG_FILE"
echo "-----------------------" >> "$LOG_FILE"
echo "$(date): Desktop organization started." >> "$LOG_FILE"

# Loop through files on the desktop
for FILE in "$DESKTOP_DIR"/*; do
    if [ -f "$FILE" ]; then
        # Determine the file's MIME type
        FILE_TYPE=$(file -b --mime-type "$FILE" | cut -d/ -f1)

        # Extract the filename without the path
        FILENAME=$(basename "$FILE")

        # Move the file to the appropriate directory based on its MIME type
        case "$FILE_TYPE" in
            "image")
                mv "$FILE" "$IMAGE_DIR"
                echo "$(date): Moved image file '$FILENAME' to '$IMAGE_DIR'." >> "$LOG_FILE"
                ;;
            "text" | "application")
                mv "$FILE" "$DOCUMENT_DIR"
                echo "$(date): Moved document file '$FILENAME' to '$DOCUMENT_DIR'." >> "$LOG_FILE"
                ;;
            "video")
                mv "$FILE" "$VIDEO_DIR"
                echo "$(date): Moved video file '$FILENAME' to '$VIDEO_DIR'." >> "$LOG_FILE"
                ;;
            *)
                mv "$FILE" "$OTHER_DIR"
                echo "$(date): Moved other file '$FILENAME' to '$OTHER_DIR'." >> "$LOG_FILE"
                ;;
        esac
    fi
done

# Append completion message to the log file
echo "$(date): Desktop organization complete." >> "$LOG_FILE"

# Provide a message to the user indicating that it's done and mention the log file's location
echo "Desktop organization complete. Log file: $LOG_FILE"

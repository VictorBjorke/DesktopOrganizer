#!/bin/bash

# Linux Desktop Organizer Script

# Define the desktop directory
desktopDir="$HOME/Desktop"

# Create directories for file types (you can customize this list)
imageDir="$desktopDir/Images"
documentDir="$desktopDir/Documents"
videoDir="$desktopDir/Videos"
otherDir="$desktopDir/Other"

# Ensure the target directories exist
mkdir -p "$imageDir"
mkdir -p "$documentDir"
mkdir -p "$videoDir"
mkdir -p "$otherDir"

# Get a list of files on the desktop
files=$(find "$desktopDir" -maxdepth 1 -type f)

# Loop through files and move them to the appropriate directory based on file type
for file in $files; do
    # Determine the file extension
    fileExtension="${file##*.}"

    # Move the file to the appropriate directory based on extension
    case "$fileExtension" in
        jpg|jpeg|png|gif|bmp|tiff)
            mv "$file" "$imageDir/"
            ;;
        doc|docx|txt|pdf|xlsx|pptx|rtf)
            mv "$file" "$documentDir/"
            ;;
        mp4|avi|mkv|mov|wmv)
            mv "$file" "$videoDir/"
            ;;
        *)
            mv "$file" "$otherDir/"
            ;;
    esac
done

echo "Desktop organization complete."

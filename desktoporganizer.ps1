# PowerShell script for organizing files on the desktop into folders based on file types

# Define the desktop directory
$desktopDir = [System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::Desktop)

# Create directories for file types (you can customize this list)
$imageDir = Join-Path -Path $desktopDir -ChildPath "Images"
$documentDir = Join-Path -Path $desktopDir -ChildPath "Documents"
$videoDir = Join-Path -Path $desktopDir -ChildPath "Videos"
$otherDir = Join-Path -Path $desktopDir -ChildPath "Other"

# Ensure the target directories exist
$null = New-Item -Path $imageDir -ItemType Directory -Force
$null = New-Item -Path $documentDir -ItemType Directory -Force
$null = New-Item -Path $videoDir -ItemType Directory -Force
$null = New-Item -Path $otherDir -ItemType Directory -Force

# Get a list of files on the desktop
$files = Get-ChildItem -Path $desktopDir | Where-Object { -not $_.PSIsContainer }

# Loop through files and move them to the appropriate directory
foreach ($file in $files) {
    # Determine the file extension
    $fileExtension = $file.Extension.TrimStart(".")

    # Move the file to the appropriate directory based on extension
    switch ($fileExtension) {
        {$_ -in "jpg", "jpeg", "png", "gif", "bmp", "tiff"} {
            Move-Item -Path $file.FullName -Destination $imageDir
            break
        }
        {$_ -in "doc", "docx", "txt", "pdf", "xlsx", "pptx", "rtf"} {
            Move-Item -Path $file.FullName -Destination $documentDir
            break
        }
        {$_ -in "mp4", "avi", "mkv", "mov", "wmv"} {
            Move-Item -Path $file.FullName -Destination $videoDir
            break
        }
        default {
            Move-Item -Path $file.FullName -Destination $otherDir
            break
        }
    }
}

Write-Host "Desktop organization complete."

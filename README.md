# 🚀 Desktop Organizer Scripts for macOS, Windows, and Linux

**Disclaimer:** Use these scripts at your own risk. Always make sure to back up your important files before running any automation scripts. Also, this README was written by chatGPT, because I couldn't be bothered to do it myself.

## Overview

The **Desktop Organizer Scripts** are powerful yet user-friendly automation scripts designed to help you declutter your desktop by automatically organizing files into categorized folders based on their file types. Whether you're on macOS, Windows 11, or Linux, these scripts provide a convenient way to maintain a clean and organized desktop environment without the hassle. This project is considered done, I might add features in the past if you ask for it, but other than that, it does what it needs to do.

## 🌟 Features

- 📂 Automatically categorizes files into the following folders:
  - 🖼️ Images
  - 📄 Documents
  - 🎥 Videos
  - 📦 Other (files that don't fit into the above categories)
- 🌐 Supports common file types, including images, documents, videos, and more.
- 🛠️ Easy to customize to fit your specific needs.

## 📋 Prerequisites

**macOS Script (Bash):**

- macOS (tested on macOS 10.15 and later)
- Bash shell

**Windows Script (PowerShell):**

- Windows 11 (tested on Windows 11)
- PowerShell

**Linux Script (Bash):**

- Linux distribution (tested on Debian 11)
- Bash shell

## 📦 Installation

**macOS Script (Bash):**

1. **Download the Script:**
   - Download the `desktoporganizer.sh` script from the repository.

2. **Make the Script Executable:**
   - Open Terminal.
   - Navigate to the directory containing the script.
   - Run the following command to make the script executable:
     ```
     chmod +x desktoporganizer.sh
     ```

**Windows Script (PowerShell):**

1. **Download the Script:**
   - Download the `desktoporganizer.ps1` script from the repository.

2. **Run the Script:**
   - Open PowerShell.
   - Navigate to the directory where the `desktoporganizer.ps1` script is located.
   - Run the script by entering the following command:
     ```
     .\desktoporganizer.ps1
     ```

**Linux Script (Bash):**

1. **Download the Script:**
   - Download the `desktoporganizer_linux.sh` script from the repository.

2. **Make the Script Executable:**
   - Open a terminal.
   - Navigate to the directory containing the script.
   - Run the following command to make the script executable:
     ```
     chmod +x desktoporganizer_linux.sh
     ```

## 💡 Usage

**macOS Script (Bash):**

1. **Run the Script:**
   - Open Terminal.
   - Navigate to the directory where the `desktoporganizer.sh` script is located.
   - Run the script by entering the following command:
     ```
     ./desktoporganizer.sh
     ```

**Windows Script (PowerShell):**

1. **Run the Script:**
   - Open PowerShell.
   - Navigate to the directory where the `desktoporganizer.ps1` script is located.
   - Run the script by entering the following command:
     ```
     .\desktoporganizer.ps1
     ```

**Linux Script (Bash):**

1. **Run the Script:**
   - Open a terminal.
   - Navigate to the directory where the `desktoporganizer_linux.sh` script is located.
   - Run the script by entering:

    ```bash
    ./desktoporganizer_linux.sh
    ```

2. **View the Results:**
   - The script will organize the files on your desktop into the specified folders based on their file extensions. Existing folders and files will not be affected; only new files will be organized.

## 🎨 Customization

You can customize all three scripts by modifying the list of file types and corresponding folders in the scripts. Edit the script's `IMAGE_DIR`, `DOCUMENT_DIR`, `VIDEO_DIR`, and `OTHER_DIR` variables to match your preferred folder structure.

## 📜 License

These scripts are open-source and licensed under the [GNU General Public License, version 3.0 (GPL-3.0)](LICENSE).

## 🤝 Contributions

Contributions are highly encouraged! If you'd like to enhance these scripts or add new features, please open an issue or submit a pull request.

## 📝 Author

- [Victor Björke](https://github.com/VictorBjorke)

## 🙏 Acknowledgments

Special thanks to the open-source community for inspiration and guidance.

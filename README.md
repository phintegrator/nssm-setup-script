# NSSM Setup Script

[![GitHub Repo](https://img.shields.io/badge/GitHub-Repository-blue?logo=github)](https://github.com/phintegrator/nssm-setup-script.git)

## Overview
This repository contains a batch script to download, extract, and configure **NSSM (Non-Sucking Service Manager) version 2.24** automatically on Windows.

## Features
✅ Automatically downloads NSSM 2.24  
✅ Extracts NSSM to `C:\nssm-2.24`  
✅ Adds NSSM to the system PATH  
✅ Ensures the script runs with administrator privileges  
✅ Cleans up temporary files after installation  
✅ Always overwrites previous installations without confirmation  

## Prerequisites
- Windows OS
- Administrator privileges
- PowerShell installed (default on modern Windows systems)

## Installation
### 1️⃣ Clone the repository
```sh
git clone https://github.com/phintegrator/nssm-setup-script.git
```

### 2️⃣ Navigate to the directory
```sh
cd nssm-setup-script
```

### 3️⃣ Run the script as Administrator
```sh
nssm-setup.bat
```

## How It Works
1. ✅ The script checks for administrator privileges.
2. ✅ It downloads NSSM 2.24 from the official source.
3. ✅ Extracts the contents to `C:\nssm-2.24`.
4. ✅ Adds NSSM to the system PATH.
5. ✅ Cleans up any temporary files.
6. ✅ Prints a success message upon completion.

## Verification
To check if NSSM is installed correctly, open a new Command Prompt and run:
```sh
nssm --version
```

## License
📝 This project is open-source and provided without warranty. Use at your own risk.

## Author
👤 **[phintegrator](https://github.com/phintegrator)**


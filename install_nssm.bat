@echo off
:: Batch script to download, extract, and set up NSSM (Non-Sucking Service Manager)
:: Ensure the script runs in administrator mode
:: ======================================================

:: Check for administrator privileges
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo This script must be run as an administrator.
    exit /b
)

:: Informative message
echo ======================================================
echo NSSM Setup Script
echo This script will download, extract, and configure NSSM.
echo ======================================================
echo.

:: Define variables
set "nssm_url=https://nssm.cc/release/nssm-2.24.zip"
set "nssm_zip=nssm-2.24.zip"
set "extract_dir=C:\"
set "extracted_dir=C:\nssm-2.24"
set "nssm_path=%extracted_dir%\win64"

:: Ensure the existing folder is removed
if exist "%extracted_dir%" (
    echo Overwriting existing folder...
    rmdir /s /q "%extracted_dir%"
)

:: Download NSSM using PowerShell's Invoke-WebRequest
echo Downloading NSSM from %nssm_url%...
powershell -Command "Invoke-WebRequest -Uri '%nssm_url%' -OutFile '%nssm_zip%'"
if %errorLevel% neq 0 (
    echo Failed to download NSSM.
    exit /b
)
echo Download complete.

:: Extract NSSM using PowerShell's Expand-Archive
echo Extracting NSSM to %extract_dir%...
powershell -Command "Expand-Archive -Path '%nssm_zip%' -DestinationPath '%extract_dir%' -Force"
if %errorLevel% neq 0 (
    echo Failed to extract NSSM.
    exit /b
)
echo Extraction complete.

:: Clean up the downloaded zip file
echo Cleaning up...
del "%nssm_zip%"
echo Cleanup complete.

:: Add NSSM to the system PATH
echo Adding NSSM to the system PATH...
setx PATH "%nssm_path%;%PATH%" /M
if %errorLevel% neq 0 (
    echo Failed to add NSSM to the system PATH.
    exit /b
)
echo NSSM has been added to the system PATH.

:: Final message
echo ======================================================
echo Your NSSM is ready! Open a new Command Prompt to access it.
echo ======================================================

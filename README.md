# ct-simulation-env

This repository sets up a sandbox environment to simulate a hospital CT scanner.
It enables real-time CT scan data sending, storage using Orthanc, and processing for robot movement.

# DCMTK Installation and Setup

This guide will walk you through the process of setting up DCMTK using Chocolatey, a package manager for Windows.

## Prerequisites

- **Windows** OS
- **Chocolatey** package manager (will be installed automatically if not present)

## Steps to Install DCMTK

1. **Run the Setup Script**:
   - Download the `setup.ps1` script and execute it using PowerShell as an administrator.
     - Right-click the script and select "Run with PowerShell."
   - The script will:
     - Check if Chocolatey is installed. If not, it will install Chocolatey.
     - Install DCMTK using Chocolatey.
     - Verify that DCMTK is installed correctly by checking its version.

2. **Manual Installation (if needed)**:
   If you don't want to use the script, you can install DCMTK manually by first installing Chocolatey (follow the instructions on the [Chocolatey website](https://chocolatey.org/install)) and then running:
   ```bash
   choco install dcmtk
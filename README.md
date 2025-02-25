# ct-simulation-env

This repository sets up a sandbox environment to simulate a hospital CT scanner.
It enables real-time CT scan data sending, storage using Orthanc, and processing for robot movement.

DCMTK Installation Scripts
==========================

This repository provides scripts to install DCMTK (DICOM Toolkit) on Linux, macOS, and Windows.

Installation:
-------------
Linux/macOS:
1. Open a terminal and run:
   chmod +x dcmtk_script/setup.sh
   ./dcmtk_script/setup.sh

Windows:
1. Open PowerShell as Administrator.
2. Run:
   Set-ExecutionPolicy Bypass -Scope Process -Force
   .\dcmtk_script\setup.ps1

Verification:
-------------
Run the following command to check if DCMTK is installed:
   dcmdump --version

For more details, visit: https://dicom.offis.de/dcmtk.php.en
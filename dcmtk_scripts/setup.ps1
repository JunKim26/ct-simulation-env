# setup.ps1 - DCMTK Installation Script for Windows using Chocolatey

Write-Host "Starting DCMTK installation..." -ForegroundColor Cyan

# Check if Chocolatey is installed
$chocoInstalled = Get-Command choco -ErrorAction SilentlyContinue
if (-not $chocoInstalled) {
    Write-Host "Chocolatey not found. Installing Chocolatey..." -ForegroundColor Yellow
    # Install Chocolatey if not installed
    Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
}

# Install DCMTK using Chocolatey
Write-Host "Installing DCMTK via Chocolatey..." -ForegroundColor Yellow
choco install dcmtk -y

# Verify Installation
$dcmtkVersion = dcmdump --version
if ($dcmtkVersion) {
    Write-Host "DCMTK successfully installed: $dcmtkVersion" -ForegroundColor Green
} else {
    Write-Host "DCMTK installation failed. Please install manually from https://dicom.offis.de/dcmtk.php.en" -ForegroundColor Red
}
# Ensure the script runs with administrator privileges
if (-not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
    Write-Host "⚠️ Please run this script as Administrator!" -ForegroundColor Red
    exit 1
}

Write-Host "Installing DCMTK..." -ForegroundColor Cyan

# Check if Chocolatey is installed
if (!(Get-Command choco -ErrorAction SilentlyContinue)) {
    Write-Host "⚠️ Chocolatey not found. Installing Chocolatey first..." -ForegroundColor Yellow
    Set-ExecutionPolicy Bypass -Scope Process -Force
    Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
    refreshenv
}

# Install DCMTK using Chocolatey
Write-Host "📦 Installing DCMTK via Chocolatey..." -ForegroundColor Cyan
choco install -y dcmtk

# Verify installation
if (Get-Command dcmdump -ErrorAction SilentlyContinue) {
    Write-Host "✅ DCMTK installed successfully!" -ForegroundColor Green
    Write-Host "DCMTK Version:"
    dcmdump --version
} else {
    Write-Host "❌ DCMTK installation failed. Please install manually from https://dicom.offis.de/dcmtk.php.en" -ForegroundColor Red
    exit 1
}

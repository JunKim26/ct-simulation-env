#!/bin/bash

# Exit if any command fails
set -e

echo "Installing DCMTK..."

# Detect OS
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    echo "Detected Linux (Ubuntu/Debian)..."
    sudo apt update && sudo apt install -y dcmtk

elif [[ "$OSTYPE" == "darwin"* ]]; then
    echo "Detected macOS..."
    brew install dcmtk

else
    echo "Unsupported OS. Please install DCMTK manually."
    exit 1
fi

# Verify installation
echo "Verifying installation..."
if command -v dcmdump &> /dev/null; then
    echo "✅ DCMTK installed successfully!"
    echo "DCMTK Version:"
    dcmdump --version
else
    echo "❌ DCMTK installation failed."
    exit 1
fi

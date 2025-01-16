#!/bin/bash

# Update the package list
echo "Updating package list..."
sudo apt-get update

# Install essential packages for Python, WeasyPrint, and other dependencies
echo "Installing essential packages..."
sudo apt-get install -y python3 python3-pip python3-dev libxml2 libxslt1-dev build-essential libssl-dev libffi-dev libjpeg-dev libpango1.0-dev

# Install required Python packages
echo "Installing Python packages..."
pip3 install --upgrade pip
pip3 install beautifulsoup4 weasyprint pandas termcolor

# Verify installation
echo "Verifying installations..."
python3 -c "import weasyprint, pandas, termcolor, bs4; print('Installation successful!')"

echo "Setup completed successfully!"

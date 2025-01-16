#!/bin/bash

# Update the package list
echo "Updating package list..."
sudo apt-get update

# Install essential packages for Python, WeasyPrint, and other dependencies
echo "Installing essential packages..."
sudo apt-get install -y python3 python3-pip python3-dev python3-venv libxml2 libxslt1-dev build-essential libssl-dev libffi-dev libjpeg-dev libpango1.0-dev

# Create a virtual environment (optional but recommended)
echo "Creating virtual environment..."
python3 -m venv myenv
source myenv/bin/activate

# Install required Python packages within the virtual environment
echo "Installing Python packages..."
pip install --upgrade pip
pip install beautifulsoup4 weasyprint pandas termcolor

# Verify installation
echo "Verifying installations..."
python -c "import weasyprint, pandas, termcolor, bs4; print('Installation successful!')"

# Final success message
echo "Setup completed successfully!"

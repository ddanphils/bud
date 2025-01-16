#!/bin/bash

echo "Starting the setup.sh script..."

# Check for Python and pip
if ! command -v python3 &>/dev/null; then
    echo "Python3 is not installed. Installing Python3..."
    sudo apt-get install -y python3 python3-pip python3-dev python3-venv
else
    echo "Python3 is already installed."
fi

# Install system dependencies for WeasyPrint
echo "Installing system dependencies for WeasyPrint..."
sudo apt-get update
sudo apt-get install -y libxml2 libxslt1-dev libjpeg-dev libpango1.0-dev build-essential

# Create virtual environment
echo "Creating virtual environment..."
python3 -m venv myenv

# Activate the virtual environment
echo "Activating virtual environment..."
source myenv/bin/activate

# Upgrade pip and install Python dependencies
echo "Upgrading pip and installing Python packages..."
pip install --upgrade pip
pip install beautifulsoup4 weasyprint pandas termcolor

# Verify installation
echo "Verifying installations..."
python -c "import weasyprint, pandas, termcolor, bs4; print('Installation successful!')"

# Final success message
echo "Setup completed successfully!"

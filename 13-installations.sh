#!/bin/bash

# servers installation script
echo "Starting server installations..."

USERID=$(id -u)
if [ "$USERID" -ne 0 ]; then    
    echo "Please run as root or use sudo"
    exit 1 # Exit if not root
fi
# Install MySQL
echo "Installing MySQL..."
dnf install mysql -y
if [ $? -ne 0 ]; then
    echo "MySQL installation failed!"
    exit 1
echo "MySQL installed successfully."
fi
# usage: ./13-installations.sh
# Output:
# Starting server installations...
# Installing MySQL...
# MySQL installed successfully.

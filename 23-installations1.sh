#!/bin/bash

if [ "$(id -u)" -ne 0 ]; then    
    echo "Please run as root or use sudo"
    exit 1 # Exit if not root
fi

# Install MySQL
echo "Installing MySQL..."
dnf install mysql -y
if [ $? -ne 0 ]; then
    echo "MySQL installation failed!"
    exit 1 
else
    echo "MySQL installed successfully."
fi

# Install Nginx
echo "Installing Nginx..."
dnf install nginx -y
if [ $? -ne 0 ]; then
    echo "Nginx installation failed!"
    exit 1 
else
    echo "Nginx installed successfully."
fi

# Install python3
echo "Installing python3..."
dnf install python3 -y
if [ $? -ne 0 ]; then
    echo "python3 installation failed!"
    exit 1 
else
    echo "python3 installed successfully."
fi
# usage: ./23-installations1.sh
# Output:


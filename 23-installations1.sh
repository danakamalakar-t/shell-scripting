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

# Install mongoDB
echo "Installing mongoDB-mongosh..."
dnf install mongodb-mongosh -y
if [ $? -ne 0 ]; then
    echo "mongoDB-mongosh installation failed!"
    exit 1 
else
    echo "mongoDB-mongosh installed successfully."
fi
# usage: ./23-installations1.sh
# Output:


#!/bin/bash

# servers installation script
echo "Starting server installations..."

USERID=$(id -u)
if [ "$USERID" -ne 0 ]; then    
    echo "Please run as root or use sudo"
    exit 1 # Exit if not root
fi
# Install MySQL

VALIDATE {
    if [ $1 -ne 0 ]; then
        echo "$2 installation failed!"
        exit 1
    fi
    echo "$2 installed successfully."
}

dnf install mysql -y
VALIDATE $? "MySQL"
echo "Installing MySQL..."


dnf install nginx -y
VALIDATE $? "Nginx"
echo "Installing Nginx..."


dnf install python3 -y
VALIDATE $? "Python3"
echo "Installing Python3..."

# usage: ./13-installations.sh
# Output:
# Starting server installations...
# Installing MySQL...
# MySQL installed successfully.

# Installing Nginx...
# Nginx installed successfully.

# Installing Python3...
# Python3 installed successfully."      
#!/bin/bash

if [ "$(id -u)" -ne 0 ]; then    
    echo "Please run as root or use sudo"
    exit 1 # Exit if not root
fi

# Install MySQL

VALIDATE() {
    if [ $1 -ne 0 ]; then
        echo "$2 installation failed!"
        exit 1
    fi
    echo "$2 installed successfully."
}
echo "Installing MySQL..."
dnf install mysql -y
VALIDATE $? "MySQL"

echo "Installing Nginx..."
dnf install nginx -y
VALIDATE $? "Nginx"

echo "Installing Python3..."
dnf install python3 -y
VALIDATE $? "Python3"

# usage: ./24-installation-using-functions.sh
# Output:

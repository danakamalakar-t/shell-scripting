#!/bin/bash

# servers installation script
echo "Starting server installations..."

USERID=$(id -u)
if [ "$USERID" -ne 0 ]; then    
    echo "Please run as root or use sudo"
    exit 1 # Exit if not root
fi


# Validation function
VALIDATE() {
    if [ $1 -ne 0 ]; then
        echo "$2 installation failed!"
        exit 1
    fi
    echo "$2 installed successfully."
}

# Function to check if service/software exists
CHECK_INSTALLED() {
    if which $1 &>/dev/null; then
        echo "$2 is installed and available."
    else
        echo "$2 is NOT installed!"
    fi
}

# Install MySQL
echo "Installing MySQL..."
dnf install mysql -y
VALIDATE $? "MySQL"
CHECK_INSTALLED mysql "MySQL"

# Install Nginx
echo "Installing Nginx..."
dnf install nginx -y
VALIDATE $? "Nginx"
CHECK_INSTALLED nginx "Nginx"

# Install Python3
echo "Installing Python3..."
dnf install python3 -y
VALIDATE $? "Python3"
CHECK_INSTALLED python3 "Python3"

# usage: ./15-functions-check-install.sh
# Output:
# Starting server installations...
# Installing MySQL...
# MySQL installed successfully.
# MySQL is installed and available.
# Installing Nginx...
# Nginx installed successfully.
# Nginx is installed and available.
# Installing Python3...
# Python3 installed successfully.
# Python3 is installed and available.
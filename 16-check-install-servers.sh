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

# Function to check and install if not already installed
INSTALL_SERVER() {
    PACKAGE=$1
    NAME=$2

    rpm -q $PACKAGE &>/dev/null
    if [ $? -eq 0 ]; then
        echo "$NAME is already installed. Skipping..."
    else
        echo "Installing $NAME..."
        dnf install -y $PACKAGE
        VALIDATE $? "$NAME"
    fi
}

# MySQL
INSTALL_SERVER mysql "MySQL"

# Nginx
INSTALL_SERVER nginx "Nginx"

# Python3
INSTALL_SERVER python3 "Python3"
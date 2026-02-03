#!/bin/bash
R="\e[31m" # Red
G="\e[32m" # Green
Y="\e[33m" # Yellow
N="\e[0m"  # No Color


if [ "$(id -u)" -ne 0 ]; then    
    echo "Please run as root or use sudo"
    exit 1 # Exit if not root
fi

# Install MySQL

VALIDATE() {
    if [ $1 -ne 0 ]; then
        echo -e "$2 installation $R failed!$N"
        exit 1
    fi
    echo -e "$2 installed $G successfully."
}
dnf list installed mysql
if [ $? -eq 0 ]; then
    echo -e "${Y}MySQL is already installed.... ${Y} Skipping installation.${N}"
else 
    echo "Installing MySQL..."
    dnf install mysql -y
    VALIDATE $? "MySQL"
fi

dnf list installed nginx
if [ $? -eq 0 ]; then
    echo -e "Nginx is already installed....  ${Y} Skipping installation.${N}"
else
    echo "Installing Nginx..."
    dnf install nginx -y
    VALIDATE $? "Nginx"
fi

dnf list installed python3
if [ $? -eq 0 ]; then
    echo -e "Python3 is already installed.... ${Y} Skipping installation.${N}"
else
    echo "Installing Python3..."
    dnf install python3 -y
    VALIDATE $? "Python3"
fi

# usage: ./25-colors-install-server1.sh
# Output:

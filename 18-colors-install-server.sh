#!/bin/bash

# servers installation script
echo -e "\e[1;34mStarting server installations...\e[0m"

R="\e[31m" # Red
G="\e[32m" # Green
Y="\e[33m" # Yellow
N="\e[0m"  # No Color

USERID=$(id -u)
if [ "$USERID" -ne 0 ]; then    
    echo -e "${R}Please run as root or use sudo${N}"
    exit 1 # Exit if not root
fi

# Validation function
VALIDATE() {
    if [ $1 -ne 0 ]; then
        echo -e "${R}$2 installation failed!${N}"
        exit 1
    else    
        echo -e "${G}$2 installed successfully.${N}"
    fi
}

dnf list installed mysql
# Install if it is not found
if [ $? -ne 0 ]; then
    dnf install mysql -y
    VALIDATE $? "MySQL"
else
    echo -e "MySQL already exist ... $Y SKIPPING $N"
fi

dnf list installed nginx
if [ $? -ne 0 ]; then
    dnf install nginx -y
    VALIDATE $? "Nginx"
else
    echo -e "Nginx already exist ... $Y SKIPPING $N"
fi

dnf list installed python3
if [ $? -ne 0 ]; then
    dnf install python3 -y
    VALIDATE $? "python3"
else
    echo -e "Python3 already exist ... $Y SKIPPING $N"
fi

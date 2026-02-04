#!/bin/bash
R="\e[31m" # Red
G="\e[32m" # Green
Y="\e[33m" # Yellow
N="\e[0m"  # No Color

LOGS_DIR="/var/log/install_logs"
SCRIPT_NAME=$(basename "$0")
LOG_FILE="$LOGS_DIR/${SCRIPT_NAME%.*}.log"

mkdir -p "$LOGS_DIR"
echo "Logging installation output to $LOG_FILE"
echo "Script started at $(date)"

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
    echo -e "$2 installed $G successfully.$N"
}

dnf list installed mysql &>> "$LOG_FILE"
if [ $? -eq 0 ]; then
    echo -e "MySQL is already installed.... ${Y} Skipping installation.${N}"
else 
    echo "Installing MySQL..."
    dnf install mysql -y &>> "$LOG_FILE"
    VALIDATE $? "MySQL"
fi

dnf list installed nginx &>> "$LOG_FILE"
if [ $? -eq 0 ]; then
    echo -e "Nginx is already installed....  ${Y} Skipping installation.${N}"
else
    echo "Installing Nginx..."
    dnf install nginx -y &>> "$LOG_FILE"
    VALIDATE $? "Nginx"
fi

dnf list installed python3 &>> "$LOG_FILE"
if [ $? -eq 0 ]; then
    echo -e "Python3 is already installed.... ${Y} Skipping installation.${N}"
else
    echo "Installing Python3..."
    dnf install python3 -y &>> "$LOG_FILE"
    VALIDATE $? "Python3"
fi

# usage: ./26-install-servers-logs.sh
# Output:

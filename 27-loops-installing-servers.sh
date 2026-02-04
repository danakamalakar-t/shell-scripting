#!/bin/bash

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

LOGS_FOLDER="/var/log/shell-script"
SCRIPT_NAME=$( echo $0 | cut -d "." -f1 )
LOG_FILE="$LOGS_FOLDER/$SCRIPT_NAME.log" # /var/log/shell-script/27-loops-installing-servers.log

mkdir -p $LOGS_FOLDER
printf "Script started executed at: %s\n" "$(date)" | tee -a $LOG_FILE

if [ $USERID -ne 0 ]; then
    echo "ERROR:: Please run this script with root privelege"
    exit 1 # failure is other than 0
fi

VALIDATE(){ # functions receive inputs through args just like shell script args
    if [ $1 -ne 0 ]; then
        printf "Installing %s ... %b FAILURE %b\n" "$2" "$R" "$N" | tee -a $LOG_FILE
        exit 1
    else
        printf "Installing %s ... %b SUCCESS %b\n" "$2" "$G" "$N" | tee -a $LOG_FILE
    fi
}   

# $@

for SERVER in $@
do
    dnf list installed $SERVER &>>$LOG_FILE
    # Install if it is not found
    if [ $? -ne 0 ]; then
        dnf install $SERVER -y &>>$LOG_FILE
        VALIDATE $? "$SERVER"
    else
        printf "%s already exist ... %b SKIPPING %b\n" "$SERVER" "$Y" "$N" | tee -a $LOG_FILE
    fi
done

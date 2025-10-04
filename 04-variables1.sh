#!/bin/bash

# Assign command line arguments to variables
PERSON1=$1
PERSON2=$2

echo "$PERSON1::What is your name?"
echo "$PERSON2::My name is $PERSON2. What is your name?"
echo "$PERSON1::My name is $PERSON1. Nice to meet you"
echo "$PERSON2::Nice to meet you too."
# Usage: ./04-variables1.sh santhosh pawan
# Output:
# santhosh::What is your name?
# pawan::My name is pawan. What is your name?
# santhosh::My name is santhosh. Nice to meet you
# pawan::Nice to meet you too. 
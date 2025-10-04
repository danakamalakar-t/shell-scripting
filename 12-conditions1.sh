#!/bin/bash

#Even or Odd number check
if [ $(( $1 % 2 )) -eq 0 ]; then    
    echo "The number $1 is Even"
else
    echo "The number $1 is Odd"
fi
# Usage: ./12-conditions1.sh 4
# Output:
# The number 4 is Even
# Usage: ./12-conditions1.sh 7
# Output:
# The number 7 is Odd
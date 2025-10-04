#!/bin/bash

# If CONDITION 
if [ "$1" -gt 10 ]; then
    echo "The number $1 is greater than 10"
elif [ "$1" -eq 10 ]; then
    echo "The number $1 is equal to 10"
else
    echo "The number $1 is less than 10"
fi
# Usage: ./11-conditions.sh 15
# Output:
# The number 15 is greater than 10
# Usage: ./11-conditions.sh 10
# Output:
# The number 10 is equal to 10
# Usage: ./11-conditions.sh 5
# Output:
# The number 5 is less than 10  
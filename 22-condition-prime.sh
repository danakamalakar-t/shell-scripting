#!/bin/bash

echo "Enter a number:"
read number

# check if the number is prime or not

if [ $number -lt 2 ]; then
    echo "$number is not prime."
else
    is_prime=true
    for ((i=2; i*i<=number; i++)); do
        if [ $(($number % $i)) -eq 0 ]; then
            is_prime=false
            break
        fi
    done

    if [ "$is_prime" = true ]; then
        echo "$number is prime."
    else
        echo "$number is not prime."
    fi
fi
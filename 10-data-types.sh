#!/bin/bash

# Data Types in Bash
# 1. String
NAME="John Doe"
echo "String: $NAME"
# 2. Integer
AGE=30
echo "Integer: $AGE"
# 3. Float (using bc for floating point arithmetic)
PI=$(echo "scale=2; 3.14" | bc)
echo "Float: $PI"
# 4. Array
FRUITS=("Apple" "Banana" "Cherry")
echo "Array: ${FRUITS[@]}"
# 5. Associative Array (declare -A)
declare -A PERSON
PERSON["name"]="Alice"
PERSON["age"]=25
echo "Associative Array: Name=${PERSON[name]}, Age=${PERSON[age]}"
# 6. Boolean (using 0 and 1)
IS_STUDENT=1  # 1 for true, 0 for false
if [ $IS_STUDENT -eq 1 ]; then
    echo "Boolean: IS_STUDENT is true"
else
    echo "Boolean: IS_STUDENT is false"
fi
# 7. Null
UNSET_VAR=
if [ -z "$UNSET_VAR" ]; then
    echo "Null: UNSET_VAR is null or empty"
else
    echo "Null: UNSET_VAR is set"
fi
# Usage: ./10-data-types.sh
# Output:
# String: John Doe
# Integer: 30
# Float: 3.14
# Array: Apple Banana Cherry
# Associative Array: Name=Alice, Age=25
# Boolean: IS_STUDENT is true
# Null: UNSET_VAR is null or empty
# Note: Bash does not have strict data types like other programming languages. All variables are treated as strings by default. The above examples demonstrate how to work with different types of data in Bash scripts.
# --- IGNORE ---
# References:
# - https://tldp.org/LDP/abs/html/variables.html
# - https://www.gnu.org/software/bash/manual/bash.html#Arrays
# - https://www.gnu.org/software/bash/manual/bash.html#Shell-Parameter-Expansion
# - https://www.gnu.org/software/bash/manual/bash.html#Conditional-Constructs
# - https://www.gnu.org/software/bash/manual/bash.html#Shell-Builtin-Commands
# - https://www.gnu.org/software/bash/manual/bash.html#Integer-Arithmetic
# - https://www.gnu.org/software/bash/manual/bash.html#Floating-Point-Arithmetic
# - https://www.gnu.org/software/bash/manual/bash.html#Declaring-Variables
# - https://www.gnu.org/software/bash/manual/bash.html#Special-Parameters
# - https://www.gnu.org/software/bash/manual/bash.html#Parameter-Expansion
# - https://www.gnu.org/software/bash/manual/bash.html#Arrays
# - https://www.gnu.org/software/bash/manual/bash.html#Associative-Arrays
# - https://www.gnu.org/software/bash/manual/bash.html#Conditional-Constructs
# - https://www.gnu.org/software/bash/manual/bash.html#Shell-Builtin-Commands
# - https://www.gnu.org/software/bash/manual/bash.html#Integer-Arithmetic
# - https://www.gnu.org/software/bash/manual/bash.html#Floating-Point-Arithmetic
# - https://www.gnu.org/software/bash/manual/bash.html#Declaring-Variables
# - https://www.gnu.org/software/bash/manual/bash.html#Special-Parameters
# - https://www.gnu.org/software/bash/manual/bash.html#Parameter-Expansion
# - https://www.gnu.org/software/bash/manual/bash.html#Arrays
# - https://www.gnu.org/software/bash/manual/bash.html#Associative-Arrays
# - https://www.gnu.org/software/bash/manual/bash.html#Conditional-Constructs
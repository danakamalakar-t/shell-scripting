#!/bin/bash

#!/bin/bash

echo "----Shell Scripting: Special Variables----"
echo "Script name: $0"
echo "First argument: $1"
echo "Second argument: $2"
echo "All arguments: $*"
echo "Number of arguments: $#"
echo "Home directory: $HOME"
echo "Current user: $USER"
echo "Current shell: $SHELL"
echo "Current working directory: $PWD"
echo "Last argument of previous command: $_"
echo "Args as array: ${@}"
echo "Process ID: $$"
echo "Last command exit status: $?"

# Run a background job to demonstrate $!
sleep 2 &
echo "Background process PID (\$!): $!"

# Run a command to check $?
ls /tmp >/dev/null
echo '$? (Exit Status of Last Command - success):' $?

ls /not_existing_dir >/dev/null 2>&1
echo '$? (Exit Status of Last Command - failure):' $?

echo '$_ (Last Argument of Previous Command):' $_

echo '$- (Current Shell Options):' $-

echo "--------------------------------------"
# Usage: ./0809-spl-variables1.sh cat dog cow
# Output:
# ----Shell Scripting: Special Variables----
# Script name: ./0809-spl-variables1.sh 
# First argument: cat
# Second argument: dog
# All arguments: cat dog cow
# Number of arguments: 3
# Home directory: /home/user
# Current user: user
# Current shell: /bin/bash
# Current working directory: /home/user
# Last argument of previous command: cow
# Args as array: cat dog cow
# Process ID: 12345
# Last command exit status: 0
# Background process PID ($!): 12346
# $? (Exit Status of Last Command - success): 0
# $? (Exit Status of Last Command - failure): 2
# $_ (Last Argument of Previous Command): /not_existing_dir
# $- (Current Shell Options): himBH



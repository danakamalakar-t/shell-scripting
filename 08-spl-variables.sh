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
echo ""Args as array: ${@}"
echo "Process ID: $$"
echo "Last command exit status: $?"

# Run a background job to demonstrate $!
sleep 2
echo "After sleep, last command exit status: $!" 

# Run a command to check $?
ls /tmp >/dev/null
echo "\$? (Exit Status of Last Command - success): $?"

ls /not_existing_dir >/dev/null 2>&1
echo "\$? (Exit Status of Last Command - failure): $?"

echo "\$_ (Last Argument of Previous Command): $_"

echo "\$- (Current Shell Options): $-"

echo "--------------------------------------"

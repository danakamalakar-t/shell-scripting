#!/bin/bash

R="\e[31m" # Red
G="\e[32m" # Green
Y="\e[33m" # Yellow
B="\e[34m" # Blue   
M="\e[35m" # Magenta
C="\e[36m" # Cyan
W="\e[37m" # White  
N="\e[0m"  # No Color
echo -e "${R}This is red text${N}"
echo -e "${G}This is green text${N}"
echo -e "${Y}This is yellow text${N}"
echo -e "${B}This is blue text${N}"
echo -e "${M}This is magenta text${N}"
echo -e "${C}This is cyan text${N}"
echo -e "${W}This is white text${N}"
echo -e "${R}Error: Something went wrong!${N}"
echo -e "${G}Success: Operation completed successfully!${N}"
echo -e "${Y}Warning: Check your input!${N}"
echo -e "${B}Info: This is some information.${N}"
echo -e "${M}Debug: Variable x has value 10.${N}"
echo -e "${C}Note: Remember to save your work.${N}"
echo -e "${W}End of color demonstration.${N}"
# usage: ./17-colors.sh
# Output:
# This is red text
# This is green text
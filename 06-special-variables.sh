#!/bin/bash 


# Special variables gives special properties to your variables 

# Here are few of the special variabes :  $0 to $9 , $? ,  $#,  $* , $@ 

# ROCKET_NAME=Chandrayaan
echo $0                                 # $0 prints the script name you're executing 
echo "Executed Script Name Is : $0"

echo "Name of Recently Launched Rocket In India Is $1"

#  bash scriptName.sh  arg1  arg2  arg3
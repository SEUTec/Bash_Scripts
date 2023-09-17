#!/bin/bash

# Description: exit
# Author: Sebastian Jardi
# Date: 16/09/2023

# Variables

# Procedure
echo
echo Exit Status
echo 0 = Ok
echo 1 = Minor problem
echo 2 = Serius problem
echo 3-255 = Everthing else
echo
echo Run echo '$?' to see previous command exit status
echo Exist Status: $?    # we can put this after any command to see exit status

echo
ls -l /home/sebastian/check
es=$?
#echo Exit Status: $es
if [[ $es = 0 ]]; then
  echo Exit Status: $es: File exist
else
  echo Exit Status: $es: File does not exist
fi

echo
#ls -l /home/sebastian/routines.sh
ls -l ~/routines.sh
es=$?
#echo Exit Status: $es
if [[ $es = 0 ]]; then
  echo Exit Status: $es: File exist
else
  echo Exit Status: $es: File does not exist
fi

# End Notification
echo
echo Done
echo

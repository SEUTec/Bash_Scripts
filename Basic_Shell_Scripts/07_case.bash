#!/bin/bash

# Description: Case
# Author: Sebastian Jardi
# Date: 16/09/2023

# Variables


# Procedure
echo
echo Case
echo
echo Please, choose one of the options below
echo
echo 'dt = display Data and Time.'
echo 'fd = list File and Directories.'
echo 'lg = user LoGged in.'
echo 'ut = check system UpTime.'
echo
read choice
case $choice in
  dt) date;;
  fd) ls;;
  lg) who;;
  ut) uptime;;
  *) echo Invalid choice.
esac  # Opposite of case

# End Notification
echo
echo Done

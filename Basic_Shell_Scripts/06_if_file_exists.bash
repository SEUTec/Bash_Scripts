#!/bin/bash

# Description: if ... then ... else ... if
# Author: Sebastian Jardi
# Date: 15/09/2023
# Modified: 15/9/2023

# Variables
#count=20    # no required if you use read after

# Procedure
echo
echo if file exists

echo
echo Enter a file name to search:
read file_name

# -e to check if a file exists
#if [ -e /home/sebastian/routines.sh ]
if [ -e ./$file_name ]
then
  echo File $file_name exists.
else
  echo File $file_name do NOT exists.
fi

echo
echo Done

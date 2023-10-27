#!/bin/bash

# Description: if ... then ...
# Author: Sebastian Jardi
# Date: 23/10/2023
# Modified: 23/10/2023

# Procedure
echo
echo if .. then .. else ... fi

ref="ref"

echo
echo Enter a String:
read string

if [ "$string" = ref ]  # Do not put then here
then
  echo Match
else
  echo Do not Match
fi     # end of if, opposite to if

echo
echo Done

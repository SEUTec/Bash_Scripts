#!/bin/bash

# Description: if ... then ...
# Author: Sebastian Jardi
# Date: 15/09/2023
# Modified: 15/9/2023

# Variables
#count=20    # no required if you use read after

# Procedure
echo
echo if .. then .. else ... fi

echo
echo Enter a number:
read count

if [ $count -eq 100 ]  # Do not put then here
then
  echo Count is 100
else
  echo Count is not 100
fi     # end of if, opposite to if

echo
echo Done

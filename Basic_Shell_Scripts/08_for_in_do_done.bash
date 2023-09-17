#!/bin/bash

# Description: for ... in ... do ... done
# Author: Sebastian Jardi
# Date: 16/09/2023

# Variables

# Procedure
echo
echo For ... in ... do ... done

echo
echo List
echo
i=1
for day in Sun Mon Tue Wed Thu Fry Sat
do
  echo Day $((i++)): $day
done

echo
echo Range
echo
for i in {1..5}
do
  echo "i: $i"
done

echo
echo Users
echo
i=1
for username in `awk -F: ' {print $1} ' /etc/passwd`
do
  echo "Username $((i++)): $username"
done

# End Notification
echo
echo Done

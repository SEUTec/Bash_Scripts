#!/bin/bash

# Description: do ... while
# Author: Sebastian Jardi
# Date: 15/09/2023

# Variables
count=0
num_secs=10

# Procedure
echo
echo do .. while
echo

#while [[ $num_secs -gt -1 ]]; do    # lt = less than, gt = greater than
while [[ $num_secs > -1 ]]; do    # < = lt, > = gt
  echo $num_secs seconds left to stop this process $1, count: $count
  sleep 1
  num_secs=`expr $num_secs - 1`
  count=`expr $count + 1`
done

echo
c=1
while [[ $c -le 5 ]]; do
  echo "Welcome $c times"
  ((c++))
done

# End Notification
echo
echo $1 Done!   # $1 es le primer parametre que passam al script
echo

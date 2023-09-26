#!/bin/bash

# Description: For Loops
# Author: Sebastian Jardi
# Date: 15/09/2023

# Variables


# Procedure
echo
echo For Loops, For ... in ... do ... done

echo
echo Lista archivos \*\.txt en una linea
echo *.txt

echo
echo Lista archivos con For loop
count=0
for filename in *.txt
do
  echo $filename
  count=`expr $count + 1`
done
echo $count files

# list o ffile names
FILES="/etc/passwd
/etc/group
/etc/shadow
/etc/nsswitch.conf
/etc/sshd_ssh_config
/etc/ssh/sshd_config
/etc/ssh/ssh_config
/etc/fake"

echo
for file in $FILES
do
  #echo Search for: $file
  # -f for file exists and if it is a regular file.
  # -d for file exists as a directory.
  # -e for existence of the file only.
  # ! -f file not exists
  if [[ ! -e $file ]]; then
    echo $file Not exist.
  else
    echo $file Exists
  fi
done

# End Notification
echo
echo Done
echo

#!/bin/bash

# Description: Check Disk Space
# Author: Sebastian Jardi
# Date: 15/09/2023

# Variables
echo
echo Check Disk Space

# df - report file system space usage
# df -h    # --human-readable iqual to df
# df -k    # Porcentaje useo unidades
# df -k .  # Porcentaje uso unidad actual

# du       # estimate file space usage
df -h | awk '0+$5 >= 10 {print}'

# End Notification
echo
echo Done
echo

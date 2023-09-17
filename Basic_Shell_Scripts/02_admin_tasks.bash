#!/bin/bash

# Description: Administration Tasks
# Author: Sebastian Jardi
# Date: 15/09/2023
# Modified: 15/9/2023

echo
echo Running Administration Tasks

echo
echo top, push q for quit, and run the other commands.
top | head -10     # Only shows firsts 10 lines, for limited period of time

echo
echo Date
date

echo
echo Uptime
uptime

echo
echo df -h
df -h

echo
echo free -m
free -m

# can require the install package sysstat
echo
echo iostat
iostat

echo
echo Done

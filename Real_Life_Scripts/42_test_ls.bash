#!/bin/bash

# Description: For Loops
# Author: Sebastian Jardi
# Date: 15/09/2023

num=`ls -l *.txt | wc -l`
echo $num

tipo=txt
num=`ls -l *.$tipo | wc -l`
echo $num

nombre=4
num=`ls -l $nombre*.$tipo | wc -l`
echo $num

# This do not work fine
#num=`ls -l $nombre\*.$tipo | wc -l`
#echo $num

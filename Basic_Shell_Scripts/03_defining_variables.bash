#!/bin/bash

# Description: Defining Variables
# Author: Sebastian Jardi
# Date: 16/09/2023
# Modified: 16/9/2023

# Variables, without white spaces before and after =
path=pwd
quien=whoami
lista=ls
fecha=date
calendario='cal 2023'

# Process
echo
echo Defining Variables

echo
echo path, pwd
$path

echo
echo quien, whoami
$quien

echo
echo lista, ls
$lista

echo
echo fecha, date
$fecha

echo
echo calendario, cal
$calendario

echo
echo Done

#!/bin/bash

# Description: Input / Output
# Author: Sebastian Jardi
# Date: 16/09/2023
# Modified: 16/9/2023

# Variables, without white spaces before and after =
# Lectura d'una variable del sistema
# Executar una comanda del sistema
host=`hostname`   # Esta comilla simple es un accent obert, sense vocal.
                  # Per escriurel, accent obet i espai

# Process
echo
echo Input / Output $host

echo
echo What is your name ?
read input_name        # Read user input and save in variable name
echo
echo What is your profession ?
read prof        # Read user input and save in variable name

echo
echo Helo $input_name $prof

echo
echo Done

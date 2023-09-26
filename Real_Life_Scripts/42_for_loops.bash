#!/bin/bash

# Description: For Loops
# Author: Sebastian Jardi
# Date: 15/09/2023

# Variables


# Procedure
echo
echo For Loops, For ... in ... do ... done

echo
echo For Loop in Range
for i in {1..10}; do
  echo i: $i
done

echo
echo For loop in range, another format
for (( i = 0; i < 10; i++ )); do
  echo i: $i
done


echo
echo For loop to create numbered files
for i in {1..5}; do
  touch file$i.txt
done

echo
echo For loop to create cutom numbered files
echo Cuantos ficheros quiere ?
read numero
echo Nombre de los ficheros ?
read nombre
echo Tipo de fichero ?
read tipo
#for i in {1..$numero}; do  # .. sólo funciona con números, no can variables
for i in $(seq 1 $numero); do
  #touch $nombre$i.$tipo    # no podemos utilizar el caracter _ directamente
  touch $nombre\_$i.$tipo    # tndremos que usar \_
done

echo
echo Total number Created Files. Not works fine.
echo Search file name: $nombre\*\.$tipo
echo $nombre*.$tipo    # muestra lista de archivos creados
echo $nombre*.$tipo | wc -l  # cuanta 1 linea, no el numero de archivos
#`ls -l $nombre*.$tipo`
num=`ls -l $nombre*.$tipo | wc -l`
echo $num


# End Notification
echo
echo Done
echo

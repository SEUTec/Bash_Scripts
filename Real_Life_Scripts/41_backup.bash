#!/bin/bash

# Description: Make a Backup of your files
# Author: Sebastian Jardi
# Date: 17/09/2023

echo
echo Backup Files and SubDirectories

# tar --help
# c = create, v=verbose, f=file = especificar achivos o directoriosls
# comprimir un directorio, donde folder en el nombre de un subdirectorio
# desde la posición donde estamos
# tar -cvf folder.tar folder
#
# comprimir los archivos del directorio actual, sin subdirectorios
# tar -cvf archivo.tar *.*
#
# comprimir los archivos del directorio actual, con subdirectorios
# * para todos los directorios, *.* para todos los archivos
# tar -cvf archivo.tar * *.*
#
# gzip -h for help
# gzip file_name    # convert an existing file with a compressed version file_name.gz
# used to conver *.tar compressed files in *.tar.gz more compressed files
#gzip -k file_name    # -k, for not deleting original file
#gzip -r file_name    # -r, recursively, includes subdirectories
#gzip -d compressed_file  # -d decompress a compressed file
#
# If file exists ask for overwrite.


#pwd            # Present Working Directory
#basename pwd   # nombre del directorio actual sin path
dir=${PWD##*/}  # nombre del directorio actual sin path
echo Nombre Directorio Actual: $dir
echo
echo Running tar
echo
tar -cvf $dir.tar * *.*   # Comprimer Archivos y Subsirectorios del dir actual
echo
if [[ $? = 0 ]]; then
  echo *.tar File Created.
  echo
  echo Running Gzip over created $dir.tar file.
  gzip $dir.tar
  if [[ $? = 0 ]]; then
    echo $dir.tar.gz File Created.
  else
    echo *.gz File Creation Failed.
  fi
else
  echo *.tar File Creation Failed.
fi
echo Backup done

: 'echo
echo Delete old backups
# busca copias backups antiguos de mas de un día -1
# type f = file
# print to the screen
# &> /dev/null no visible
find *.tar.gz --mtime -1 -type f --print
#find *.tar.gz --mtime -1 -type f --print &> /dev/null
'

# End Notification
echo
echo Done
echo

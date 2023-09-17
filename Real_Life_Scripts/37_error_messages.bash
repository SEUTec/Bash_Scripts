#!/bin/bash

# Description: Pull only Error Messages from /var/log/messages
# Author: Sebastian Jardi
# Date: 15/09/2023

# Variables


# Procedure
echo
echo Error messages in CentOS/var/log/messages file
echo

# En este script utilizaremos el fichero messages, obtenido
# de una máquina virtual con CentOS, /var/log/messages
# I obtendremos sólo la información que necesitamos,
# las íneas que contienen la palabra error
#grep -i error ./messages

# warning messages
#grep -i warning ./messages

# new line counts
#grep -i warning ./messages | wc -l

# messages from an specific day
grep -i "Sep 17" ./messages

# save the sata to another file
#grep -i "Sep 17" ./messages > warnings

# End Notification
echo
echo Done
echo

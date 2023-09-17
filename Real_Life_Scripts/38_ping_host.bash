#!/bin/bash

# Description: Pull only Error Messages from /var/log/messages
# Author: Sebastian Jardi
# Date: 15/09/2023

# Variables
#host_ip=192.168.0.1
host_ip=192.168.0.4
#list="1 2 3 4"         # define a list between "", white space separated
host_ips="192.168.0.1 192.168.0.2 192.168.0.105 192.168.0.106"
hl_file=./hosts_list   # host_list file name with one op per line

: '
echo
#echo Ping to $host_ip
ping -c1 $host_ip
#ping -c1 $host_ip &> /dev/null    # Do not shot the output
if [[ $? = 0 ]]; then
  echo $host_ip is On Line.
else
  echo $host_ip Do Not reply.
fi
'
: '
# Multiple Hosts from a host_ips
echo
#echo list: $list
#echo host_ips: $host_ips
#for ip in 1 2 3 4
#for ip in $list
for ip in $host_ips
do
  #echo ip: $ip
  ping -c1 $ip &> /dev/null
  if [[ $? = 0 ]]; then
    echo $ip is On Line.
  else
    echo $ip Do Not reply.
  fi
done
'

# Multiple Hosts from a file
echo
for ip in $(cat $hl_file)
do
  #echo ip: $ip
  ping -c1 $ip &> /dev/null
  if [[ $? = 0 ]]; then
    echo $ip is On Line.
  else
    echo $ip Do Not reply.
  fi
done

echo
echo Done

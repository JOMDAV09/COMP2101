#!/bin/bash

echo hostname: $( hostname )
echo domain name: $( hostname -d )
echo operating system name and version: $( cat /etc/os-release | grep PRETTY ) 
echo Ip address :;
ifconfig 2>stderr | grep flag | awk '{ print $1 }' | while read result ; do echo $result  $( ifconfig | grep -A4 $result | grep inet | sed s/"inet"// ) /n ; done 2>stderr 
echo root filesystem status: ;
df -h /

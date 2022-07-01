#!/bin/bash

echo hostname: $( hostname )
# displys the hostname of the computer
echo domain name: $( hostname -d )
# displays the domain name of the computer if having 
echo operating system name and version: $( cat /etc/os-release | grep PRETTY )
# displays the pretty operating system  
echo Ip address :;
ifconfig 2>stderr | grep flag | awk '{ print $1 }' | while read result ; do echo $result  $( ifconfig | grep -A4 $result | grep inet | sed s/"inet"// ) /n ; done 2>stderr
# displays the ipv4 and ipv6 address of the device 
echo root filesystem status: ;
df -h /
# displays the root system file status of the device

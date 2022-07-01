#!/bin/bash

# SYSTEM INFORMATION

jhn=$(hostname)
# jhn stores the hostname of the device

jop=$(lsb_release -d -s)
jup=$(uname -r)
# jop and jup stores the operating system of the device

jip=$(ip a s ens33 | grep -w inet | awk '{print $2}')
# jip stores the ip address of the device 

jrfs=$(du -sh)
# jrfs stores the root free space


cat <<EOF
Report for $jhn

============================================================


FQDN: $jop

Operating System name and version: $jop $juo

IP Address: $jip

Root Filesystem Free Space: $jrfs


===========================================================
EOF

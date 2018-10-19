#!/bin/bash
internalip=$1
sudo nmap -sn $1/24 | grep -v 'Host' | tail -n +2 | tr "\n" " " | sed -e "s/MAC Address: //g" | sed -E $'s/Nmap scan report for /\\\n/g'

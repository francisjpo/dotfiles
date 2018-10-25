#!/bin/bash
for NUMBER in $(seq 0 5); do
    ip=`ipconfig getifaddr en$NUMBER`
    if [ -n "$ip" ]; then
        myip="$ip"
        break
    fi
done
sudo nmap -sn $myip/24 | grep -v 'Host' | tail -n +2 | tr "\n" " " | sed -e "s/MAC Address: //g" | sed -E $'s/Nmap scan report for /\\\n/g'

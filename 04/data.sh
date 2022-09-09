#!/bin/bash

host_name=$(hostname)

area=$(ls -lh /etc/localtime | awk -F'[/]' '{print $7}')
city=$(ls -lh /etc/localtime | awk -F'[/]' '{print $8}')
date=$(date +"%Z")
time_zone=$area"/"$city" UTC "$date

user=$(whoami)

OS=$(lsb_release -d -s)

data=$(date +"%d %B %Y %T")

uptime=$(uptime –p | awk '{print $2" "$3" "$4}')
uptime_sec=$(cat /proc/uptime | awk '{print $1" ""seconds"}')

ip=$(hostname -I | awk '{print $1}')
mask=$(ipcalc $ip | grep "Netmask: " | awk '{print $2}')
gateway=$(ip route | grep default | awk '{print $3}')

ram_total=$(free | grep "Mem" | awk '{printf "%.3f Gb", $2/1024/1024}')
ram_used=$(free | grep "Mem" | awk '{printf "%.3f Gb", $3/1024/1024}')
ram_free=$(free | grep "Mem" | awk '{printf "%.3f Gb", $4/1024/1024}')

space_root=$(df --o=size /root | grep -v '1K' | awk '{printf "%.2f Mb", $1/1024}')
space_root_used=$(df --o=used /root | grep -v 'Used' | awk '{printf "%.2f Mb", $1/1024}')
space_root_free=$(df --o=avail /root | grep -v 'Avail' | awk '{printf "%.2f Mb", $1/1024}')

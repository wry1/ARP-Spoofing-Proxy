#!/bin/sh

#ARP Spoofing Proxy
#Contributors: James, ChatGPT

interface=""
sender_mac=""

sudo ip link set "$interface" down
sudo macchanger --mac="$sender_mac" "$interface"
sudo ip link set "$interface" up
sleep 30

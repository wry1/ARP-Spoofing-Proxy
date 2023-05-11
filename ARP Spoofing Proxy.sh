#!/bin/sh

#ARP Spoofing Proxy
#Contributors: Wry, ChatGPT

script_dir="$(dirname "$(readlink -f "$0")")"


cd "$script_dir"
bash "./.Modules/.Mac Changer.sh"
bash "./.Modules/.ARP Adder.sh"
python "./.Modules/.ARP Sender.py"

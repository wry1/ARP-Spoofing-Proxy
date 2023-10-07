#!/bin/sh

#ARP Spoofing Proxy
#Contributors: James, ChatGPT

interface=""
router_ip=""
router_mac=""

sudo ip neigh add "$router_ip" lladdr "$router_mac" nud permanent dev "$interface"

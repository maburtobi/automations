#!/bin/bash
#This will add su command for checking iptable firewall rules


echo -e "START\n"
echo "--------------------------------------"
echo "Updating repository"
sudo apt update


echo "--------------------------------------"
echo "Installing required packages"
sudo apt install -y iptables iptables-persistent


echo "--------------------------------------"
echo "Installing command shortcut"
cd
wget https://raw.githubusercontent.com/maburtobi/automations/main/iptables-shortcut/{ip6t,ip6tnum,ip6tsave,ipt,iptnum,iptsave}.bash
sudo bash ip6t.bash
sudo bash ip6tnum.bash
sudo bash ip6tsave.bash
sudo bash ipt.bash
sudo bash iptnum.bash
sudo bash iptsave.bash
rm {ip6t,ip6tnum,ip6tsave,ipt,iptnum,iptsave}.bash


echo "--------------------------------------"
echo "Make these accessible"
cd /usr/local/sbin
sudo chmod 750 ip6t ip6tnum ip6tsave ipt iptnum iptsave
cd


echo -e "---------------------------------\n\
Iptables viewer command's setup has been successfully installed.\n\
You may try the command such as\n\
- sudo iptnum\n\
- sudo ipt-full"

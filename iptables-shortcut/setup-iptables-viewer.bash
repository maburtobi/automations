#!/bin/bash
#This will add su command for checking iptable firewall rules

#IPv6 iptables
echo -e "\
echo 'FILTER'\n\
ip6tables -vL --line-numbers\n\
echo '-----------------------------------------'\n\
echo 'NAT'\n\
ip6tables -vL -t nat --line-numbers\n\
echo '-----------------------------------------'\n\
echo 'MANGLE'\n\
ip6tables -vL -t mangle --line-numbers\n\
echo '-----------------------------------------'\n\
echo 'RAW'\n\
ip6tables -vL -t raw --line-numbers\n\
echo '-----------------------------------------'\n\
echo 'SECURITY'\n\
ip6tables -vL -t security --line-numbers"\
| sudo tee /usr/local/sbin/ip6t-full

echo -e "ip6tables -vL -n -t filter --line-numbers"\
| sudo tee /usr/local/ip6t-num

echo -e "if [ -d "/etc/iptables" ]; then\n\
  ip6tables-save > /etc/iptables/rules.v6\n\
 else\n\
  echo 'Failed to save, Dir not exist'\n\
  exit 1\n\
fi"\
| sudo tee /usr/local/sbin/ip6t-save


#Ipv4 iptables
echo -e "\
echo 'FILTER'\n\
iptables -vL --line-numbers\n\
echo '-----------------------------------------'\n\
echo 'NAT'\n\
iptables -vL -t nat --line-numbers\n\
echo '-----------------------------------------'\n\
echo 'MANGLE'\n\
iptables -vL -t mangle --line-numbers\n\
echo '-----------------------------------------'\n\
echo 'RAW'\n\
iptables -vL -t raw --line-numbers\n\
echo '-----------------------------------------'\n\
echo 'SECURITY'\n\
iptables -vL -t security --line-numbers"\
| sudo tee /usr/local/sbin/ipt-full

echo -e "\
iptables -vL -n -t filter --line-numbers"\
| sudo tee /usr/local/sbin/ipt-num

echo -e "\
if [ -d "/etc/iptables" ]; then\n\
  iptables-save > /etc/iptables/rules.v4\n\
 else\n\
  echo 'Failed to save, Dir not exist'\n\
  exit 1\n\
fi"\
| sudo tee /usr/local/sbin/ipt-save

cd /usr/local/sbin
sudo chmod 750 ip6t-full ip6t-save ipt-full ipt-num ipt-save
cd

echo -e "---------------------------------\n\
Iptables viewer command's setup has been successfully installed.\n\
You may try the command such as\n\
- sudo ipt-num\n\
- sudo ipt-full"

#!/bin/bash

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
| sudo tee /usr/local/sbin/ipt > /dev/null

#!/bin/bash

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
| sudo tee /usr/local/sbin/ip6t > /dev/null

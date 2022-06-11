#!/bin/bash

echo -e "\
iptables -vL -n -t filter --line-numbers"\
| sudo tee /usr/local/sbin/iptnum > /dev/null

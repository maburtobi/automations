#!/bin/bash

echo -e "\
if [ -d "/etc/iptables" ]; then\n\
  iptables-save > /etc/iptables/rules.v4\n\
 else\n\
  echo 'Failed to save, Dir not exist'\n\
  echo 'Please install iptables-persistent to solve this'\n\
  exit 1\n\
fi"\
| sudo tee /usr/local/sbin/iptsave > /dev/null

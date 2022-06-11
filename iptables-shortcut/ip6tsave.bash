#!/bin/bash

echo -e "if [ -d "/etc/iptables" ]; then\n\
  ip6tables-save > /etc/iptables/rules.v6\n\
 else\n\
  mkdir /etc/iptables\n\
  echo 'Failed to save, Dir not exist. Please try again to save the rules'\n\
  exit 1\n\
fi"\
| sudo tee /usr/local/sbin/ip6tsave > /dev/null

#!/bin/bash

echo -e "ip6tables -vL -n -t filter --line-numbers"\
| sudo tee /usr/local/sbin/ip6tnum

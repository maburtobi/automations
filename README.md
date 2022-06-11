# automations
This repo intended to help shorten required time for operator by storing automations command

<b>Install docker on Debian</b>
<pre>
curl -fsSL https://raw.githubusercontent.com/maburtobi/automations/main/install-docker-debian.sh -o install-docker-debian.sh &&\
sh install-docker-debian.sh
</pre>
<br>

<b>Install iptables shortcut command</b>
<pre>
wget https://raw.githubusercontent.com/maburtobi/automations/main/iptables-shortcut/setup-iptables-viewer.bash \
&& bash setup-iptables-viewer.bash
</pre>

Command lists (run as Admin):
* iptsave --> Make iptbles ipv4 to be persistent
* ip6tsave --> Make iptbles ipv6 to be persistent
* ipt --> Show full rules of ipv4. Numbered and separated by line.
* ip6t --> Show full rules of ipv6. Numbered and separated by line.

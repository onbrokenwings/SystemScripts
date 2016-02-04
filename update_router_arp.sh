#!/bin/sh
# Script to execute ARP command on router Jazztel Comtrend HG536+
# TODO: Still confirm command is applied

host='192.168.1.1'
user='admin'
pass='23AdminR00'
cmd='arp add 192.168.1.100 00:22:15:CA:10:A8'

( echo ${user}
sleep 3
echo ${pass}
sleep 3
echo -e ${cmd} '\n'
sleep 1
echo -e '\n'
sleep 3
logger -s 'Update on ARP Table to Gateway Router' ${host}
 ) | telnet ${host}

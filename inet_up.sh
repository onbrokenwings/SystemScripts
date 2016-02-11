#!/bin/sh

host1='google.com'
host2='wikipedia.org'
curr_date=`date +"%Y-%m-%d %H:%M"`

echo -n "Internet at ${curr_date} is "
((ping -w5 -c3 $host1 || ping -w5 -c3 $host2) > /dev/null 2>&1) && 
echo "UP." || (echo "DOWN." && exit 1)

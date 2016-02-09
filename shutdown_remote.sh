#!/bin/sh
# Script to shutdown remote machine

host='192.168.1.100'
#site='http://$host:8000/?action=System.Shutdown'
site='http://$host:8000/?action=Shell.ExecutePredefined&command=Open%20calculator'

content = $(wget -q --spider $site)

if [[ "$content" =~ "wget: not an http or ftp url" ]]
then
	#logger -s 'Shutdown request was incorrect.'
	echo 'Shutdown request was incorrect.'
else
	#logger -s 'Shutdown to remote host was executed: ' ${host}
	echo 'Shutdown to remote host was executed: ' ${host}
fi

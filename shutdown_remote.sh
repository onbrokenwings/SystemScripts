#!/bin/sh
# Script to shutdown remote machine

#site='http://$host:8000/?action=System.Shutdown'
site='http://192.168.1.100:8000/?action=Shell.ExecutePredefined&command=Open%20calculator'
reqstr='wget: not an http or ftp url'

content = $(wget -q --spider $site)

if [ -z "${content##*$reqstr*}" ] ;then
	#logger -s 'Shutdown request was incorrect.'
	echo 'Shutdown request was incorrect.'
else
	#logger -s 'Shutdown to remote host was executed: ' ${host}
	echo 'Shutdown to remote host was executed: ' ${host}
fi

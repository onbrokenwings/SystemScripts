
#!/bin/sh
# Script to shutdown remote machine

host='192.168.1.100'
site='http://'$host':8000/?action=System.Shutdown'

ERROR=$(wget -q --spider $site 2>&1)

if [ "$ERROR" = "" ]
then
	logger -s 'Shutdown to remote host was executed:' ${host}
else
        logger -s 'Shutdown request was incorrect:' $ERROR
fi

#!/bin/sh

echo 'Running shutdown.sh'

ps -ef | grep "com.agifac.appid=@com.agifac.maf.packaging.maf-desktop.appid@ " | grep -v grep | awk '{print $2}' | xargs kill

PIDFILE="../server/maf-desktop-app-dist/RUNNING_PID"
if [ -e "$PIDFILE" ]
then
	rm -rf $PIDFILE
fi

echo 'sleep 10 seconds'
sleep 10


echo 'Done shutdown.sh'


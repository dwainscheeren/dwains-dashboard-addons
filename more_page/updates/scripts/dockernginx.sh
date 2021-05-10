#!/bin/sh

## This is an example script for running the watchtower command on a docker based system not running on your homeassistant system
## Change USER to your user accounts, HOST to the host running the container and KEYFILE to your private key for automated ssh login

file=/homeassistant/scripts/updates/nginxupdate.txt
$USER=username
$HOST=hostrunningcontainer
$KEYFILE=keyfile
CONTAINERNAME=nameofcontainer

version=`ssh -i $KEYFILE $USER@$HOST "sudo /usr/local/bin/docker run --rm -v /var/run/docker.sock:/var/run/docker.sock containrrr/watchtower --run-once --monitor-only --no-startup-message $CONTAINERNAME  2>&1| awk -F \"msg=\\\\\"\" '{ print $2 }' | awk -F \" \" '{ print $1 " " $2 }'"`

if [ "$version" = "Found new" ]
then
	echo "Aan" > $file
else
	echo "Uit" > $file
fi



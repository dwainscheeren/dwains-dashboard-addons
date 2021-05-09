#!/bin/sh

## Watchtower is used to determine the update status of containers
## This script executes in cron on my PI because i run homeassistant in a docker.
## The version command writes the output to file. This file can be read in via a file sensor in homeassistant. 
## Make sure you add the directory where that file is in to the allowlist_external_dirs in your home assistant configuration
## This example checks the bitwarden container but you can adjust to your own need

file=/homeassistant/scripts/updates/bitwardenupdate.txt

version=`docker run --rm -v /var/run/docker.sock:/var/run/docker.sock containrrr/watchtower --run-once --monitor-only --no-startup-message bitwarden 2>&1| awk -F "msg=\"" '{ print $2 }' | awk -F " " '{ print $1 " " $2 }'`

if [ "$version" = "Found new" ]
then
	echo "Aan" > $file
else
	echo "Uit" > $file
fi



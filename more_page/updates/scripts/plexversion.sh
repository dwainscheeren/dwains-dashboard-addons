#!/bin/sh

## Change YOUR_PLEX_TOKEN to your Plex Token, to find your plex token please read:
## https://support.plex.tv/articles/204059436-finding-an-authentication-token-x-plex-token/

latest=`curl  -s  https://plex.tv/pms/downloads/5.json | cut -d"," -f4 | cut -d"\"" -f4`
used=`curl -s https://plex.tv/pms/servers.xml?X-Plex-Token=YOUR_PLEX_TOKEN |  cut -d'=' -f6 | cut -d'"' -f2 | grep -v Media`

#echo $latest
#echo $used

if [ $latest = $used ]
then
	echo "Uit"
else
	echo "Aan"
fi



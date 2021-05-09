#!/bin/sh

## Change SONARR_IP to the ip of your sonarr server and API_KEY to your API_KEY

latest=`curl -s http://SONARR_IP:8989/api/update?apikey=API_KEY | grep version | head -n1 |cut -d"\"" -f4`
used=`curl -s http://SONARR_IP:8989/api/system/status?apikey=API_KEY  | grep version | cut -d"\"" -f4`

#echo $latest
#echo $used

if [ $latest = $used ]
then
	echo "Uit"
else
	echo "Aan"
fi



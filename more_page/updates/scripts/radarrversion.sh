#!/bin/sh

## Change RADARR_IP to the ip of your radarr server and API_KEY to your API_KEY

latest=`curl -s http://RADARR_IP:8310/api/update?apikey=API_KEY | grep version | head -n1 |cut -d"\"" -f4`
used=`curl -s http://RADARR_IP:8310/api/system/status?apikey=API_KEY  | grep version | cut -d"\"" -f4`

#echo $latest
#echo $used

if [ $latest = $used ]
then
	echo "Uit"
else
	echo "Aan"
fi



#!/bin/sh

latest=`/usr/bin/curl -s https://github.com/arendst/Tasmota/releases/latest | cut -d'"' -f2 | rev | cut -d'/' -f1 | rev | cut -d'v' -f2`
used=`/usr/bin/curl --silent http://$IPADDRESSofLamp/in | cut -d'}' -f6 | cut -d'2' -f2 | cut -d'(' -f1`

if [ $latest = $used ]
then
	echo "Uit"
else
	echo "Aan"
fi



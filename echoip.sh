#!/bin/bash
## doesn't control for connectivity

ip=`curl -s https://api.ipify.orgcurl --silent --range 0-15 --max-time 15 https://api.ipify.org`
ret=$?
if [ $ret -ne 0 ]; then
	echo "# curl error $ret #" 
else
	if [ `echo $ip | grep -E "^([0-9]{1,3}.){3}[0-9]{1,3}$"` ]; then
		echo $ip
	else
		echo "# taken prisoner #"
	fi
fi

#!/bin/bash
i=1
while true ; do
	(sleep $((5+$RANDOM/2000)) && pkill webrtc_client) &
	./webrtc_client.py --fake -t butterbrot.org -p 8081
	echo Restarting, please wait \(round $i\)...
	sleep 5
	i=$(($i+1))
done
#!/bin/sh
# "ping" port 15000 every 5 seconds
# we do not expect a response back from this ping
while true;
do
	curl -H "Content-Type: text/plain" -d "Hello" -X POST display-node:15000;
	sleep 5;
done

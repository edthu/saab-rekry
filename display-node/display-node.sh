#!/bin/sh
# we log everything the netcat server outputs
while true;
do
	nc -l -p 15000
done
# TODO: log to file and mount that as a volume for this container

#!/bin/sh
# we log everything the netcat server outputs
while true;
do
	nc -l -p 15000
done

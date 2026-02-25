#!/bin/bash
# we log everything the netcat server outputs
nc -l localhost 15000 > pings.log
# TODO: log to file and mount that as a volume for this container

#!/bin/bash

# if this is empty then we do nothing

SENSOR_NODE_ID=$(docker compose ps --format 'json' sensor-node | jq -r '.ID')
SENSOR_RUNNING=$(docker inspect -f '{{.State.Running}}' "$SENSOR_NODE_ID")
if [ "$SENSOR_RUNNING" != true ]; then
	echo 'Sensor node not running'
else
	echo 'Sensor node is running'
	DATE=$(date +%D\ %H:%M:%S\ -)
	IP=$(docker inspect "$SENSOR_NODE_ID" | jq -r '.[].NetworkSettings.Networks.[].IPAddress')
	echo "${DATE} Sensor node IP: ${IP}" >> log.txt
	echo 'Logged sensor-node ip to a log-file'
fi



DISPLAY_NODE_ID=$(docker compose ps --format 'json' display-node | jq -r '.ID')
DISPLAY_RUNNING=$(docker inspect -f '{{.State.Running}}' "$DISPLAY_NODE_ID")
if [ "$DISPLAY_RUNNING" != "true" ]; then
	echo 'Display node not running'
else
	echo 'Display node is running'
fi

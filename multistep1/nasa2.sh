#!/bin/bash

spath=$(realpath $0)

echo "Executing $spath"


checker=$(curl -s https://api.nasa.gov/planetary/apod?api_key=DEMO_KEY | jq ".service_version")

if [ "$checker" == "\"v1\"" ]
then 
	echo "$spath: SUCCESS"
	exit 0
else 
	echo "$spath: ERROR!"
	exit 1
fi



#!/bin/bash

echo "Executing $0"

checker=$(curl -s https://swapi.co/api/people/1/ | jq ".name")

if [ "$checker" == "\"Luke Skywalker\"" ]
then 
	echo "$0: SUCCESS"
	exit 0
else 
	echo "$0: ERROR!"
	exit 1
fi


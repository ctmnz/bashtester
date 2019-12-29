#!/bin/bash

echo "Executing $0"


if [ $(curl -s https://swapi.co/api/people/1/ | jq ".height") == \"172\" ]
then 
	echo "$0: SUCCESS"
	exit 0
else 
	echo "$0: ERROR!"
	exit 1
fi


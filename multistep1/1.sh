#!/bin/bash

spath=$(realpath $0)

echo "Executing $spath"


if [ $(curl -s https://swapi.co/api/people/1/ | jq ".height") == \"172\" ]
then 
	echo "$spath: SUCCESS"
	exit 0
else 
	echo "$spath: ERROR!"
	exit 1
fi


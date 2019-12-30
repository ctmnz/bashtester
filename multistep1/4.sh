#!/bin/bash

spath=$(realpath $0)

echo "Executing $spath"


checker=$(curl -s https://swapi.co/api/people/1/ | jq ".name")

if [ "$checker" == "\"Luke Skywalker\"" ]
then 
	echo "$spath: SUCCESS"
	exit 0
else 
	echo "$spath: ERROR!"
	exit 1
fi



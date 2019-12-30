#!/bin/bash

echo "Executing $0"

checker=$(curl -s https://swapi.co/api/people/1/ | jq ".name")

if [ "$checker" == "\"Johnny Walker\"" ]
then 
	echo "$0: SUCCESS"
	exit 0
else 
	echo "$0: ERROR!"
	exit 1
fi


#!/bin/bash

spath=$(realpath $0)

echo "Executing $spath"


checker=$(curl -s https://swapi.co/api/people/1/ | jq ".name")

if [ "$checker" == "\"Johnny Walker\"" ]
then 
	echo "$spath: SUCCESS"
	exit 0
else 
	echo "$spath: ERROR!"
	exit 1
fi





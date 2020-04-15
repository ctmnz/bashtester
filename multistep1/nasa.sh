#!/bin/bash



spath=$(realpath $0)


echo "Executing $spath"


if [ $(curl -s https://api.nasa.gov/planetary/apod?api_key=DEMO_KEY | jq ".media_type") == \"image\" ]
then 
	echo "$spath: SUCCESS"
	exit 0
else 
	echo "$spath: ERROR!"
	exit 1
fi


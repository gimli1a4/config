#!/bin/bash
#script that opens a number of videos in mpv
dir=$1
num=${2:-4}
name=${3:-watch}

i3-msg workspace $name

for (( c=0; c<$num; c++ ))
do
	i3-msg split h
	half=$(expr $num / 2)
	if [ $c = $half ]; then
		i3-msg focus parent
		i3-msg focus parent
		i3-msg split v		
	fi

	file=$(find "$dir" -type f ! -name '*.jpg' | shuf -n 1)
	mpv "$file" &
        sleep 5	
done

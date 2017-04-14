#!/bin/bash
#script that opens a number of videos in mpv in i3 tiles
dir=$1
num=${2:-4}
name=${3:-watch}

i3-msg workspace $name

for (( c=0; c<$num; c++ ))
do
	half=$(expr $num / 2)
	if [ $c = $half ]; then
		#go to top level parent and split vertically
		# works for 4-8 4:3 screens
		for (( d=0;  d<$half; d++ ))
		do
			i3-msg focus parent
		done
		i3-msg split v		
	fi
	
	#one random video from directory
	
	file=$(find "$dir" -type f ! -name '*.jpg' -and ! -name '*.nfo' -and ! -name '*.db' -and ! -name '*.xml' | shuf -n 1)
	mpv "$file" &
        sleep 5	
	if [ $c = $half ]; then
		#split horizontally again after first vertically placed video
		i3-msg split h		
	fi

done

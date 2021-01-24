#!/usr/bin/env bash

# Welcome
figlet 'YRSA'

# fun list():
#	Listing media files in the dir and all subfolders.
#	Putting the paths in a variable.
#
list () {
	files=$(find $dir -name "*.mkv" -type f)
	
	if [[ -z "$files" ]]; then
		echo 'yrsa found no ".mkv" files here.'
	elif [[ -n "$files" ]]; then
		echo 'yrsa found the following ".mkv" files.'
		for i in "${files[@]}"; do
			echo "$i"
		done
	fi
	return 0
}

# fun convert():
#	Converting the discovered media files.
#
convert () {
	for i in "${files[@]}"; do
		ffmpeg -i movie_dts.mkv -map 0:v -map 0:a:0 -map 0:a -map 0:s -c:v copy -c:a copy -c:s copy -c:a:0 aac -b:a:0 640k movie-aac.mkv
	done
	return 0
}
list

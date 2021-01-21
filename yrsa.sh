#!/usr/bin/env bash

# Welcome
echo 'YRSA'

# fun:
#	Listing media files in the dir and all subfolders.
#	Putting the paths in a variable.
#
function list () {
	files=$(find $dir -name "*.mkv" -type f)
	echo $files
	return 0
}

# fun:
#	Converting the discovered media files.
#

function convert () {
	for i in "${files[@]}"; do
		echo "$i"
	done
	return 0
}
list
convert

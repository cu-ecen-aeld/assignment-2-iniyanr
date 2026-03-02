#!/bin/sh
filesdir=$1
searchstr=$2
if [ $# -ne 2 ]; then
	echo "Error: Two arguments are required"
	exit 1
fi

if [ ! -d "$filesdir" ]; then
	echo "Error : Directory does not exist"
	exit 1
fi

file_count=$(find "$filesdir" -type f | wc -l)
match_count=$(grep -r "$searchstr" "$filesdir" | wc -l)

echo "The number of files are $file_count and the number of matching lines are $match_count"

#!/bin/sh
# Finder script for assignment 1 takes 2 arguments :- 1. Directory on filesystem 2. Text string to be searched within these files
# Author :- Aditya Ganesh
# Date :- 01/19/26

if [ $# -ne 2 ]; then 
   echo "ERROR: Invalid number of arguments
   	 Arguments should be :
   	 1. Directory on filesystem
   	 2. Text string to be searched in the specified directory path"
   exit 1
fi

filesdir=$1
searchstr=$2

if [ ! -d "$filesdir" ]; then
   echo "Error: $filesdir does not represent a directory"
   exit 1
fi

# Count number of files
num_files=$(find "$filesdir" -type f | wc -l)

# Count number of matching lines
num_matches=$(grep -r "$searchstr" "$filesdir" | wc -l)

# Print result
echo "The number of files are $num_files and the number of matching lines are $num_matches"

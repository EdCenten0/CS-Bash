#!/bin/bash/

# Create a script which counts those lines of a file F, which starts with word W! The F
# file and the word W is given by parameters! Check whether the F file is exists or not!

file=$1
word=$2
count=0

if [ ! -e "$file" ]; then
	echo "Not able to find the file location"
	exit
fi

clear

while IFS= read -r line
do
	if [ $(echo $line | cut -d' ' -f1) = "$word" ] ; then
		count=$(($count+1))
	fi
done < "$file"

echo "The numbers of lines with the word is: $count"

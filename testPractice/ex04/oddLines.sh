#!/bin/bash/

#Create a script which writes out each odd lines of a file! The file is given by it’s name
#through a parameter!

file=$1

nLine=1

while IFS= read -r line
do
	if [ $(($nLine % 2)) -eq 1 ]; then
		echo $line
	fi
	nLine=$(($nLine+1))
done < "$file"




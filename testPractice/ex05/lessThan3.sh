#!/bin/bash/
# Create a script which deletes the 3 digits long numbers from a file! The filename is
# given by a parameter! 

file=$1

while IFS= read -r line
do
	if [ $(($(echo "$line" | wc -m)-1)) -ne 3 ]; then 
		echo $line
	fi
done < "$file"

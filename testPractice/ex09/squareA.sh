#!/bin/bash/

# Create a script which writes out a square from A characters. The number of lines and
# columns is given by a parameter. (E.g. the parameter is 3, then the result is:
# AAA
# AAA
# AAA

rows=$1
colums=$2

for (( i=1; i<=$rows; i++ )) 
do
	for (( j=1; j<=$colums; j++))
	do
		echo -n A
	done
	echo
done

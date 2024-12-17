#!/bin/bash/

# Create a script which writes out the first N element of a mathematical serie. The first
# element is 3, the step is 4 and N is given by a positional parameter!
# E.g. if the N is 5, then the elements of the serie are: 3, 7, 11, 15, 19

n=$1
serie=3

for (( i=1; i<=$n; i++ )) 
do
	serie=$(($serie+4))
	echo "$serie"
done



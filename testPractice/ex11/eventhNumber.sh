#!/bin/bash/

# Create a shell script which writes out Nth even number! E.g. the number is 3 then the
# result is 6 – because the first even number is 2, the second is 4, and the third is 6. The
# N number is given by a positional parameter.
# If the user miss to give the parameters then read the number from the keyboard!

number=$1
count=0

if [ "$number" == "" ]; then
	read -p "Please introduce the nt even number: " number
fi

for ((i=1;i<=$number;i++))
do
	count=$(($count+2))
done

echo "The Nth even number is: $count"

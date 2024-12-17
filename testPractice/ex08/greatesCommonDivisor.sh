#!/bin/bash/
#Create a script, which gives back the greatest common divisor of two numbers! The
#numbers are given by parameters. (E.g. the numbers are 12 and 30 then the result is 6!)

greatest=1
n1=$1
n2=$2

clear

if [ $n1 -gt $n2  ]; then
	aux=$n2
	n2=$n1
	n1=$aux
fi

for (( i=1; i<=$n1; i++))
do
	if [ $(($n1 % $i)) -eq 0 ] && [ $(($n2 % $i)) -eq 0 ] ; then
		greatest=$i
	fi
done

echo "The greates divisor between $n1 and $n2 is: $greatest"





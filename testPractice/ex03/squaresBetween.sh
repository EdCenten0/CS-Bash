#!/bin/bash/
#3. Create a script which gets two numbers as positional parameters! The script should
#write out each square numbers between the parameters. (e.g. the parameters are: 3 and
#7 then write out 9, 16, 25, 36, 49). Check wheather the order of the numbers is good or
#not. If the second number is less then the first, swap them!

#!/bin/bash

x=$1
y=$2

if (( $y < $x)); then
	aux=$x
	x=$y
	y=$aux
fi

for (( i=$x; i<=$y; i++))
	do
		echo "$(($i*$i))"
	done


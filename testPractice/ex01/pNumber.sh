#!/bin/bash/

p=$1

if [ "$p" == "" ]; then
	read -p "Introduce the value of p: " p
fi

result=$((5*$p*$p+3*P+1))

echo "The result is $result"

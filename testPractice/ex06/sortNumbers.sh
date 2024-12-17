#!/bin/bash/
#Create a shell script which writes out three numbers sorted from the smallest to the
#greatest! The numbers are given by positional parameters. If the user miss to give the
#parameters then read the numbers from the keyboard!

number1=$1
number2=$2
number3=$3

sort(){
if [ "$number1" == "" ]||[ "$number2" == "" ]||[ "$number3" == "" ]; then
	read -p "Please enter the first number: " number1
	read -p "Please enter the second number: " number2
	read -p "Please enter the third number: " number3
fi

if [ "$number3" -lt "$number2" ] ; then
	aux=$number2
	number2=$number3
	number3=$aux
fi

if [ "$number2" -lt "$number1" ] ; then
	aux=$number1
	number1=$number2
	number2=$aux
fi
}

sort
sort

echo "First number: $number1 "
echo "Second number: $number2 "
echo "Third number: $number3 "

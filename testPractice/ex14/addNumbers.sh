#!/bin/bash/

# There are a file which contains 2 words and a number in each line (word, number,
# word)! Create a script which adds the numbers from the file!

file=$1
sum=0
clear
while IFS= read -r line
do
	n=$(echo $line | cut -d' ' -f2)
	sum=$(($sum+$n))
done < $file

echo "The total sum of the file is: $sum"

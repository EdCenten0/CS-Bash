#!/bin/bash/

# 5. Create a script which gets a file and change a given word to another if they are at the
# first or last position of a line! The filename and the words are given by parameters!

file=$1
word=$2
givenWord=$3

awk -v old="$word" -v new="$givenWord" '{
	if ($1 == old) $1 = new;
	if ($NF == old) $NF = new;
	print
}' $file

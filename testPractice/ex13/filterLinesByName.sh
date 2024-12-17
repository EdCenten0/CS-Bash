#!/bin/bash/

#Create a script, which gives back those lines of a file F which starts with a given name
#N. F and N are given by parameters! Check whether the file is exists or not!

clear
file=$1
name=$2

awk -v name="$name" '{if ($1 != name) print}' $file

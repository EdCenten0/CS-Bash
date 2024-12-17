#!/bin/bash/

case $1 in
	"-g")
		echo "Hello World"
	;;

	"-l")
		ls
	;;
	"-w")
		who
	;;
	"-?")
		echo "Write a greeting with -g, list with -l and get logged users with -w"
esac

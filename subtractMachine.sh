#!/bin/bash

# CPE 522 HW 4 Problem 2
# Matthew J. Touma
# 10/5/2021

# This script takes two numbers and compares them.
# It gives the difference between the two numbers,
# and counts down the difference to 1.

# Usage:
# This script takes two numerical input arguments.
#
# Example Invocation
# ./subtractMachine.sh 5 3 or ./subtractMachine.sh 5 5


# Make sure the user inputs the correct number of arguments.
# If LESS  than two arguments are passed...
if [ $# -lt 2 ]
then
	echo "Not enough input arguments" 
	exit 2 # exit the script

# If MORE than two arguments are passed...
elif [ $# -gt 2 ]
then
	echo "Too many input arguments"
	exit 3 # exit the script
fi

# Compute the difference
# If ARG1 is GREATER than ARG2...
if [ $1 -gt $2 ]
then
	# tell  the user
	echo $1 is greater than $2.
	# subtract ARG2 from ARG1
	difference=$(($1 - $2))
# If ARG2 is GREATER than ARG1...
elif [ $2 -gt $1 ]
then
	# tell the user
	echo $2 is greater than $1.
	# subtract ARG1 from ARG2
	difference=$(($2 - $1))
# Otherwise, ARG1 and ARG2 must be equal
else
	# tell the user
	echo $1 equals $2.
	# compute the difference (result should be zero)
	difference=$(($2 - $1))
fi
# Display the difference
echo Difference = $difference

# Count down the difference until it reaches 1
while [ $difference -gt 1 ]
do
	# decrement the difference value
	((difference--))
	# display each iteration
	echo Count Down = $difference
done

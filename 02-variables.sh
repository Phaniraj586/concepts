#!/bin/bash
#shell script run the command inside $()and store the ouput into the variable called DATE. 
DATE=$(date)

echo "Hello, this script is executed at timestamp: $DATE"
PERSON1=$1 # this is the first value from command line
PERSON2=$2 # this is the second value from command line 
echo "$PERSON1: Hi $PERSON2, Good Morning"
echo "$PERSON2 : Hi $PERSON1, Good Morning"
echo "$PERSON1 : How are you $PERSON2"
echo "$PERSON2 : i am good, how are you $PERSON1"
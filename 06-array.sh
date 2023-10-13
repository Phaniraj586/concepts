#!/bin/bash

PERSON=("Ramesh" "Suresh" "Sachin") # this is called array for holding multiple values
echo "first person is: ${PERSON[0]}" # reading the array based on index
echo "All the persons in array are: ${PERSON[@]} " # reading all persons from the array
 

 APPLICATION=("git" "postfix" "cyrus-sasl-plain" "mailx")
N=$(${APPLICATION[#]})
echo "No of items are: $N"
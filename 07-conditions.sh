#!/bin/bash

NUMBER=$1 # Taking user input from the command line

if [ $NUMBER -gt 20 ]
then 
    echo "given number $NUMBER is greater than 20"
else 
    echo "given number $NUMBER is not greater than 20"
fi 
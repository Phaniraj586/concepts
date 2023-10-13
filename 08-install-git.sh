#!/bin/bash

# check if the user is root user or not
# 'id -u' will provide user id & for root user it is always "0"
USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
    echo "ERROR : Please run the script with the root access"
    exit 1
fi
# installing git 

yum install git -y 
if [ $? -ne 0 ]
then    
    echo "installation of Git is not successful error code is $?"
    exit 1
else
    echo "Installation of Git is successful"
fi
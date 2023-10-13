#!/bin/bash

# check if the user is root user or not
# 'id -u' will provide user id & for root user it is always "0"
USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
    echo "ERROR : Please run the script with the root access"
else

yum install git -y
fi
#
#
#


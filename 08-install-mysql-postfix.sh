#!/bin/bash

# Checking root access
USERID=$(id -u)
if [ $USERID -ne 0 ]
then    
    echo "Please run the script with root access"
    exit 1
fi

# Installing MYSQL 

yum install mysql -y

if [ $? -ne 0 ]
then
    echo " Installation of MYSQL is not successful, error code is $?"
    exit 1
else
    echo "Installation of MYSQL is successful"
fi

# Installing postfix

yum install postfix -y

if [ $? -ne 0 ]
then
    echo " Installation of POSTFIX is not successful, error code is $?"
    exit 1
else
    echo "Installation of POSTIFX is successful"
fi
#script end
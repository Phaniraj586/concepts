#!/bin/bash

# Writing functions

USERID=$(id -u)

VALIDATE(){
    #$1 --> it will receive the argumet 1
    if [ $1 -ne 0 ]
    then
        echo "$2 is FAILURE"
        exit 1
    else 
        echo "$2 is SUCCESS"
    fi
}

# Checking for root access

if [ $USERID -ne 0 ]
then    
    echo "ERROR: Please run the script with root access"
    exit 1
fi

# Installing mysql

yum install mysql -y

VALIDATE $? "Installing MySQL"

# Installing Postfix

yum install postfix -y

VALIDATE $? "Installing PostFix"

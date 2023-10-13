#!/bin/bash

# $1 - first argument
# $2 - second argument
# $? - exit code
# $0 - script name

DATE=$(date +%F)
SCRIPT_NAME=$0
LOGFILE=/tmp/$SCRIPT_NAME-$DATE.log

VALIDATE(){
    if[ $1 -ne 0 ]
    then
        echo "$2...FAILUER"
        exit 1
    else
        echo "$2...SUCCESS"
    fi
}

USERID=$(id -u)

if[ $USERID -ne 0 ]
then    
    echo "ERROR: Please run this sript with root access"
    exit 1
fi

yum install mysql -y &>>$LOGFILE

VALIDATE $? "Installing mysql"

yum install postfix -y &>>$LOGFILE

VALIDATE $? "installing postfix"

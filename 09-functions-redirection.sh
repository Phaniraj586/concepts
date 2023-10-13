#!/bin/bash

#Special variables list as below
# $1 - first argument
# $2 - second argument
# $? - exit code
# $0 - script name
# $# - count of no of variables
# $@ - all variables
# '\e[31m' - red colour, '\e[32m' - green colour, '\e[0m' - normal colour 
R="\e[31m"
G="\e[32m"
N="\e[0m"

DATE=$(date +%F)
SCRIPT_NAME=$0
LOGFILE=/tmp/$SCRIPT_NAME-$DATE.log

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "$2...$R FAILUER $N" 
        exit 1
    else
        echo -e "$2...$G SUCCESS $N"
    fi
}

USERID=$(id -u)

if [ $USERID -ne 0 ]
then    
    echo -e "$R ERROR: Please run this sript with root access $N"
    exit 1
fi

yum install mysql -y &>>$LOGFILE

VALIDATE $? "Installing mysql"

yum install postfix -y &>>$LOGFILE

VALIDATE $? "installing postfix"

#!/bin/bash

#Model as below
# for i in {1..100}
# do 
# echo $i 
# done

#Installing git postfix cyrus-sasl-plain mailx

    #APPLICATION=("git" "postfix" "cyrus-sasl-plain" "mailx")
    #NUMBER=${#APPLICATION[@]}
    #echo "No of items are: $NUMBER"

R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"
DATE=$(date +%F)
SCRIPT_NAME=$0
LOGSDIR=/home/centos/shellscript-logs
LOGFILE=$LOGSDIR/$SCRIPT_NAME-$DATE.log

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

for i in $@
do
    yum list installed $i &>>$LOGFILE
    if [ $? -ne 0 ]
    then   
        echo "$i is not installed, lets install $i"
        yum install $i -y &>>$LOGFILE
        VALIDATE $? "Installing $i"
    else
        echo -e "$Y $i is already installed $N"
    fi
done

#!/bin/bash

# enable chron tab
# check the execution permissions as required

APP_LOGS_DIR=/home/centos/app-logs
DATE=$(date +%F:%H:%M:%S)
SCRIPT_NAME=$0

LOGFILE=$APP_LOGS_DIR/$SCRIPT_NAME-$DATE.log

FILES_TO_DELETE=$(find $APP_LOGS_DIR -name "*.log" -type f -mtime +14)

echo "Script stated executing at $DATE" &>>$LOGFILE
echo "$FILES_TO_DELETE" &>>$LOGFILE

while read line
do
    echo "deleting $line" &>>$LOGFILE
    rm -rf $line
done <<< $FILES_TO_DELETE
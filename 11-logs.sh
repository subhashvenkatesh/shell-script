#!/bin/bash

ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)

LOGFILE="/tmp/$0-$IMESTAMP.log"


VALIDATE(){

    if [ $1 -ne 0 ]
    then
    echo "$2 ....Failed"
    exit 1
    
    else
        echo "$2....Success"
    fi

}

    if [ $ID -ne 0 ]
    
    then
     echo "ERROR: Please run this script with root access"
     exit 1
    else
     echo "you are root user"

    fi

yum install mysql -y &>> $LOGFILE

    VALIDATE $? "Installing MySQL"

yum install git -y &>> $LOGFILE

    VALIDATE $? "Installing Git"
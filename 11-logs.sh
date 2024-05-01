#!/bin/bash

ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)

R="\e[31m
G="\e[32m
Y="\e[33m
N="\e[0m

LOGFILE="/tmp/$0-$TIMESTAMP.log"


VALIDATE(){

    if [ $1 -ne 0 ]
    then
    echo "$2 ....$R Failed $N"
    exit 1
    
    else
        echo "$2....$G Success $N"
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
#!/bin/bash

ID=$(id -u)

echo "script name: $0"

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

VALIDATE(){

    if [ $1 -ne 0 ]
    then
    echo -e "$2 ....$R Failed $N"
    exit 1
    
    else
        echo -e "$2....$G Success $N"
    fi

}

    if [ $ID -ne 0 ]
    
    then
     echo -e "$R ERROR: Please run this script with root access $N"
     exit 1
    else
     echo -e "$Y you are root user $N"

    fi

yum install mysql -y

    VALIDATE $? "Installing MySQL"

yum install git -y

    VALIDATE $? "Installing Git"
#!/bin/bash

ID=$(id -u)

echo "script name: $0"

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

yum install mysql -y

    VALIDATE $? "Installing MySQL"

yum install git -y

    VALIDATE $? "Installing Git"
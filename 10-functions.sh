#!/bin/bash

ID=$(id -u)

VALIDATE(){

    if [ $? -ne 0 ]
    then
    echo "ERROR : Installing tool is failed"
    exit 1
    else
        echo "tool is installed successfully"
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

VALIDATE

yum install git -y

VALIDATE

yum install java -y

VALIDATE
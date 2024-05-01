#!/bin/bash

ID=$(id -u)

VALIDATE(){

    if [ $? -ne 0 ] 
    then
        echo "ERROR: Installing is failed"
        exit 1
    else
        echo "instlaling is success"
fi

}

if [ $ID -ne 0 ]
then
    echo "ERROR: Please run this script with root access"
    exit 1
else
    echo "your root user"
fi
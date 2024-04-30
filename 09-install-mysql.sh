#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
   echo "ERROR: Please run this script with root access"
   exit 1
else
   echo "you are root user"

fi

yum install mysql -y

if [ $? -ne 0 ]
then
   echo "ERROR : Installing MySQL is failed"
   exit 1
else
    echo "MySQL installed successfully"
fi

yum install gkit -y

if [ $? -ne 0 ]
then
    echo "ERROR: Installing Git is failed"
    exit 1
else
    echo "Git is installed successfully"
fi
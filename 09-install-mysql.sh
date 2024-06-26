#!/bin/bash

ID=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ $ID -ne 0 ]

then
   
   echo -e "$R ERROR: Try with root user $N"
   exit 1
else
    echo -e "$G your a root user $N"
fi    

yum install mysql -y

if [ $? -ne 0 ]

then
     echo -e "$R installing MySql is failed $N"
     exit 1
else 
     echo -e "$G Installing MySql is Success $N"
fi             
   
yum install git -y

if [ $? -ne 0 ]

then
   echo "installing git is failed"
   exit1
else
    echo "Git installed Successfully"

fi


#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]

then
   
   echo "ERROR: Try with root user"
   exit 1
else
    echo "your a root user"
fi    

yum install mysqql -y

if [ $? -ne 0 ]

then
     echo "installing MySql is failed"
     
else 
     echo "Installing MySql is Success"
fi             
   
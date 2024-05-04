#!/bin/bash

ID=$(id -u)

VALIDATE(){
    if [ $1 -ne 0 ]
    then
    echo "$2...Failed"
    else
    echo "$2...Success"
    fi
}
if [ $ID -ne 0 ]

then 
    echo "ERROR:Try with root access"
else    
    echo "Your a root user"
fi

#echo "All args passed: $@"

for package in $@
do
    yum installed $package
    if [ $? -ne 0 ]
    then
        yum install $package -y
        VALIDATE $? "Installation of $package"
    else
        echo "$package already installed.....skipping"
    fi    
done

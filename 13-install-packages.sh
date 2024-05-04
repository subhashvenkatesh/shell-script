#!/bin/bash

ID=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

TIMESTAMP=$(date +%F-%H-%M-%s)

LOGFILE="/temp/$0-$TIMESTAMP.log"

VALIDATE(){
    if [ $1 -ne 0 ]
    then
    echo -e "$R $2...Failed $N"
    else
    echo -e "$G $2...Success $N"
    fi
}
if [ $ID -ne 0 ]

then 
    echo -e "$R ERROR:Try with root access $N"
else    
    echo -e "$G Your a root user $N"
fi

#echo "All args passed: $@"

for package in $@
do
    yum list installed $package
    if [ $? -ne 0 ]
    then
        yum install $package -y &>> $LOGFILE
        VALIDATE $? "Installation of $package"
    else
        echo -e "$Y $package already installed.....skipping $N"
    fi    
done

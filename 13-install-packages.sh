#!/bin/bash

ID=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

VALIDATE=(){

if [ $1 -ne 0 ]
then 
echo "$2...FAIlED "
else
 echo "$2... SUCCESS"
fi

}

if [ $ID -ne 0 ]

then
    echo -e "$R ERROR:$N $Y Please run this script with root access $N"
    exit 1
else
    echo -e "$G Your root user $N"
fi

for package in $@
do
yum list installed $package

done

if [ $? -ne 0 ]
then
    yum install $package -y
VALIDATE $? "installation of $package"

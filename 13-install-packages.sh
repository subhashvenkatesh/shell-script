#!/bin/bash

ID=(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ $ID -ne 0 ]
then
    echo -e "$R ERROR:$N $Y Please run this script with root access $N"
    exit 1
else
    echo -e "$G Your root user $N"
fi

echo -e "$Y All args passed :$@ $N"
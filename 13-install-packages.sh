#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]

then 
    echo "ERROR:Try with root access"
else    
    echo "Your a root user"
fi

echo "All args passed: $@"

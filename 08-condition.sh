#!/bin/bash

NUMBER=$1

if [ $NUMBER -gt 100 ]
then
echo "Given number is $NUMBER greater than 100"
else
echo "Given number is $NUMBER not greater than 100"
fi
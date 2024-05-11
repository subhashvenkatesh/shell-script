#!/bin/bash

DISK_USAGE=$(df -hT | grep -vE 'tmp|file')
DISK_THRESHOLD=2
message=""

while IFS= read line
do
    usage=$(echo $line | awk '{print $6F}' | cut -d % -f1)
    partition=$(echo $line | awk '{print $1F}')
    if [ $usage -gt $DISK_THRESHOLD ]
    then
        message+="High Disk Usage on $partition: $usage\n"
    fi    
done <<< $DISK_USAGE

echo "Message: $message"


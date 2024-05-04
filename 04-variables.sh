#!/bin/bash

NUMBER1=$1
NUMBER2=$2

SUM=$((NUMBER1+NUMBER2))

echo "Total : $SUM"

echo "No.Of args Passed : $#"

echo "script name :: $0"

echo "All args passed :: $@"
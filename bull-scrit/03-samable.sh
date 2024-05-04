#!/bin/bash

NUMBER1=$1
NUMBER2=$2
NUMBER3=$3

SUBRACTION=$(($NUMBER1-$NUMBER2+$NUMBER3))

echo "total value = $SUBRACTION"

echo "no args passed : $@"

echo "name of the script = $0"

echo "all args passed = $#"
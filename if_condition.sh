#!/usr/bin/env bash

read -p "Enter your number: " num 

if [ $num -gt 0 ];then
       echo "Positive number"
else
 	echo "Negative number"
fi


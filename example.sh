#!/bin/bash

read -p "enter the brand name: " brand
read -p "Enter the price: " price

if [[ $brand == "KF" && $price -ge 200 ]] ; then 
	echo "This is good but expensive"
elif [ $brand == "OMR" ]; then
	echo "This is Awsome"
elif [ $brand == "BP" ]; then
	echo "This is Wisky"
else
	echo "Those are all not good"
fi

	

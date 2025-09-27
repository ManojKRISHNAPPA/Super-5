#!/bin/bash

read -p "Enter your name: " name
read -p "Enter your age: " age

if [[ $name == "Pradeep" && $age -ge 18 ]]; then
	echo "hello $name is adult"
else
	echo "Hey $name your not eligible because your age is $age so go home"
fi

<<mycom

-eq --> equal
-ne --> Not equal
-gt --> Greater than
-lt --> less than
-ge --> Greater than or equal
-le --> Lesser than or Eqaul
==  --> Equal to string
!=  --> Not eqauls

mycom

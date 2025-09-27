#!/bin/bash

#echo "This is Current user is : $USER"
#echo "The home for this is user is: $HOME"


#echo "
#This is Current user is : $USER
#The home for this is user is: $HOME
#Current Date is: $(date)
#"
<<mycom
cat << EOF >> sample.txt
This is Current user is : $USER
The home for this is user is: $HOME
Current Date is: $(date)
EOF
mycom





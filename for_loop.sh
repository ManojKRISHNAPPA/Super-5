#!/bin/bash 

<< mycom
echo "i like oldmonk"
echo "i like KF"
echo "i like Tuborg"
echo "i like BP"


for brand in oldmonk KF Tuborg BP 100pipers Orange banana 
do
	echo "i like $brand"
done


for i in {1..10}
do 
	echo "Number is $i"
done


for dir in Linux Git shell Terrafom docker k8
do
	mkdir $dir
	touch $dir/Readme.md
done

for i in 1 2 3 4 5
do 
	echo "number $i"
done


for i in {1..10}
do
        echo "number $i"
done


for (( count=1; count<=5; count++))
do
	 echo "Count: $count"
done

mycom


for dir in "Linux Git" shell Terrafom docker k8
do
        mkdir $dir
        touch $dir/Readme.md
done







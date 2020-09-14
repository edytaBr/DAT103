#!/bin/sh
echo Give the number
sum=0
while read -r num1 || break; do
	sum=$(($sum + num1))
	echo Give the number or CTRL+D
done
echo The sum is: "$sum"



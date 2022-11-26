#!/bin/bash

read -p "Please enter a value: " n

if [ $n -gt 200 ]; then
	echo "$n is more than 200"
elif [ $n -lt 100 ]; then
	echo "$n is lest than 100"
elif
     [ $n -gt 100 ] && [ $n -lt 200 ]; then
	echo "$n bingo"
else
	echo "Thy again! Choose between 100 and 200"

fi	

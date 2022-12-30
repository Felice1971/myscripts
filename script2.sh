#!/bin/bash


mynum=150

if [ $mynum -eq 200 ]
then
	echo "The condition is true!"
else 

	echo " The condition is not true!"
fi



if [ -f ~/script1.sh ]
then

echo "The file exists!"
else 
echo "The file does not exists!"

fi


if  [ -d ~/temp ]
then
	echo "The directory exists!"
else
	echo "The directory does not exists!"
fi


if [ -f ~/script1.sh ]
then 
	echo " The file exists!"
else
	echo "The the file does not exists"
fi



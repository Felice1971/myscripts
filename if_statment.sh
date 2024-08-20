#!/bin/bash

#Author: Felix FOKOU TAMOFO 
# Year: 2024

# This script can be used to find out if a software has been installed on a system. It is based on the sofware directory search. 

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


command=/usr/bin/htop

if [ -f $command ]
	then
		echo " $command is available, let's run it..."
	else
		echo " $command is not available, let's install it..."
		apt update -y && apt install htop -y
fi

$command









command=htop

if [ command -v $command ]
then 
echo "$command is available..."
else
	echo " $command is not available, let's install it..."
	apt update && apt install htop -y
   $command
fi   


#! /bin/bash


echo "What is your name?"
read name



echo "Hello $name, How are you doing today?"
read health


if [ $health =  fine ]
then
	echo " Happy to hear that your are $health!"

else
	echo " Soory that your are not doing well!"

fi       



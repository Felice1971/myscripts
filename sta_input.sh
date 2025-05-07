
#! /bin/bash


echo "What is your name?"
read name



echo "Hello $name, How are you doing today?"
read health


if [ $health =  fine ]
then
	echo " Happy to hear that your are in good $health!"

else
	echo " Sorry that your are not doing well!"

fi       



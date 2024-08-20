#!/bin/bash

#Description: introduction to variable.

echo "Hello World"


myname="Felix"
myage="52"


echo "my name is $myname"  

echo "I'm $myage old"       

echo "Nice to meet you!"     


# when a variable is a command

runing=$(uptime)

memory=$(free -m)

echo " This server has been up and runing from : $runing" 

echo " The memory size of this computer is as follow : $memory"

echo " The current username is: $USER"

# Maths

expr 10 + 6

expr 10 / 2

mynum1="300"

echo "$mynum1 / 3"


mynum2="2"

echo "$mynum1 + $mynum2"


echo "$mynum1 - 125"



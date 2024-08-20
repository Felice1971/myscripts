#!/bin/bash


# Autor: Felix Tamofo
# description: Bash script to install git package on linux system



cat /etc/os-release | grep Ubuntu

if [ $? -eq 0  ]

then 
		echo "The distribution is Ubuntu"
		sudo apt update -y &&  apt install git -y
	else
		echo "The distribution is not Ubuntu"
		yum update -y && yum install git -y

fi


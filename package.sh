#!/bin/bash

#Auth: Felix Tamofo
#Desc: A script to check if a package has been installed if not it should be install

#Installing a package not available

command=/usr/bin/wget

if [ -f $command ]

then
	echo "The $command is available, let's run it..."

else
	echo "The $command is not available, let's install it now..."

apt update && apt install wget -y

fi


#Removing a package

command=/usr/bin/htop

if [ -f $command ]

then
        echo "The $command is available, let's uninstall it "

	apt remove htop -y

else
        echo "The $command is not available, let's update the system now..."

       apt update 

fi


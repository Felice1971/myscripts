#!/bin/bash


package=nestat

apt install $package -y


if [ $? -eq 0 ]
then 
		echo " nestat package has been successfully installed."
		echo " The new command is available here: "
		which $package
	else
		echo " netstat  package failed to install."

fi



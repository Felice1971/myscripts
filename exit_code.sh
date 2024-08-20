#!/bin/bash


package=wget

apt install $package

	if [ $? -eq 0 ]
	then
		echo " $package is susccesful installed "
                echo " the new command is available here:"
		which $package
	else
			echo " $package failed to install "

	fi

#!/bin/bash

# ensure to have execution permissions on menuscript: sudo chmod +x menuscript.sh

echo "Select an option: "
option=`./menuscript.sh encrypt decrypt`

if [ "$option" = "encrypt" ]
then
	echo "enter the filename of file to encrypt: "; 
	read to_encrypt;
	if [ -e $to_encrypt ]
	then
	sudo gpg -c $to_encrypt
	printf "\n"
	echo "success"
	exit
else 
	echo "file not found. Quitting..."
	exit
	fi
elif [ "$option" = "decrypt" ]
then
	echo "enter the filename of file to decrypt";
	read to_decrypt;
	if [ -e $to_decrypt ]
	then
	sudo gpg -d $to_decrypt > ${to_decrypt}_decrypted
	printf "\n"
	echo "success"
	exit
else 
	echo "file not found. Quitting..."
	exit
	fi
else
	echo "error: option unavailable" # this else (should not) be executed
	 								#	as menu script is in charge to handle
	 								#	the exception	
fi
rm option
#!/bin/bash
#Scipt Name:	opschall05.sh
#Author:	ben_podawiltz
#Date:		2.22.21
#Purpose:	display run process, asks for PID, then kill process with that PID


#variables
option="y"
option="n"

#main

	while ps aux 
	do 
	echo -e "\nEnter PID you want to kill\n"
	read -r pid
	kill -9 $pid
	echo -e "\nRun process again? y/n:"
	read -r option
	if [ "$option" == y ]; then 
	echo -e "\nrunning again...\n"

	fi
	done

	if ["option" == n ]; then
	exit

#End


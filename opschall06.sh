#!/bin/bash 
#
#Scipt Name:	opschall06.sh
#Author:	ben_podawiltz
#Date:		2.24.21
#Purpose:	scan for open ports - create a bash function that prints all currenlty listening, well-known ports of the targeted computer
#           and call the function in your script after accepting IP address of the target PC from the user
#
#Notes: I did the stretch goal but could not get a clean execution so I had to git rid of my net variable as the string would not recognize the ports when i ran the script. 
#I know its syntax just need to play around a bit more.
#
#variable
#s="succeeded!"
#r="refused"
#net="$(netcat -v "$ipaddr" 1 - 1024)"
#functions

 print_port () {
   echo -e "Please enter the ip address"
    read -r ipaddr
       netcat -v $ipaddr 1-1024

         
 }

 print_port

  
    
#stretch goal - configure your script to accept user input and retun only ports with status equal to user input
#user_input () {
 #   echo "what type of port would you like to see?"
  #  read -r option
   #     if [ "$option" == $s ]; then
    #         "$net" | grep succeeded
    #    elif [ "$option" == $r ]; then
    #        echo "$net" | grep refused
#fi
#}

#user_input
#end

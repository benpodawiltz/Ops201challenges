#!/bin/bash 
#
#Scipt Name:	opschall07.sh
#Author:	ben_podawiltz
#Date:		2.28.21/3.1.21
#Purpose:	Uses lshw to display system information, uses grep to filter output, add text to the output indicating which component the script is returning, run as root
#
#variables
a="sudo lshw"
#main
echo -e "\nThis is a report of system hardware & BIOS information\n"

echo -e "\nName of the computer\n"
$a| grep "201dev-servr"

echo -e "\nThis is the CPU\n"
$a -class cpu | grep -B 6 "width: 64 bits" #CPU Product, Vendor, Physical ID, Bus info, Width   

echo -e "\nThis is the RAM\n"
$a -class memory | grep -A 3 "memory" # RAM, Description, Physical ID, Size

echo -e "\nThis is the Display\n"    #Display everything except version
$a -class display | grep -v "version" #Description, Product, Vendor, Physical ID, Bus Info, Width, Clock, Capabilities, Config, Resources

echo -e "\nThis is the Network Adapter\n" # Everything
$a -class network


echo -e "\nThis is the BIOS information\n" #BIOS info
sudo dmidecode -t 0
echo -e "\nEnd Report\n"


#end
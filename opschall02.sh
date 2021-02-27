#!/bin/bash
# Script Name:              ops201-class02-opschall
# Author:                   Ben Podawiltz
# Date of last revision:    2.11.21
# Description of purpose:   1st function script 
# Declaration of variables
a=$(date)
b=$(whoami)
c=$(ifconfig)
# Declaration of functions (if used)
greet () {
    echo $a
    echo "hello" $b
    echo $c 
}

# Main
echo $a
echo "hello" $b
echo $c
 echo $a >> output.txt1
 echo "hello" $b >> output.txt1
 echo $c >> output.txt1
# End

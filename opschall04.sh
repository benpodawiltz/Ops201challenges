#!/bin/bash
# Script Name:              ops201-class04-opschall
# Author:                   Ben Podawiltz
# Date of last revision:    2.17.21
# Description of purpose:   Bash array
#
#
#1.Create four directories using the script.

mkdir pod1 pod2 pod3 pod4

#2.Load each directory path into an array.
function array () {
my_dir=("pod1" "pod2" "pod3" "pod4")
my_path="$HOME/github/gittest"
my_files=1.txt
}

#3.Create a new .txt file by referencing the array instead of the literal filepath.

 if ${my_dir[3]}
 then touch $my_files $my_path
 echo "it's all good"
 if $my_files 
 then $my_path
 fi
fi 





#!/bin/bash
# Script Name:              ops201-class04-opschall
# Author:                   Ben Podawiltz
# Date:                     2.17.21
# Revision:                 3.26.21
# Purpose:                  Write a bash script that creates four dirctiories: dir1, dir2, dir3, dir4
#                           Put the four directories into an array
#                           References the array variable to create a new .txt file in each directory
#
#
#
#variables
my_dir=("dir1" "dir2" "dir3" "dir4")
my_path="$HOME/github/ops-201-challenges"
my_files=("New1" "New2" "New3" "New4")


#create 4 directories using a function
function new_dir () {
    for i in {1..4}
    do 
        command mkdir "dir$i"   #references the array in the loop
        echo "${my_dir[*]}"
    done
}

#Call the function
new_dir

#Create a new .txt file by referencing the array instead of the literal filepath.
function create_txtfiles () {
    for i in {0..3}
    do 
        touch "${my_path}/${my_dir[$i]}/${my_files[$i]}.txt" #references two arrays and one variable while creating a .txt file(s)
    done     
}


#Call the function
create_txtfiles





#End


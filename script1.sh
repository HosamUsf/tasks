#!/bin/bash

check_file(){
   if [ -f "$1" ]; then
        echo "$1 is file"
   elif [ -d "$1" ]; then 
        echo "$1 is dir"
   else 
        echo "$1 is not file or dir"
   fi 
}

export -f check_file

find $HOME -maxdepth 1 -exec bash -c 'check_file "$1"' _ {} \;

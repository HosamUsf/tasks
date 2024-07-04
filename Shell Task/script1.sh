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

echo "Please enter a value:"
read user_value
echo "You entered: $user_value"

echo "Enter the file path to read lines from:"
read file_path

if [ -f "$file_path" ]; then
    while IFS= read -r line; do
        echo "Line: $line"
    done < "$file_path"
else
    echo "The file $file_path does not exist."
fi


find $HOME -maxdepth 1 -exec bash -c 'check_file "$1"' _ {} \;


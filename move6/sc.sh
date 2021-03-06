#!/bin/bash

file=$1
destination=$2

if [[ -d "$file" && -s "$file" ]]; then

        if [[ -d "$destination" ]]; then

                echo "$file"
                if [[ ! -d "$destination/$file" ]]; then
                       
                         mkdir -p "$destination/$file"
                         mk="$destination/$file"
                         find "$file" -type f -mtime -5 -print0 -exec mv {} "$mk" \;
                else
                         find "$file" -type f -mtime -5 -print0 -exec mv {} "$destination/$file" \;
                        
                fi
               
        else
                echo "$destination is not a folder"
        fi
else
        echo "$file folder is empty"
        echo "done"
fi

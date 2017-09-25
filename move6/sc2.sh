#!/bin/bash

from=$1
destination=$2
echo "from $from"
echo "des $destination"
if [[ -d "$from" && -s "$from" ]]; then

        # extract the name of the sub directory
        # to be create
        src=$(sed -r 's/.*\/(arch).*/\1/' <<< "$from")

        if [[ -d "/home/george/Documents/askubuntu/move6/destination" ]]; then

                destination="/home/george/Documents/askubuntu/move6/destination"
                echo "In 'if' $destination"

                if [[ ! -d "$destination/$src" ]]; then


                        mkdir "$destination/$src"
                        newdes="$destination/$src"
                        find "$from" -type f -mtime -5 -print0 -exec mv {} "$newdes" \;
                else
                        find "$from" -type f -mtime -5 -print0 -exec mv {} "$newdes" \;

                fi

         else
                exit 1
         fi
else
        exit 1
fi

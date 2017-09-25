#!/bin/bash

mkdir newpath
 
for i in ./*/*; do
        # Get the path to the file
        path=$(dirname $(readlink -f "$i"))
        # change into dir
        cd "$path"
        # get path to file
        r1=${PWD/PWD##*/}
        # get the names for rename file
        f1=$([[ "/home/george/Documents/askubuntu/bbc/2017-09-19.21.00.3-0.rec" =~ [0-9]{4}-([0-9]{2}-[0-9]{2}\.[0-9]{2}\.[0-9]{2}).* ]])
        f2=$([[ "/home/george/Documents/askubuntu/bbc/2017-09-19.21.00.3-0.rec" =~ (bbc) ]])
        # Rename the files
        rename "s/[0-9]{1,}.txt$/\"$f2\"__\"$f1\"__.txt/" "$i"
        
        # move to new location
        mv "$i" newpath
done

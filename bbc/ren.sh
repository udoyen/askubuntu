#!/bin/bash

mkdir newpath
 
for i in ./*/*; do
        # Get the path to the file
        path=$(dirname "$(readlink -f "$i")")
        # change into dir
        #cd "$path"
        echo "echo" -- "$path"
        echo "filename" -- "$i"
        # get path to file
        r1=${PWD/PWD##*/}
        # get the names for rename file
        f2=$( echo "$path" | grep -Eo "\-[0-9]{2}-[0-9]{2}" | grep -Eo "[0-9]{2}-[0-9]{2}")
        echo "f2" "$f2"
        f1=$( echo "$path" | grep -Eo bbc )
        echo "f1" "$f1"
        f3=$(echo "$path" | grep -Eo "\.[0-9]{2}\.[0-9]{2}" | grep -Eo "[0-9]{2}\.[0-9]{2}")
        echo "f3" "$f3"        
        # Rename the files
        #rename 's/[0-9]{1,}.txt$/$f2__$f1__.txt/' "$i"
        mv -n "$i" ./newpath/"$f1"__"$f2"__"$f3".txt
        #mv newpath
done

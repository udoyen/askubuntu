#!/bin/bash

num=$(wc -l < "$1")

while read line
do
        for i in $(seq 1 "$num")
        do
            if [[ "$line" =~ abc_[a-z] ]]
            then
                    echo  "$line""$i"
            else
                    echo "$line"
            fi
        done
done < "$1"

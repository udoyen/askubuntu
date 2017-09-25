#!/bin/bash

values=$1

echo "$values"

while read -e name; do
        
        #result=$("scale=4; ($name/1000)" | bc)
        result=$(bc <<< "scale=4; ($name/1000)")
        echo "$result"

done < "$values"

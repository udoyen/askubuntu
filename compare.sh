#!/bin/bash

while true
do
        if [[ $((cut -c1- $1)) ]]
        then
                echo "$@"
        fi        
        
        
done

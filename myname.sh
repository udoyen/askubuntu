#!/bin/bash

# echo "Say something: "

read -p "Say somethig: " NAME 

# name=$("Say some thing: ")

if [[ "$NAME" == "paul" ]]
        then
                
                # echo "Hi" "$NAME"
                echo "Hi" "$(echo $NAME | cut -f 4 -d ' ')"
        else
                echo "I didn't understand that"
fi



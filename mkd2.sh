#!/bin/bash

shopt -s globstar


for i in **/; do
        sub=$(find "$i" -type d | wc -l)
        echo "$i"
        if [[ "$sub" -eq 1 ]]
        then
                mkdir "$i"/Texture
        fi
done


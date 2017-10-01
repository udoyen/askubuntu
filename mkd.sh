#!/bin/bash

shopt -s globstar; for i in **/; do echo "$i"; sub=$(find "$i" -type d | wc -l); if [[ "$sub" -eq 1 ]]; then echo "$i"; mkdir "$i"/Texture; fi;done


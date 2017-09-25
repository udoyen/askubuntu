#!/bin/bash
for item in "$@"
do
        file=$(basename "$item")
        base64 "$item" > "$PWD/$file.base64"
done

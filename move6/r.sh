#!/bin/bash

f=$1


r=$(sed -r 's/.*\/(arch).*/\1/' <<< "$f")

echo "$r"

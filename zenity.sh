#!/bin/bash

zenity --question --text="What to do?" \       
       --radiolist --text 'pick one' --column 'Run'  Run '$opt1' --column Edit '$opt2'

case $? in
    0)thunar "$1"
    ;;
    1)gedit $1
    ;;
esac

#!/bin/bash


function f_start()
{
    forever start app.js
}


function f_stop()
{
    forever stop app.js
}


case "$1" in

    start)
        f_start
        ;;
    stop)
        f_stop
        ;;
    *)
    exit 1
    ;;
esac


exit 0

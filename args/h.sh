#!/bin/bash

while getopts "i:f:c:h:u:" opt
do
        case $opt in
                i)
                        echo "IP"
                        ;;
                f)
                        echo "free"
                        ;;
                c)
                        echo "cpu"
                        ;;
                h)
                        echo "host"
                        ;;
                u)
                        echo "user"
                        ;;
                *)
                        echo "Nothing to do"
                        ;;
        esac
done

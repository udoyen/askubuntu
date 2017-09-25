#!/bin/bash
# /usr/local/bin/pow.sh
#

function p_start(){

        echo "Pow: starting service"        

               
        while true
        do
                v=$(acpi -a | cut -d: -f2)
                
                if [[ "$v" == "off-line" ]]
                then
                        systemctl hibernate
                        
                fi
                
        done
                 

}


function p_stop(){

        echo "Pow: stopping Services (PID = $(cat /tmp/pow.pid))"
        kill $(cat /tmp/pow.pid)
        rm /tmp/pow.pid


}


function p_status(){

        ps -ef | grep pow | grep -v grep
        echo  "PID indicate indication file $(cat /tmp/pow.pid 2&>; /dev/null)"


}



# Things that run always
touch /var/lock/pow

# Managment instructions of the service

case "$1" in 
        start )
                p_start
                ;;
        stop )
                p_stop
                ;;
        Reload )
                p_stop
                sleep 1
                p_start
                ;;
        Status )
                p_status
                ;;
        * )
        Echo "Usage: $0 {start | stop | reload | status }"
        exit 1
        ;;
        
esac

exit 0

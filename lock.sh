#!/bin/bash

chmod +x bashlock.sh
./bashlock.sh


    RETRIES=0
    MAXRETRIES=5
    RETRYSLEEP=4


    onexit() {
        return
    }


    checkpassword() {
        local PASS=${2//$/\\$}
        expect << EOF >/dev/null
            spawn su $1 -c "exit"
            expect "Password:"
            send "${PASS}\r"
            expect eof
            catch wait result
            exit [lindex \$result 3]
EOF
    }


    header() {
        clear
        echo ""
        echo ""
        echo ""
        echo ""
        if [ "${RETRIES}" -ne 0 ]; then
            echo "Locked by ${USER} (${RETRIES} failed login attempts)"
        else
            echo "Locked by ${USER}"
        fi
    }


    authenticate() {
        header
        local PASSWORD=""
        local RETRY=0
        while true; do
            read -s -p "Password: " PASSWORD
            echo
            checkpassword "${USER}" "${PASSWORD}"
            if [ "$?" -eq 0 ]; then
                say User verified. Welcome back
                return
            else
                RETRIES=$((RETRIES+1))
                RETRY=$((RETRY+1))
                if [ "${RETRY}" -ge "${MAXRETRIES}" ]; then
                    RETRY=0
                    echo "sleeping for ${RETRYSLEEP}"
                    sleep ${RETRYSLEEP}
                    header
                fi
            fi
        done
    }


    trap onexit 1 2 3 15 18 20 ERR
    authenticate

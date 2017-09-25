#!/bin/bash

on="1023"
off="0"
dv="0"


# RESET
sleep 10
log "RESET"
nvidia-settings -a "[gpu:0]/DigitalVibrance[DFP-0]=$off"

while true; do #daemon mode
dv=`nvidia-settings -q "[gpu:0]/DigitalVibrance[DFP-0]" -t`
  if pgrep -l csgo | grep csgo_linux
  then
#  log "Process csgo_linux found"
    if [ $dv -eq $off ]; then
      nvidia-settings -a "[gpu:0]/DigitalVibrance[DFP-0]=$on"
    fi
  else
# No process found
    if [ $dv -eq $on ]; then
      nvidia-settings -a "[gpu:0]/DigitalVibrance[DFP-0]=$off"
    fi
  fi

  if [ $dv -eq $on ]; then
  sleep 5
  else
  sleep 1
  fi

done

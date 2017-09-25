#!/bin/bash -eu

LANG=C
##########################################################################
# Script to create user accounts from supplied file with user names      #
##########################################################################
myuser="/home/george/text.dat"

# create logs directory


mkdir -p ~/logs
        
# create log file
touch ~/logs/useraccounts.log

[ "$(whoami)" != "root" ] && exec sudo -- "$0" "$@"

# check if log file is empty, if not don't add a new header
file=~/logs/useraccounts.log

# Add header in logs file if one isn't already there.
if [[ -s $file ]]
then
	# log file header
        
	printf "%s %-12s %s %18s %s %-32s %s\n" "|" "Added" "|" "User Account Name" "|" "Day and Time of Creation" "|" >> ~/logs/useraccounts.log
	
	printf "%50s\n" "========================================================================" >> ~/logs/useraccounts.log

fi
       
       
# remove any whitespaces and blank lines from file input
# before passing it to 'while command'
sed '/^[ \t]*$/d' $myuser | while read -r line
do
        name="$line"

        adduser --disabled-login --gecos "" "$name"

	# timestamp
      #  timestamp=$(date)

        
        # check if user was successfully added
        isthere=$(cut -d: -f1 /etc/passwd | grep "$name")

	echo "User $name"

	echo "In passwd $isthere"

	
	# if user was added then make insert record into log file
        if [[ "$isthere" == "$name" ]]
        then
                                
                 printf "%s %-10s\t   %s %-17s\t  %s %-33s %s\n"  "|" "Yes" "|" "$name"  "|" "$(date)" "|"  >> ~/logs/useraccounts.log 
        
        else
        
		 printf "%s %-10s\t   %s %-17s\t  %s %-33s %s\n"  "|" "No" "|" "$name"  "|" "$(date)" "|"  >> ~/logs/useraccounts.log
                 # echo "User: $name, could not be added !"
        
        
        
        fi   
         
               
        

done

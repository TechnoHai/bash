#!/bin/bash

#####################################################################
#this is a script to check if a server is alive by the ping command #
#####################################################################

#take server lists from hosts.txt file
servers=$(cat hosts.txt)

#for loop that ping each server 2 times and let the user know if the server is up or down
for server in $servers
do
	ping -c 2 $server > /dev/null

	#check the exit code of the ping cmd and give output acordinly 
	if [ $? -eq 0 ] 
	then
                echo
		echo "###########################################"
		echo "The server $server is alive!"
		echo "###########################################"
                echo 
	else
		echo "########################################################"
		echo "The server $server is Dead check connectivity!"
		echo "########################################################"
                echo
	fi
done

#!/bin/bash
servers=$(cat hosts.txt)

for server in $servers
do
	ping -c 2 $server > /dev/null

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

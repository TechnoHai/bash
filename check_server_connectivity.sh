#!/bin/bash
servers=$(cat hosts.txt)

for server in $servers
do
	ping -c 2 $server

	if [ $? -eq 0 ]
	then
		echo "###########################################"
		echo "The server is alive!"
		echo "###########################################"
	else
		echo "###########################################"
		echo "The server is Dead check connectivity!"
		echo "###########################################"
	fi
done

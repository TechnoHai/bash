#!/bin/bash
#get a list of hosts/ip from the hosts.txt file
ips=$(cat hosts.txt)
for ip in $ips
do
    sshpass -p "password" ssh-copy-id -o StrictHostKeyChecking=no -i ~/.ssh/id_rsa.pub user@$ip
done

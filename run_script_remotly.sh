#!/bin/bash

hosts=$(cat hosts.txt)

for host in $hosts
do
# "bash -s" < run the script from local machine on remote host
  ssh vagrant@$host "bash -s" < /opt/scripts/18_update_linux.sh
done

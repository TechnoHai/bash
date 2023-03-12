#!/bin/bash

hosts=$(cat hosts.txt)

for host in $hosts
do
# "bash -s" < run the script from local machine on remote host
  chmod +x update_linux.sh
  ssh vagrant@$host "bash -s" < update_linux.sh
done

#!/bin/bash

# Read hostnames from hosts.txt file
hosts=$(cat hosts.txt)

# Loop through each host
for host in $hosts
do
# "bash -s" < run the script from local machine on remote host
  # Ensure the script is executable
  chmod +x update_linux.sh
  # Execute the script remotely on each host via SSH
  ssh vagrant@$host "bash -s" < update_linux.sh
done

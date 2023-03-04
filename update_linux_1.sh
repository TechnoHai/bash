#!/bin/bash
#cheking ths os type by the ID field in os-release file
release_file=/etc/os-release

#check the ID  field and using the right package managment to run update . 
if grep -q -i "centos" $release_file
then
    echo "The OS is Centos "
    sleep 3
    echo "Updating And Upgrading The os"
    sudo yum update -y && sudo yum upgrade -y
	
elif grep -q -i "fedora" $release_file
then
    echo "The OS is Fedora "
    sleep 3
    echo "Updating And Upgrading The os"
    sudo yum update -y && sudo yum upgrade -y
	
elif grep -q -i "ubuntu" $release_file
then
     echo "The OS is Ubunto "
     sleep 3
     echo "Updating And Upgrading The os "
     sudo apt update -y
     sudo apt upgrade -y    

elif grep -q -i "rocky" $release_file
then
     echo "The OS is rocky "
     sleep 3
     echo "Updating And Upgrading The os "
     sudo apt update -y
     sudo apt upgrade -y                  
fi           
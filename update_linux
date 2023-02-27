#!/bin/bash
#cheking ths os type by the uniqe file in the etc folder
os=$(grep -w ID  /etc/os-release)
#centos=/etc/redhat-release 
#ubuntu=/etc/os-release

#check which file is int the etc folder and using the right package managment to run update . 
if [ $os == "ID="centos"" ]
then
    echo "The OS is Centos "
    sleep 3
    echo "Updating And Upgrading The os"
    sudo yum update && sudo yum upgrade -y
	
elif [ $os == "ID=fedora" ]
then
    echo "The OS is Fedora "
    sleep 3
    echo "Updating And Upgrading The os"
    sudo yum update -y && sudo yum upgrade -y
	
elif [[ $os == "ID=ubuntu" ]] 
then
     echo "The OS is Ubunto "
     sleep 3
     echo "Updating And Upgrading The os "
     sudo apt update -y
     sudo apt upgrade -y             
fi           

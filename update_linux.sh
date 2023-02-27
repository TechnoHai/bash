#!/bin/bash
#cheking ths os type by the ID field in os-release file
os=$(grep -w ID  /etc/os-release)

#check the ID  field and using the right package managment to run update . 
if [ $os == "ID="centos"" ]
then
    echo "The OS is Centos "
    sleep 3
    echo "Updating And Upgrading The os"
    sudo yum update -y && sudo yum upgrade -y
	
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

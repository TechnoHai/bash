#!/bin/bash
#cheking ths os type by the ID field in os-release file
os=$(grep -w ID  /etc/os-release)

#check the ID  field and using the right package managment to run update . 
#check if the os is cetnos
if [ $os == "ID="centos"" ]
then
    echo "The OS is Centos "
    sleep 3
    echo "Updating And Upgrading The os"
    sudo yum update -y && sudo yum upgrade -y

#check if the os is fedora	
elif [ $os == "ID=fedora" ]
then
    echo "The OS is Fedora "
    sleep 3
    echo "Updating And Upgrading The os"
    sudo yum update -y && sudo yum upgrade -y

#check if the os is ubuntu	
elif [[ $os == "ID=ubuntu" ]] 
then
     echo "The OS is Ubunto "
     sleep 3
     echo "Updating And Upgrading The os "
     sudo apt update -y
     sudo apt upgrade -y  

#check if the os is rocky
elif [[ $os == "ID="rocky ]] 
then
     echo "The OS is rocky "
     sleep 3
     echo "Updating And Upgrading The os "
     sudo apt update -y
     sudo apt upgrade -y                            
fi           



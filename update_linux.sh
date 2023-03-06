#!/bin/bash
#cheking ths os type by the ID field in os-release file
os=$(grep -w ID  /etc/os-release)
#log file for the updating procces
log_file=/var/log/update_linux_log
error_log=/var/log/update_linux_error

#check the ID  field and using the right package managment to run update . 
#check if the os is cetnos
if [ $os == "ID="centos"" ]
then
    echo "The OS is Centos "
    sleep 3
    echo "Updating And Upgrading The os"
    sudo yum update -y && sudo yum upgrade -y 
    #check if the update went succsfully or not and log it.
    if [ $? -ne 0 ]
    then
        echo "An error accured please check the $error_log file"
    else 
        echo "The update procces finish succsefully, you can check $log_file for detalis"
    fi

#check if the os is fedora	
elif [ $os == "ID=fedora" ]
then
    echo "The OS is Fedora "
    sleep 3
    echo "Updating And Upgrading The os"
    sudo yum update -y && sudo yum upgrade -y
    #check if the update went succsfully or not and log it.
    if [ $? -ne 0 ]
    then
        echo "An error accured please check the $error_log file"
    else 
        echo "The update procces finish succsefully, you can check $log_file for detalis"
    fi

#check if the os is ubuntu	
elif [[ $os == "ID=ubuntu" ]] 
then
     echo "The OS is Ubunto "
     sleep 3
     echo "Updating And Upgrading The os "
     sudo apt update -y
     sudo apt upgrade -y
    #check if the update went succsfully or not and log it.
    if [ $? -ne 0 ]
    then
        echo "An error accured please check the $error_log file"
    else 
        echo "The update procces finish succsefully, you can check $log_file for detalis"
    fi  

#check if the os is rocky
elif [[ $os == "ID="rocky ]] 
then
     echo "The OS is rocky "
     sleep 3
     echo "Updating And Upgrading The os "
     sudo apt update -y
     sudo apt upgrade -y 
    #check if the update went succsfully or not and log it.
    if [ $? -ne 0 ]
    then
        echo "An error accured please check the $error_log file"
    else 
        echo "The update procces finish succsefully, you can check $log_file for detalis"
    fi                           
fi           



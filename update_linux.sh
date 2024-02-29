#!/bin/bash

# This script updates the Linux system based on its distribution by identifying the distribution ID from /etc/os-release.
# It logs the update process and errors to specific log files.

#cheking ths os type by the ID field in os-release file
os=$(grep -w ID  /etc/os-release)

#log files for the updating process
touch /var/log/update_linux_log
touch /var/log/update_linux_error
update_log=/var/log/update_linux_log
error_log=/var/log/update_linux_error

#a function that check the exit code after the update is running and tell the user where to look for logs
check_exit_code() {
    if [ $? -ne 0 ]
    then
        echo "An error accrued please check the $error_log file"
    else 
        echo "The update process finish successfully, you can check $update_log for details"
    fi
}

#check the ID  field and using the right package management to run update .
#check if the os is Centos
if [ $os == "ID="centos"" ]
then
    echo "The OS is Centos "
    sleep 3
    echo "Updating And Upgrading The os"
    sudo yum update -y && sudo yum upgrade -y 1>>$update_log 2>>$error_log
    #check if the update went successfully or not and log it.
    check_exit_code



#check if the os is fedora	
elif [ "$os" == "ID=fedora" ]
then
    echo "The OS is Fedora "
    sleep 3
    echo "Updating And Upgrading The os"
    sudo yum update -y && sudo yum upgrade -y 1>>$update_log 2>>$error_log
    #check if the update went successfully or not and log it.
    check_exit_code

#check if the os is ubuntu	
elif [[ $os == "ID=ubuntu" ]] 
then
     echo "The OS is Ubuntu "
     sleep 3
     echo "Updating And Upgrading The os "
     sudo apt update -y && sudo apt upgrade -y 1>>$update_log 2>>$error_log
     
    #check if the update went successfully or not and log it.
    check_exit_code

elif [[ $os == "ID=pop" ]]
then
     echo "The OS is popOS "
     sleep 3
     echo "Updating And Upgrading The os "
     sudo apt update -y && sudo apt upgrade -y 1>> $update_log 2>>$error_log

    #check if the update went successfully or not and log it.
    check_exit_code

#check if the os is rocky
elif [[ $os == "ID="rocky ]] 
then
     echo "The OS is rocky "
     sleep 3
     echo "Updating And Upgrading The os "
     sudo apt update -y && sudo apt upgrade -y 1>>$update_log 2>>$error_log
      
    #check if the update went successfully or not and log it.
   check_exit_code
fi



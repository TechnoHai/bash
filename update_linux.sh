#!/bin/bash

# This script updates the Linux system based on its distribution by identifying the distribution ID from /etc/os-release.
# It logs the update process and errors to specific log files.

#cheking ths os type by the ID field in os-release file
os=$(grep -w ID  /etc/os-release)

#log files for the updating process
touch /tmp/update_linux_log
touch /tmp/update_linux_error
update_log=/tmp/update_linux_log
error_log=/tmp/update_linux_error

#a function that check the exit code after the update is running and tell the user where to look for logs
#This code defines a function called check_exit_code that checks the exit code of the last command. If the exit code is not 0, it prints an error message with the name of the error log file. Otherwise, it prints a success message with the name of the update log file
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
if [ $os == "ID="centos"" ] || [ "$os" == "ID=fedora" ] || [ $os == "ID=rocky" ] || [ $os == "rhel" ]
then
    echo "The OS is Centos "
    sleep 3
    echo "Updating And Upgrading The os"
    sudo dnf update -y && sudo dnf upgrade -y 1>>$update_log 2>>$error_log
    #check if the update went successfully or not and log it.
    check_exit_code


#check if the os is Ubuntu or popOS
elif [ $os == "ID=ubuntu" ] || [ $os == "ID=pop" ] 
then
     echo "The OS is either Ubuntu or popOS "
     sleep 3
     echo "Updating And Upgrading The os "
     sudo apt update -y && sudo apt upgrade -y 1>>$update_log 2>>$error_log
     
    #check if the update went successfully or not and log it.
    check_exit_code

fi



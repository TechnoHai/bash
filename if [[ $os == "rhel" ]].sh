os=$(grep -w ID  /etc/os-release)
if [[ $os == "rhel" ]]
then
    echo "The OS is Centos "
    sleep 3
    echo "Updating And Upgrading The os"
    sudo dnf update -y && sudo dnf upgrade -y 
    #check if the update went successfully or not and log it.
else
     echo "The OS is Ubuntu or popOS "
        
    
fi    
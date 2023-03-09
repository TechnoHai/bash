#!/bin/bash
#Install dependencies
sudo apt install apt-transport-https curl gnupg-agent ca-certificates software-properties-common -y
#add gpe key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
#add docker repo
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
#install docker
sudo apt install docker-ce docker-ce-cli container.io -y
#user and permissions
sudo usermod -aG docker $USER
newgrp docker
#enable the service
sudo systemctl enable docker
#test docker installation
docker run hello-world
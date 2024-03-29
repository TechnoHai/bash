#!/bin/bash

#install JAVA
sudo apt install openjdk-11-jdk -y

#add jenkins repo
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo tee /usr/share/keyrings/jenkins-keyring.asc &gt; /dev/null

#Add the Jenkins software repository to the source list and provide the authentication key
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null

#Install Jenkins
sudo apt update
sudo apt install jenkins -y
sudo systemctl enable --now jenkins
#!/usr/bin/env bash

# This script install jenkins and its dependencies
# Author: Azeez Yahaya
# Date: 19/2/2024
# Usage: bash install-jenkins.sh


# update ubuntu
sudo apt update

# install Openjdk 11 to install java 11
sudo apt install openjdk-11-jdk -y

#  import the GPG key to verify package integrity.
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null

# add the Jenkins repository and add the authentication key to the source list
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null

# updating the index
sudo apt update

# initiate jenkins installation
sudo apt-get install jenkins

echo "Happy hacking!"

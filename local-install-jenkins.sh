#!/usr/bin/env bash

# This script install jenkins and its dependencies locally
# Author: Azeez Yahaya
# Date: 19/2/2024
# Usage: bash install-jenkins.sh


# update ubuntu
echo "updating ubuntu ..."
sleep 2
sudo apt update

# install Openjdk 11 to install java 11
echo "installing Openjdk 11 to install java 11 ..."
sleep 2
sudo apt install openjdk-11-jdk -y

#  import the GPG key to verify package integrity.
echo "importing the GPG key to verify package integrity ..."
sleep 2
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc

# add the Jenkins repository and add the authentication key to the source list
echo "adding the Jenkins repository and add the authentication key to the source list ..."
sleep 2
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list

# updating the index
echo "updating the index ..."
sleep 2
sudo apt update > /dev/null

# initiate jenkins installation
echo "initiate jenkins installation ..."
sleep 2
sudo apt-get install jenkins -y

echo "Happy hacking!"
sleep 2

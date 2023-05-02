#!/bin/bash

#Update and upgrade all packages
sudo apt update -y

#Install all required packages
sudo apt install git vim unzip golang-go -y

#Setup Docker runtime
sudo apt update -y
sudo apt install apt-transport-https curl gnupg-agent ca-certificates software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
sudo apt install docker-ce docker-ce-cli containerd.io docker-compose -y
sudo usermod -aG docker ubuntu
newgrp docker

#Clone all Github repos
git clone https://github.com/domcha-knowit/docker-k8s-kurs-och-cert.git /home/ubuntu/docker-k8s-kurs-och-cert
sudo chown -R ubuntu: /home/ubuntu
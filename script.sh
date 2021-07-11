#!/bin/sh
sudo yum update -y
sudo yum install -y yum-utils
sudo yum-config-manager  --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum install docker-ce docker-ce-cli containerd.io  -y
sudo systemctl start docker
sudo systemctl enable docker
sudo systemctl status docker
sudo yum  install ntp
sudo systemctl start ntpd
sudo systemctl enable ntpd
sudo systemctl restart ntpd

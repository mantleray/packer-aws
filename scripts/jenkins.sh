#!/bin/bash
wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add -
sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
apt-get -y update
UCF_FORCE_CONFFNEW=YES apt-get upgrade -y
apt-get -y install openjdk-8-jdk
apt-get -y install jenkins

#!/bin/bash

apt-get -y install curl
mkdir /home/vagrant/.ssh
chmod 700 /home/vagrant/.ssh
curl https://raw.githubusercontent.com/mitchellh/vagrant/master/keys/vagrant.pub -O >> /home/vagrant/.ssh/authorized_keys
chmod 600 .ssh/authorized_keys
chown -R vagrant:vagrant .ssh

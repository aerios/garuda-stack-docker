#!/bin/bash 

echo "============================="
echo " install default utils"
echo "============================="

apt-get update
apt-get install curl wget openssh-client -y

ssh-keygen -t dsa -P '' -f ~/.ssh/id_dsa
cat ~/.ssh/id_dsa.pub >> ~/.ssh/authorized_keys


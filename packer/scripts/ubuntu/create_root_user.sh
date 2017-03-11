#!/bin/bash
set -x

echo "root:vagrant" | sudo chpasswd
echo -e "vagrant" | sudo su -c "echo 'vagrant   ALL = NOPASSWD: ALL' >> /etc/sudoers" root

echo -e "vagrant" | sudo su -c "mkdir -p /root/.ssh" root
echo -e "vagrant" | sudo su -c "curl -fsSLo /root/.ssh/authorized_keys https://raw.githubusercontent.com/mitchellh/vagrant/master/keys/vagrant.pub" root
echo -e "vagrant" | sudo su -c "chmod 700 /root/.ssh/" root
echo -e "vagrant" | sudo su -c "chmod 600 /root/.ssh/authorized_keys" root

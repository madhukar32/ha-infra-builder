#echo "vagrant" | sudo sed -i 's/^mesg n$/tty -s \&\& mesg n/g' /root/.profile
echo "vagrant" | sudo sed -i '/^deb.* trusty-updates /s/^/#/g' /etc/apt/sources.list
echo "vagrant" | sudo sed -i '/^deb.* trusty-security /s/^/#/g' /etc/apt/sources.list

#echo "vagrant" | sudo sed -i 's/^mesg n$/tty -s \&\& mesg n/g' /root/.profile
echo "vagrant" | sudo sed -e '/PermitRootLogin/ s/^#*/#/' -i /etc/ssh/sshd_config
echo "vagrant" | sudo sed '/^#PermitRootLogin/a PermitRootLogin yes' -i /etc/ssh/sshd_config
echo "vagrant" | sudo sed -i '/^#ListenAddress 0.0.0.0/s/^#//' -i /etc/ssh/sshd_config
echo "vagrant" | sudo service ssh restart

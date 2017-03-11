echo "vagrant" | sudo apt-get install -y ntp
echo "vagrant" | sudo rm /etc/ntp.conf
echo "vagrant" | sudo touch /etc/ntp.conf
echo "vagrant" | sudo echo "driftfile /var/lib/ntp/drift" >> /etc/ntp.conf
echo "vagrant" | sudo echo "server 10.84.5.100" >> /etc/ntp.conf
echo "vagrant" | sudo echo "restrict 127.0.0.1" >> /etc/ntp.conf
echo "vagrant" | sudo echo "restrict -6 ::1" >> /etc/ntp.conf 
echo "vagrant" | sudo echo "includefile /etc/ntp/crypto/pw" >> /etc/ntp.conf 
echo "vagrant" | sudo echo "keys /etc/ntp/keys" >> /etc/ntp.conf 
echo "vagrant" | sudo service ntp start


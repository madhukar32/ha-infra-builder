sudo sed -i '/netmask */a gateway 10.8.6.126' /etc/network/interfaces
sudo sed -i -- 's/255.255.255.0/255.255.255.128/g' /etc/network/interfaces

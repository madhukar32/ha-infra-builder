#echo "deb http://security.ubuntu.com/ubuntu trusty-security main" | sudo tee -a /etc/apt/sources.list
#sudo DEBIAN_FRONTEND=noninteractive apt-get -y --force-yes --allow-unauthenticated install linux-headers-3.13.0-85
#sudo DEBIAN_FRONTEND=noninteractive apt-get -y --force-yes --allow-unauthenticated install linux-headers-3.13.0-85-generic
#sudo DEBIAN_FRONTEND=noninteractive apt-get -y --force-yes --allow-unauthenticated install linux-image-3.13.0-85-generic
#sudo DEBIAN_FRONTEND=noninteractive apt-get -y --force-yes --allow-unauthenticated install linux-image-extra-3.13.0-85-generic
#sudo DEBIAN_FRONTEND=noninteractive apt-get -y --force-yes --allow-unauthenticated purge `dpkg --get-selections | grep -v "deinstall" | cut -f1 | grep 3.16.0-30 | tr '\n' ' '`
#sudo DEBIAN_FRONTEND=noninteractive apt-get -y --force-yes --allow-unauthenticated purge `dpkg --get-selections | grep -v "deinstall" | cut -f1 | grep 3.16.0-77 | tr '\n' ' '`

sudo DEBIAN_FRONTEND=noninteractive apt-get -y --force-yes --allow-unauthenticated install linux-headers-3.13.0-85
sudo DEBIAN_FRONTEND=noninteractive apt-get -y --force-yes --allow-unauthenticated install linux-headers-3.13.0-85-generic
sudo DEBIAN_FRONTEND=noninteractive apt-get -y --force-yes --allow-unauthenticated install linux-image-3.13.0-85-generic
sudo DEBIAN_FRONTEND=noninteractive apt-get -y --force-yes --allow-unauthenticated install linux-image-extra-3.13.0-85-generic

sudo sed -i 's/^GRUB_DEFAULT=.*/GRUB_DEFAULT="Advanced options for Ubuntu>Ubuntu, with Linux 3.13.0-85-generic"/g' /etc/default/grub
sudo update-grub
sudo grep '^GRUB_DEFAULT="Advanced options for Ubuntu>Ubuntu, with Linux 3.13.0-85-generic"' /etc/default/grub

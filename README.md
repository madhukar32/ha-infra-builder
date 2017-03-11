# HA Infra Builder

##### Requirements
* Three servers with minimum (24 cpu, 128 GB RAM)
* Ubuntu 14.04.4 Installed on those servers

#### Installation steps
**Execute below steps on each of your servers**

* Execute below lines from your command line
echo 'deb http://01.archive.ubuntu.com/ubuntu/ trusty main restricted universe multiverse' >> /etc/apt/sources.list
echo 'deb-src http://01.archive.ubuntu.com/ubuntu/ trusty main restricted universe multiverse' >> /etc/apt/sources.list
sudo apt-get update
sudo apt-get install git

* Clone the repository
sudo git clone 
cd ha-infra-builder

* Copy the appropriate source repo list and update the system
cp installation/ubuntu_source_list /etc/apt/sources.list

* Install virtualbox, vagrant and ansible
./installation/install_packages.sh

* Copy vagrant_box from build server to here
scp your_user_id@10.84.5.38:/users/mnayakbomman/vagrant_box/ubuntu-14.04.4.virtualbox.box .

* Add vagrant box
vagrant box add contrail/ubuntu-14.04.4 ubuntu-14.04.4.virtualbox.box

* Go to appropriate node folder and change the gateway in scripts for example
cd controller_3_openstack_1/node1
vi scripts/enable_gw.sh

* Edit Vagrantfile and update IP's available for your vm's

* Bring up the vm's
vagrant up

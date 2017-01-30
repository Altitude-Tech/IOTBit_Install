#!/bin/bash
#Install rpi-source dependancies
apt-get update
apt-get install bc -y
apt-get install libncurses5-dev -y

#Install rpi-source
wget https://raw.githubusercontent.com/notro/rpi-source/master/rpi-source -O /usr/bin/rpi-source && sudo chmod +x /usr/bin/rpi-source && /usr/bin/rpi-source -q --tag-update
rpi-source

#Install gobi-serial dependancies
apt-get install dkms -y
#git clone https://github.com/casastorta/gobiserial
sudo mv /home/pi/PiAnywhere_Install/GobiSerial /usr/src/GobiSerial-2011-07-29-1026
cd /usr/src/GobiSerial-2011-07-29-1026

#Install GobiSerial
dkms add -m GobiSerial -v 2011-07-29-1026
dkms build -m GobiSerial -v 2011-07-29-1026
dkms install -m GobiSerial -v 2011-07-29-1026
#modprobe -v GobiSerial
echo "sudo modprobe -v GobiSerial" >> /home/pi/.bashrc

apt-get install wvdial ppp modem-manager-gui hostapd -y

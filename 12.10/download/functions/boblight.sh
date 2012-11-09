#!/bin/bash 

#######################################################################
# Title      :    boblight
# Author     :    Mathias Kraut, Uwe Stark
# Date       :    2012-11-08
# Version	 :	  1.0.0
#######################################################################
# Description
#   compile and install boblight
# Note:
#   - 
#######################################################################

cd /usr/src
sudo apt-get install -y libx11-dev libgl1-mesa-dev libxrender-dev libxext-dev portaudio19-dev libavcodec-dev libavformat-dev libswscale-dev libavdevice-dev subversion
sudo apt-get install -y libusb-1.0 
sudo apt-get install -y libusb-1.0-0-dev
svn checkout http://boblight.googlecode.com/svn/trunk/ boblight-read-only
cd boblight-read-only
./configure
make
make install
ldconfig
adduser xbmc root
mkdir /etc/boblight
cd /etc/boblight
wget https://dl.dropbox.com/u/21136636/kraut/boblight.conf
chmod 777 -R /etc/boblight
# add samba share for boblight config
echo "" >> /etc/samba/smb.conf
echo "[boblight]" >> /etc/samba/smb.conf
echo "path = /etc/boblight"  >> /etc/samba/smb.conf
echo "guest ok = yes" >> /etc/samba/smb.conf
echo "writeable = yes" >> /etc/samba/smb.conf
echo "browseable = yes" >> /etc/samba/smb.conf
echo "create mode = 0777" >> /etc/samba/smb.conf
echo "directory mode = 0777" >> /etc/samba/smb.conf
# autostart boblight daemon
echo "su - xbmc -c \"boblightd -c /etc/boblight/boblight.conf -f\"" >> /autorun/autorun.sh
echo "su - xbmc -c \"DISPLAY=:0.0 boblight-X11 -o gamma=2.0 -o speed=40 -o valuemin=0.004 -o value=1.5 -o saturation=1.1 -o threshold=20\" &" >> /autorun/autorun.sh

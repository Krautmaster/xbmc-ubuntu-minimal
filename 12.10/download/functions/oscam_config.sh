#!/bin/bash 

#######################################################################
# Title      :    oscam config & autostart
# Author     :    Mathias Kraut, Uwe Stark
# Date       :    2012-11-08
# Version	 :	  1.0.0
#######################################################################
# Description
#   compile and install boblight
# Note:
#   - 
#######################################################################


# load oscam config
cd /etc
rm -R /etc/oscam
mkdir oscam
cd oscam
wget http://dl.dropbox.com/u/21136636/configs/oscam.zip
unzip -j oscam.zip
rm oscam.zip
chmod 777 -R /etc/oscam/
mkdir /var/log/oscam/ 
chmod 777 -R /var/log/oscam/
# add samba share for oscam config
echo "" >> /etc/samba/smb.conf
echo "[oscam]" >> /etc/samba/smb.conf
echo "path = /etc/oscam"  >> /etc/samba/smb.conf
echo "guest ok = yes" >> /etc/samba/smb.conf
echo "writeable = yes" >> /etc/samba/smb.conf
echo "browseable = yes" >> /etc/samba/smb.conf
echo "create mode = 0777" >> /etc/samba/smb.conf
echo "directory mode = 0777" >> /etc/samba/smb.conf
# autostart boblight daemon
echo "/usr/bin/oscam -c /etc/oscam &" >> /autorun/autorun.sh

#!/bin/bash 

#######################################################################
# Title      :    samba
# Author     :    Mathias Kraut, Uwe Stark
# Date       :    2012-11-09
# Version	 :	  1.0.0
#######################################################################
# Description
#   install samba
# Note:
#   - 
#######################################################################

sudo apt-get install -y samba
chmod 777 -R /etc/samba
# add samba share for samba config
echo "" >> /etc/samba/smb.conf
echo "[samba]" >> /etc/samba/smb.conf
echo "path = /etc/samba"  >> /etc/samba/smb.conf
echo "guest ok = yes" >> /etc/samba/smb.conf
echo "writeable = yes" >> /etc/samba/smb.conf
echo "browseable = yes" >> /etc/samba/smb.conf
echo "create mode = 0777" >> /etc/samba/smb.conf
echo "directory mode = 0777" >> /etc/samba/smb.conf

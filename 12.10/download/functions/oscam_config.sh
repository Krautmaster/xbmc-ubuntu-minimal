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

echo $1
DOWNLOAD_URL=$1
apt-get install -y cmake subversion build-essential unzip
cd /usr/src
rm -R oscam*
svn co http://streamboard.de.vu/svn/oscam/trunk oscam-svn
cd oscam-svn*
mkdir build
cd build
cmake .. -DHAVE_LIBUSB=1 -DWEBIF=1 -DHAVE_DVBAPI=1
make -j2
cp oscam /usr/bin
chmod 755 /usr/bin/oscam

# load oscam init script
cd /etc/init.d/
rm oscam
wget $DOWNLOAD_URL"oscam"
chmod 777 /etc/init.d/oscam

# load oscam config
cd /etc
rm -R /etc/oscam
mkdir oscam
cd oscam
wget $DOWNLOAD_URL"oscam.zip"
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

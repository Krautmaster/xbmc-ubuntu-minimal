#!/bin/bash 

#######################################################################
# Title      :    vdr addon
# Author     :    Mathias Kraut, Uwe Stark
# Date       :    2012-11-08
# Version   :	  1.0.0
#######################################################################
# Description
#   install vnsiserver, download and compile dvbapi
# Note:
#   - 
#######################################################################

# --> VDR Setup  <--

apt-get install -y vdr-plugin-vnsiserver  
apt-get install -y vdr-plugin-femon 
apt-get build-dep -y vdr-dev
apt-get install -y linux-firmware-nonfree
apt-get install -y fakeroot git-core
rm -R /usr/src/vdr
mkdir /usr/src/vdr
cd /usr/src/vdr
apt-get source vdr
cd /usr/src/vdr/vdr-*/
dpkg-buildpackage -rfakeroot -us -uc -b

# --> DVB-api <--

cd /usr/src/vdr/vdr-*/PLUGINS/src
git clone git://github.com/manio/vdr-plugin-dvbapi.git
cd vdr-plugin-dvbapi/
git checkout staging
make
cp /usr/src/vdr/vdr-*/PLUGINS/lib/libvdr-dvbapi.so.* /usr/lib/vdr/plugins/

#add vdr conf firectory
echo "" >> /etc/samba/smb.conf
echo "[channels_config]" >> /etc/samba/smb.conf
echo "path = /var/lib/vdr"  >> /etc/samba/smb.conf
echo "guest ok = yes" >> /etc/samba/smb.conf
echo "writeable = yes" >> /etc/samba/smb.conf
echo "browseable = yes" >> /etc/samba/smb.conf
echo "create mode = 0777" >> /etc/samba/smb.conf
echo "directory mode = 0777" >> /etc/samba/smb.conf
chmod 777 -R /var/lib/vdr

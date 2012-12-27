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


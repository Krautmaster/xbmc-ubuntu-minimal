#!/bin/bash 

#######################################################################
# Title      :    TT S2 4100 TV Card driver
# Author     :    Mathias Kraut, Uwe Stark
# Date       :    2012-11-08
# Version   :	  1.0.0
#######################################################################
# Description
#   compile and install 
# Note:
#   - 
#######################################################################

#sudo apt-get -y install build-essential patchutils libproc-processtable-perl git-core linux-firmware-nonfree git
#cd /usr/src
#wget http://www.tt-downloads.de/tt_s2_4100_drv_lnx.tar.bz2
#tar xjvf tt_s2_4100_drv_lnx.tar.bz2
#cd tt_s2_4100_drv_lnx
#./tt_install_lnx3x_x64.sh
#make -j4
#make install

cd /usr/src
rm -R s2-liplianin-v37
apt-get install -y mercurial
hg clone https://bitbucket.org/liplianin/s2-liplianin-v37
cd s2-liplianin-v37
make -j4
make firmware
make install
make firmware_install

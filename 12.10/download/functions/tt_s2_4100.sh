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

sudo apt-get -y install build-essential libdigest-sha1-perl linux-headers patchutils libproc-processtable-perl git-core linux-firmware-nonfree
processtable-perl git
cd /usr/src
wget http://www.tt-downloads.de/tt_s2_4100_drv_lnx.tar.bz2
tar xjvf tt_s2_4100_drv_lnx.tar.bz2
cd tt_s2_4100_drv_lnx
./tt_install_lnx3x_x64.sh
make
make install

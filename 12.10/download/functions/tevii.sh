#!/bin/bash

#######################################################################
# Title      :    tevii firmware
# Author     :    Mathias Kraut, Uwe Stark
# Date       :    2012-11-08
# Version	 :	  1.0.0
#######################################################################
# Description
#   fetch and extract tevii tv card firmware
# Note:
#   - 
#######################################################################

cd /tmp
wget https://dl.dropbox.com/u/21136636/configs/s2_liplianin_1.tar
tar xvf s2_liplianin_1.tar
cd tevii_s2_liplianin-eb8a914cd499/linux/firmware/
cp dvb-usb-s660.fw /lib/firmware
rm /tmp/s2_liplianin_1.tar
rm -R /tmp/tevii_s2_liplianin-eb8a914cd499/linux/firmware/

cd /tmp
wget -c http://tevii.com/tevii_ds3000.tar.gz
tar xfv tevii_ds3000.tar.gz
sudo cp tevii_ds3000/dvb-fe-ds3000.fw /lib/firmware/
rm /tmp/tevii_ds3000.tar.gz
rm -R /tmp/tevii_ds3000

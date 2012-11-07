#!/bin/bash 

cd /tmp
wget https://dl.dropbox.com/u/21136636/configs/s2_liplianin_1.tar
tar xvf s2_liplianin_1.tar
cd tevii_s2_liplianin-eb8a914cd499/linux/firmware/
cp dvb-usb-s660.fw /lib/firmware


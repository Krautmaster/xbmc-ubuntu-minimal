#!/bin/bash 

# --> Boblight Installieren <--

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

wget https://dl.dropbox.com/u/21136636/Ambilight/Boblight/boblight.conf

chmod 777 -R /etc/boblight


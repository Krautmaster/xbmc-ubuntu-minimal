#!/bin/bash 

#######################################################################
# Title      :    XBMC Config laden 
# Author     :    Mathias Kraut, Uwe Stark
# Date       :    2012-11-08
# Version	 :	  1.0.0
#######################################################################
# Description
#   download and extract preset xbmc configuration 
# Note:
#   - 
#######################################################################

cd /home/xbmc
sudo apt-get -y install p7zip
rm xbmc.7z
showInfo "$xbmc config file download... (may take some time)"
wget https://dl.dropbox.com/u/21136636/configs/xbmc.7z
rm -R .xbmc
p7zip -d xbmc.7z
chmod 777 -R /home/xbmc/.xbmc
rm xbmc.7z
chmod -R 777 .xbmc

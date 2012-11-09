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
sudo apt-get -y install unzip
rm xbmc.zip
showInfo "$xbmc config file download... (may take some time)"
wget https://dl.dropbox.com/u/21136636/configs/xbmc.zip
rm -R .xbmc
unzip xbmc.zip
chmod 777 -R /home/xbmc/.xbmc
rm xbmc.zip
chmod -R 777 .xbmc

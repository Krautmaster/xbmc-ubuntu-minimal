#!/bin/bash 

# --> XBMC_Config_Laden  <--

cd /home/xbmc

sudo apt-get -y install unzip

rm xbmc.zip

wget https://dl.dropbox.com/u/21136636/configs/xbmc.zip

rm -R .xbmc

unzip xbmc.zip

chmod 777 -R /home/xbmc/.xbmc

rm xbmc.zip

chmod -R 777 .xbmc

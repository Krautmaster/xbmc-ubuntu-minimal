#!/bin/bash 

# --> FireFox Installieren <--

apt-get install -y --no-install-recommends firefox fluxbox flashplugin-installer eterm
cd /home/xbmc/

rm -R /home/xbmc/scripts

mkdir scripts

cd scripts

wget http://dl.dropbox.com/u/21136636/firefox.sh

chmod 777 firefox.sh


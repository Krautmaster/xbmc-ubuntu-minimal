#!/bin/bash  
echo "wawawa" > /xbmcscripts/geht.old

wget -O /xbmcscripts/prepare_install.sh https://raw.github.com/Krautmaster/xbmc-ubuntu-minimal/master/12.10/current/prepare_install.sh
chmod +x /xbmcscripts/prepare_install.sh
bash /xbmcscripts/prepare_install.sh

# --> Disable Autologin in Console and RunOne Script <<--
sed -i 's/exec \/bin\/login -f xbmc < \/dev\/tty1 > \/dev\/tty1 2>\&1/exec \/sbin\/getty -8 38400 tty1/' /etc/init/tty1.conf; 
sed -i '/xbmcscripts/d' ~/.bashrc

reboot

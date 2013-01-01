#!/bin/bash 

#######################################################################
# Title      :    firefox
# Author     :    Mathias Kraut, Uwe Stark
# Date       :    2012-11-08
#######################################################################
# Description
#   install Firefox web browser
# Note:
#   - 
#######################################################################

# Required Install Packages
apt-get install -y --no-install-recommends firefox fluxbox flashplugin-installer eterm

# Firefox configuration
if [ -d /home/xbmc/scripts ] ; then
  rm -R /home/xbmc/scripts
	mkdir /home/xbmc/scripts
        cd /home/xbmc/scripts
	wget http://dl.dropbox.com/u/21136636/firefox.sh
	chmod 777 /home/xbmc/scripts/firefox.sh
else
	mkdir /home/xbmc/scripts
	cd /home/xbmc/scripts
	wget http://dl.dropbox.com/u/21136636/firefox.sh
	chmod 777 /home/xbmc/scripts/firefox.sh	
fi

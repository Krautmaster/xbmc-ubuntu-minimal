#!/bin/bash 

#######################################################################
# Title      :    Maraschino Setup
# Author     :    Mathias Kraut, Uwe Stark
# Date       :    2012-11-08
# Version   :    1.0.0
#######################################################################
# Description
#   compile and install 
# Note:
#   - 
#######################################################################
cd /usr/src/
rm -R /opt/maraschino
git clone https://github.com/mrkipling/maraschino.git /opt/maraschino
cp /opt/maraschino/initd /etc/init.d/maraschino
cp /opt/maraschino/default /etc/default/maraschino
chmod a+x /etc/init.d/maraschino
update-rc.d maraschino defaults
/etc/init.d/maraschino start


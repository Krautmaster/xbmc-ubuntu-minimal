#!/bin/bash 

#######################################################################
# Title      :    autorun
# Author     :    Mathias Kraut, Uwe Stark
# Date       :    2012-11-08
# Version   :	  1.0.0
#######################################################################
# Description
#   adds an script to run on startup - creating samba share for
# Note:
#   - 
#######################################################################


echo '#!/bin/bash' > /etc/rc.local
echo '# autorun skript'
echo 'bash /autorun/autorun.sh' >> /etc/rc.local
echo 'exit 0' >> /etc/rc.local

rm -R /autorun
mkdir /autorun

echo '#!/bin/bash' > /autorun/autorun.sh
echo 'sleep 7' >> /autorun/autorun.sh

chmod 777 -R /autorun

# add samba share for autorun config
echo "" >> /etc/samba/smb.conf
echo "[autorun]" >> /etc/samba/smb.conf
echo "path = /autorun"  >> /etc/samba/smb.conf
echo "guest ok = yes" >> /etc/samba/smb.conf
echo "writeable = yes" >> /etc/samba/smb.conf
echo "browseable = yes" >> /etc/samba/smb.conf
echo "create mode = 0777" >> /etc/samba/smb.conf
echo "directory mode = 0777" >> /etc/samba/smb.conf
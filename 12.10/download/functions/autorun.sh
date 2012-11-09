#!/bin/bash 

# --> prepare autorun  <--

echo '#!/bin/bash' > /etc/rc.local
echo '# autorun skript'
echo 'bash ./autorun/autorun.sh' >> /etc/rc.local
echo 'exit 0' >> /etc/rc.local

rm -R /autorun
mkdir /autorun

echo '#!/bin/bash' > /autorun/autorun.sh
echo 'sleep 7' >> /autorun/autorun.sh

chmod 777 -R /autorun

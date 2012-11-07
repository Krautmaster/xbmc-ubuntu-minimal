#!/bin/bash  

# --> MaraschinoSetup  <-

cd /usr/src/

rm -R /opt/maraschino

git clone https://github.com/mrkipling/maraschino.git /opt/maraschino

cp /opt/maraschino/initd /etc/init.d/maraschino

cp /opt/maraschino/default /etc/default/maraschino

chmod a+x /etc/init.d/maraschino

update-rc.d maraschino defaults

/etc/init.d/maraschino start


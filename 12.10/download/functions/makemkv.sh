#!/bin/bash 

sudo apt-get -y install build-essential libc6-dev libssl-dev libexpat1-dev libgl1-mesa-dev libqt4-dev > /dev/null 2>&1
cd /usr/src > /dev/null 2>&1
rm -R makemkv > /dev/null 2>&1
mkdir makemkv > /dev/null 2>&1
cd makemkv > /dev/null 2>&1
wget http://www.makemkv.com/download/makemkv-bin-$MAKEMKV_VERSION.tar.gz > /dev/null 2>&1
wget http://www.makemkv.com/download/makemkv-oss-$MAKEMKV_VERSION.tar.gz > /dev/null 2>&1
tar xfvz makemkv-bin-$MAKEMKV_VERSION.tar.gz > /dev/null 2>&1
tar xfvz makemkv-oss-$MAKEMKV_VERSION.tar.gz > /dev/null 2>&1
cd makemkv-oss-$MAKEMKV_VERSION > /dev/null 2>&1
echo '#!/bin/bash' > src/ask_eula.sh
echo 'exit 0' >> src/ask_eula.sh
make -f makefile.linux > /dev/null 2>&1
clear
sudo make -f makefile.linux install 
cd ../makemkv-bin-$MAKEMKV_VERSION
make -f makefile.linux
sudo make -f makefile.linux install
 
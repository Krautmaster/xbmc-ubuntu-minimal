#!/bin/bash 

sudo apt-get -y install build-essential libc6-dev libssl-dev libexpat1-dev libgl1-mesa-dev libqt4-dev 
cd /usr/src 
rm -R makemkv 
mkdir makemkv 
cd makemkv 
wget http://www.makemkv.com/download/makemkv-bin-$MAKEMKV_VERSION.tar.gz 
wget http://www.makemkv.com/download/makemkv-oss-$MAKEMKV_VERSION.tar.gz 
tar xfvz makemkv-bin-$MAKEMKV_VERSION.tar.gz 
tar xfvz makemkv-oss-$MAKEMKV_VERSION.tar.gz 
cd makemkv-oss-$MAKEMKV_VERSION 
echo '#!/bin/bash' > src/ask_eula.sh
echo 'exit 0' >> src/ask_eula.sh
make -f makefile.linux 
clear
sudo make -f makefile.linux install 
cd ../makemkv-bin-$MAKEMKV_VERSION
make -f makefile.linux
sudo make -f makefile.linux install
 
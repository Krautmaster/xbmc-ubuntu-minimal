#!/bin/sh

# --> MakeMKV installen <--

sudo apt-get update

sudo apt-get -y install build-essential libc6-dev libssl-dev libexpat1-dev libgl1-mesa-dev libqt4-dev

cd /usr/src

rm -R makemkv

mkdir makemkv

cd makemkv

wget http://www.makemkv.com/download/makemkv-bin-1.7.9.tar.gz

wget http://www.makemkv.com/download/makemkv-oss-1.7.9.tar.gz

tar xfvz makemkv-bin-1.7.*.tar.gz

tar xfvz makemkv-oss-1.7.*.tar.gz

cd makemkv-oss-1.7.*

make -f makefile.linux

sudo make -f makefile.linux install

cd ../makemkv-bin-1.7.*

make -f makefile.linux

sudo make -f makefile.linux install
#!/bin/bash

clear
echo "--------------------------------------------------------------------"
echo "------------------  Starting Relay Setup Init  ---------------------"
echo "--------------------------------------------------------------------"

sleep 1

sudo apt-get update
sudo apt-get install -y nload htop git build-essential 

cd ~
git clone git://git.videolan.org/bitstream.git
cd bitstream
make install

cd ~
mkdir apps
cd ~/apps
git clone https://github.com/mmalecki/multicat.git

cd ~/apps/multicat/trunk
pwd
make
make install

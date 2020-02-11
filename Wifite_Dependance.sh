#!/bin/bash
sudo apt install -y wifite hashcat hcxdumptool macchanger git

#Bully
git clone https://github.com/aanarchyy/bully
cd bully*/
cd src/
make

cd ../..

#Pyrit



#Hcxtools
git clone https://github.com/ZerBea/hcxtools.git
make
sudo make install

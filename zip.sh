#!/bin/bash
sudo apt-get install unzip zip -y
clear
sudo apt-get install wget -y
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-386.zip
unzip *.zip
clear
ls 
cd ngrok-stable-linux-386
chmod +x ngrok
./ngrok authtoken 2iv4LMsKSUsE4LVccZSjK_4vg5TYQ2UupWNA9qetpjq
exit

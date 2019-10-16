#!/bin/bash
sudo apt-get install pv -y
sudo apt-get install figlet -y
clear
sudo apt-get install wget -y
sudo apt-get install firefox -y
clear

sudo apt -y install vnc4server
sudo apt install xfce4 xfce4-goodies -y
clear
figlet "Password For VNC Server" | pv -qL 120 
sleep 3s 
vncpasswd

vncserver -geometry 1024x768

bash zip.sh

exit
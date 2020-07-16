#!/bin/bash
# Install X, LXDE, VPN programs
sudo apt-get install nano -y
sudo apt-get install xorg lxde-core tightvncserver -y
clear 
# Start VNC to create config file

tightvncserver :1

# Then stop VNC

tightvncserver -kill :1


# Adding require config file to xstrtup file :
echo "lxterminal &
/usr/bin/lxsession -s LXDE &" >> ~/.vnc/xstartup

# Restart VNC

tightvncserver :1
clear 
echo -e 'Installing ....'

sudo apt-get install unzip zip -y
clear
sudo apt-get install wget -y
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-386.zip
unzip *.zip
clear
chmod +x ngrok
./ngrok authtoken 2iv4LMsKSUsE4LVccZSjK_4vg5TYQ2UupWNA9qetpjq
echo ' '

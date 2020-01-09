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

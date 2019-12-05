#!/bin/bash
# Install X, LXDE, VPN programs
sudo apt-get install nano -y
sudo apt-get install xorg lxde-core tightvncserver

# Start VNC to create config file

tightvncserver :1

# Then stop VNC

tightvncserver -kill :1

# Edit config file to start session with LXDE:

nano ~/.vnc/xstartup

# Add this at the bottom of the file:
lxterminal &
/usr/bin/lxsession -s LXDE &

# Restart VNC

tightvncserver :1

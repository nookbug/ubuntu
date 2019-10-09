#!/bin/bash
sudo apt-get install curl -y
clear
mkdir infosec
cd infosec
curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && chmod 755 msfinstall && ./msfinstall
exit

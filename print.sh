#!/bin/bash 
#this program is for seting up apktools in server.
#13-7-2020/11:03 PM 
sudo apt-get install pv -y > /dev/null 2>&1
clear 
sudo apt-get install figlet -y > /dev/null 2>&1
clear 
sudo apt-get install curl -y > /dev/null 2>&1
clear
echo -e '\e[5;49;92mInstallig \e[5;49;93mPackages,\e[0;30mPlease wait!'
sudo apt-get install wget -y > /dev/null 2>&1
sleep 0.5
clear 
echo -e '\e[7;45;31m Finished....'
sleep 2
clear 
#line is to print row 
line(){
rows=25
for((r=1; r<=rows; r++))
do 
   echo -n '#'
echo -n"   "

done 
}
curl https://raw.githubusercontent.com/iBotPeaches/Apktool/master/scripts/linux/apktool > apktool    
sudo mv apktool /usr/local/bin
wget https://bitbucket.org/iBotPeaches/apktool/downloads/apktool_2.4.1.jar 
mv apktool_2.4.1.jar apktool.jar 
sudo mv apktool.jar /usr/local/bin/
chmod +x apktool
echo -e "			\e[4;49;92mDone!"

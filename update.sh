#!/bin/bash 
sleep 5
List=$(ps -aux | grep '/gui.py' | head -n 1 | cut -d " " -f8)
kill $List
apt install git-all -y
mkdir /tmp/updt
cd /tmp/updt
git clone https://github.com/FuocomanSap/P4wnP1_aloa_oled_menu.git
cd P4wnP1_aloa_oled_menu/
/bin/bash install.sh &

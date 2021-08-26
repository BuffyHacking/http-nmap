#!/bin/bash
sudo echo ""
echo " _   _                       "
echo "| \ | |_ __ ___   ____ ____  "
echo "|  \| |  _   _ \ / _  |  _ \ "
echo "| |\  | | | | | | (_| | |_) |"
echo "|_| \_|_| |_| |_|\__,_| .__/ "
echo "                      |_|    "
echo ""
while true; do
nmo=`nmap localhost | grep open`
nmc=`nmap localhost | grep closed`
nmf=`nmap localhost | grep filtered`
nmu=`nmap localhost | grep unfiltered`
sleep 300
sudo rm /var/www/html/nmap.html
echo "<title>Nmap</title><br><h1>" | sudo tee -a /var/www/html/nmap.html &> /dev/null
echo "$nmc <br>" | sudo tee -a /var/www/html/nmap.html &> /dev/null
echo "$nmo <br>" | sudo tee -a /var/www/html/nmap.html &> /dev/null
echo "$nmf <br>" | sudo tee -a /var/www/html/nmap.html &> /dev/null
echo "$nmu <br>" | sudo tee -a /var/www/html/nmap.html &> /dev/null
echo "</h1>" | sudo tee -a /var/www/html/nmap.html &>/dev/null
echo "Nmap Succesfully Updated!"
done

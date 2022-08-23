#!/bin/bash

echo "Getting system updates"
apt update -y
echo "Finished"

echo "Upgrading system"
apt upgrade -y
echo "Finished"

echo "Installing apache"
apt install apache2 -y
echo "Finished installing apache"

echo "Intalling unzip"
apt install unzip -y
echo "Finished"

echo "Installing wget"
apt install wget
echo "Finalizando"

echo "Downloading File"
wget -P /tmp https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip 
echo "Download finished"

echo "Unziping file"
unzip /tmp/main.zip -d /tmp
echo "Finishied unziping. Moving file"
cp -R /tmp/linux-site-dio-main/* /var/www/html






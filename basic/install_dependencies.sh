#!/bin/bash

#update current packages
sudo apt-get update -y
sudo apt-get upgrade -y

#install p7zip for extraction zip files
sudo apt-get install p7zip-full -y

#install unrar
wget http://sourceforge.net/projects/bananapi/files/unrar_5.0.10-1_armhf.deb
sudo dpkg -i unrar_5.0.10-1_armhf.deb

#install some other dependencies
sudo apt-get install python-cheetah git-core -y

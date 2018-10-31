#!/bin/bash

#add mono repository (raspbian 8 - jessie - works for osmc) - required for jackett
#sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
#echo "deb http://download.mono-project.com/repo/debian raspbianjessie main" | sudo tee /etc/apt/sources.list.d/mono-official.list
#sudo apt-get update

#install mono - required for jackett
#sudo apt-get install mono-devel -y

#install p7zip for extraction zip files
sudo apt-get install p7zip-full -y

#install unrar
sudo apt-get install unrar -y

#install some other dependencies
sudo apt-get install python-cheetah git-core libcurl4-openssl-dev jq nodejs -y

#install sickrage specific dependencies
sudo apt-get install python-setuptools build-essential python-dev libffi-dev libssl-dev libxml2-dev libxslt1-dev zlib1g-dev -y

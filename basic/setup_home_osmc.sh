#!/bin/bash

#we assume that there is usb0 device mounted

#go to osmc home folder
cd /home/osmc

#remove original folders
rm -R Movies
rm -R Music
rm -R Music
rm -R Pictures
rm -R TV\ Shows

#create links to folders on usb0 device
ln -s /media/usb0/Movies Movies
ln -s /media/usb0/TVShows TVShows
ln -s /media/usb0/MoviesBG MoviesBG
ln -s /media/usb0/transmission/downloads downloads
ln -s /media/usb0/transmission/torrents torrents
ln -s /media/usb0/transmission/incomplete incomplete

#create debian-transmission folder and links
mkdir debian-transmission
ln -s /media/usb0/debian-transmission/downloads debian-transmission/downloads
ln -s /media/usb0/debian-transmission/torrents debian-transmission/torrents
ln -s /media/usb0/debian-transmission/incomplete debian-transmission/incomplete

sudo chown debian-transmission:debian-transmission -R debian-transmission
sudo chmod g+w -R debian-transmission

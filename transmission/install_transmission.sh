#!/bin/bash


sudo apt-get install transmission-daemon

#add the debian-transmission user to the osmc group
sudo usermod -a -G osmc debian-transmission

/etc/init.d/transmission-daemon stop
cp transmission_settings.json /etc/transmission-daemon/settings.json
cp torrent-done.sh /home/osmc/debian-transmission/torrent-done.sh
/etc/init.d/transmission-daemon start

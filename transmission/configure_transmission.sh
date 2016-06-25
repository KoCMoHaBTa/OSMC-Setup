#!/bin/bash

sudo service transmission stop
cp transmission_settings.json /home/osmc/.config/transmission-daemon/settings.json
cp torrent-done.sh /home/osmc/Downloads/torrent-done.sh
sudo service transmission start

#!/bin/bash

git clone https://github.com/SickRage/SickRage.git /home/osmc/Install/sickrage

sudo cp sickrage_defaults /etc/default/sickrage
sudo cp /home/osmc/Install/sickrage/runscripts/init.ubuntu /etc/init.d/sickrage
sudo chmod +x /etc/init.d/sickrage

sudo chmod +x /etc/default/sickrage
sudo update-rc.d sickrage defaults


#!/bin/bash

#remove old installation
rm -Rf /home/osmc/Install/sickrage

#clone the repo
git clone https://github.com/SickRage/SickRage.git /home/osmc/Install/sickrage

#copy the preloaded configuration
cp sickrage_config.ini /home/osmc/Install/sickrage/config.ini

#setup the service
sudo cp sickrage_defaults /etc/default/sickrage
sudo cp /home/osmc/Install/sickrage/runscripts/init.ubuntu /etc/init.d/sickrage
sudo chmod +x /etc/init.d/sickrage

sudo chmod +x /etc/default/sickrage
sudo update-rc.d sickrage defaults


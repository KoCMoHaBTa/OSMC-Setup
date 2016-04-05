#!/bin/bash

sudo git clone https://github.com/SickRage/SickRage.git /opt/sickrage
sudo chown -R osmc:osmc /opt/sickrage

sudo cp sickrage_defaults /etc/default/sickrage
sudo cp /opt/sickrage/runscripts/init.ubuntu /etc/init.d/sickrage
sudo chmod +x /etc/init.d/sickrage

sudo chmod +x /etc/default/sickrage
sudo update-rc.d sickrage defaults


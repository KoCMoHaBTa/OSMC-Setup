#!/bin/bash

#remove old installation
rm -Rf /home/osmc/Install/sickchill

#clone the repo
git clone https://github.com/SickChill/SickChill.git /home/osmc/Install/sickchill

#copy the preloaded configuration
cp sickchill_config.ini /home/osmc/Install/sickchill/config.ini

#setup the service
sudo cp sickchill_defaults /etc/default/sickchill
sudo cp /home/osmc/Install/sickchill/contrib/runscripts/init.ubuntu /etc/init.d/sickchill
sudo chmod +x /etc/init.d/sickchill

sudo chmod +x /etc/default/sickchill
sudo update-rc.d sickchill defaults


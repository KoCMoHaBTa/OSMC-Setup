#!/bin/bash

#remove old installation
rm -Rf /home/osmc/Install/couchpotato

#clone the repo
git clone https://github.com/RuudBurger/CouchPotatoServer.git /home/osmc/Install/couchpotato

#copy the configuration
cp couchpotato_settings.conf /home/osmc/Install/couchpotato/settings.conf

#setup the service
sudo cp couchpotato_defaults /etc/default/couchpotato
sudo cp /home/osmc/Install/couchpotato/init/ubuntu /etc/init.d/couchpotato
sudo chmod +x /etc/init.d/couchpotato

sudo chmod +x /etc/default/couchpotato
sudo update-rc.d couchpotato defaults

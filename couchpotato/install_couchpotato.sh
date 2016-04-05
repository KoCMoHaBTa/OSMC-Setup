#!/bin/bash

sudo git clone https://github.com/RuudBurger/CouchPotatoServer.git /opt/couchpotato
sudo chown osmc:osmc -R /opt/couchpotato

sudo cp couchpotato_defaults /etc/default/couchpotato
sudo cp /opt/couchpotato/init/ubuntu /etc/init.d/couchpotato
sudo chmod +x /etc/init.d/couchpotato

sudo chmod +x /etc/default/couchpotato
sudo update-rc.d couchpotato defaults

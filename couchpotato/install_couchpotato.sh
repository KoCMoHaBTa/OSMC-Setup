#!/bin/bash

git clone https://github.com/RuudBurger/CouchPotatoServer.git /home/osmc/Install/couchpotato

sudo cp couchpotato_defaults /etc/default/couchpotato
sudo cp /home/osmc/Install/couchpotato/init/ubuntu /etc/init.d/couchpotato
sudo chmod +x /etc/init.d/couchpotato

sudo chmod +x /etc/default/couchpotato
sudo update-rc.d couchpotato defaults

#!/bin/bash

CP_API_KEY=22bd1c8b35a7429985547f5a349f7b3d

#trigger sickrage post processing for TVShows dir
python /home/osmc/Install/sickrage/autoProcessTV/sabToSickBeard.py /home/osmc/Downloads/TVShows/

#trigger couchpotato post processing for Movies dir
wget -qO /dev/null http://localhost:5050/api/$CP_API_KEY/renamer.scan

#move MoviesBG
mv /home/osmc/Downloads/MoviesBG/* /home/osmc/MoviesBG/

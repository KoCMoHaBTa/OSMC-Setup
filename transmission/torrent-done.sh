#!/bin/bash

#trigger sickrage post processing for TVShows dir
python /home/osmc/Install/sickrage/autoProcessTV/sabToSickBeard.py /home/osmc/Downloads/TVShows/

#trigger couchpotato post processing for Movies dir
wget -qO /dev/null http://localhost:5050/api/4ffad3e8fc7646c09b63420a0ed53550/renamer.scan

#move MoviesBG
mv /home/osmc/Downloads/MoviesBG/* /home/osmc/MoviesBG/

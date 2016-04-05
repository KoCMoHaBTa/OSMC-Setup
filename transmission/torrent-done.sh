#!/bin/bash

#give all folders group write access so files can be moved by sickrage and couchpotato which will run under osmc user
chmod g+w -R /home/osmc/debian-transmission/downloads/*
chmod g+w -R /home/osmc/debian-transmission/downloads/TVShows/*
chmod g+w -R /home/osmc/debian-transmission/downloads/Movies/*

#trigger sickrage post processing for TVShows dir
python /opt/sickrage/autoProcessTV/sabToSickBeard.py /home/osmc/debian-transmission/downloads/TVShows/

#trigger couchpotato post processing for Movies dir
wget -qO /dev/null http://1.1.1.10:5050/api/4ffad3e8fc7646c09b63420a0ed53550/renamer.scan

#move MoviesBG
mv /home/osmc/debian-transmission/downloads/MoviesBG/* /home/osmc/MoviesBG/

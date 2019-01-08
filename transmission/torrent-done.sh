#!/bin/bash

SR_API_KEY=7d2690dc6a3093fce39aea998ee4d729
CP_API_KEY=22bd1c8b35a7429985547f5a349f7b3d

#trigger sickrage post processing for TVShows dir
wget -qO /dev/null http://localhost:8081/api/$SR_API_KEY/?cmd=postprocess

#trigger couchpotato post processing for Movies dir
wget -qO /dev/null http://localhost:5050/api/$CP_API_KEY/renamer.scan

#move MoviesBG
mv /home/osmc/Downloads/MoviesBG/* /home/osmc/MoviesBG/

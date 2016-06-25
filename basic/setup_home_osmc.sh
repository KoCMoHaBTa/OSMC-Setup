#!/bin/bash

function usage
{
    echo "Description: Setup the OSMC home directory layout"
    echo "Usage: setup_home_osmc.sh <media storage path> <install storage path>"
}

function fail
{
    echo ""
    echo "=> $1" 1>&2
    echo ""
    usage
    echo ""
    exit 1
}

#provide the path to your media storage
MEDIA_STORAGE=$1
INSTALL_STORAGE=$2

[ -n "$MEDIA_STORAGE" ] || fail "No media storage path provided"
[ -n "$INSTALL_STORAGE" ] || fail "No install storage path provided"

#go to osmc home folder
cd /home/osmc

#remove original folders
rm -R Movies
rm -R Music
rm -R Pictures
rm -R TV\ Shows

#remove setup folders if the script is run again
rm -R TVShows
rm -R Downloads
rm -R MoviesBG
rm -R Install

#create links to folders on media storage path
ln -s $MEDIA_STORAGE/Movies Movies
ln -s $MEDIA_STORAGE/Music Music
ln -s $MEDIA_STORAGE/Pictures Pictures
ln -s TVShows TV\ Shows
ln -s $MEDIA_STORAGE/TVShows TVShows
ln -s $MEDIA_STORAGE/Downloads Downloads
ln -s $MEDIA_STORAGE/MoviesBG MoviesBG
ln -s $INSTALL_STORAGE Install

#this script performs one time install of all media center stuffs

function usage
{
    echo "Description: Setup the OSMC"
    echo "Usage: setup.sh <media storage path> <install storage path>"
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

cd basic
./setup_home_osmc.sh $MEDIA_STORAGE $INSTALL_STORAGE
./install_dependencies.sh
cd ..

cd transmission
./configure_transmission.sh
cd ..

#cd couchpotato
#./install_couchpotato.sh
#cd .. 

#cd sickchill
#./install_sickchill.sh
#cd ..

#cd jackett
#./install_jackett.sh
#cd ..

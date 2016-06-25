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

basic/setup_home_osmc.sh $MEDIA_STORAGE $INSTALL_STORAGE
basic/install_dependencies.sh

transmission/configure_transmission.sh
couchpotato/install_couchpotato.sh
sickrage/install_sickrage.sh

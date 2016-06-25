# OSMC-Setup

OSMC Media Center Setup Scripts


1. Install OSMC
-  Update OSMC from UI
-  Install Transmission from OSMC AppStore UI
-  Install SMB Server from OSMC AppStore UI
-  SSH into OSMC  

		ssh osmc@<rpi_ip_address>
			
-  Install `git`

		sudo apt-get install git -y
	 
-  Clone this repository and go to OSMC-Setup folder

		git clone https://github.com/KoCMoHaBTa/OSMC-Setup.git
		cd OSMC-Setup
		
-  Run `setup.sh` by providing **media storage path** and **install storage path**
	- media storage path - the path where media will be stored - usually a usb mount or a smb share/nas mount.
	- install storage path - the path where sickrage and couchpotato will be installed, for example `/opt`
#remove old installation
rm -Rf /home/osmc/Install/Jackett

#download and isntall
wget $(curl -s https://api.github.com/repos/Jackett/Jackett/releases/latest | jq -r ".assets[] | select(.name==\"Jackett.Binaries.Mono.tar.gz\") | .browser_download_url" )
tar -zxvf Jackett.Binaries.Mono.tar.gz
mv Jackett /home/osmc/Install/jackett

#cleanup
rm Jackett.Binaries.Mono.tar.gz

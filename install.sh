#!/bin/sh

# Winsock -> winsock

sudo apt-get update

#https://stackoverflow.com/questions/23671727/error-with-sudo-apt-get-dictionnary-commons-since-update-to-ubuntu-14-04
# install debconf?
sudo apt-get install -y debconf
sudo /usr/share/debconf/fix_db.pl

# OHOL dev
sudo apt-get install -y git stgit g++ imagemagick xclip make libsdl1.2-dev libglu1-mesa-dev libgl1-mesa-dev g++-mingw-w64 p7zip-full

# VM GUI desktop
sudo apt-get install -y xfce4 virtualbox-guest-dkms virtualbox-guest-utils virtualbox-guest-x11 build-essential
sudo VBoxClient --clipboard
sudo VBoxClient --display
sudo VBoxClient --checkhostversion
sudo VBoxClient --seamless
sudo usermod -a -G audio vagrant

#desktop command: startxfce4&

cd /ohol/
./fetch_latest_tagged.sh
./build_server.sh
./link_server_directories.sh # run in git bash under windows; see also script
#./pullAndBuildLatest 
#./pullAndBuildTestSystem.sh 
cd OneLife/server/
../../configure_settings.sh

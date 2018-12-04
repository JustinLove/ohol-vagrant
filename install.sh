#!/bin/sh

# Winsock -> winsock

sudo apt-get update

#https://stackoverflow.com/questions/23671727/error-with-sudo-apt-get-dictionnary-commons-since-update-to-ubuntu-14-04
# install debconf?
sudo apt-get install -y debconf
sudo /usr/share/debconf/fix_db.pl

# OHOL dev
sudo apt-get install -y git stgit g++ imagemagick xclip make libsdl1.2-dev libglu1-mesa-dev libgl1-mesa-dev

cd /ohol/
./fetch_latest_tagged.sh

# Server
#./link_server_directories.sh # run in git bash under windows; see also script
#./build_server.sh
#./configure_settings.sh

# Cross Compile
#./link_client_directories.sh # run in git bash under windows; see also script
#sudo apt-get install -y g++-mingw-w64-i686 p7zip-full
#./install_mingw.sh
#./build_client_cross.sh

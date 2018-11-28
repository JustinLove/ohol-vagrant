#!/bin/sh

sudo apt-get update

# OHOL dev
sudo apt-get install -y git g++ imagemagick xclip make libsdl1.2-dev libglu1-mesa-dev libgl1-mesa-dev

# VM GUI desktop
sudo apt-get install -y xfce4 virtualbox-guest-dkms virtualbox-guest-utils virtualbox-guest-x11
sudo VBoxClient --clipboard
sudo VBoxClient --draganddrop
sudo VBoxClient --display
sudo VBoxClient --checkhostversion
sudo VBoxClient --seamless

cd /ohol/
./fetch_latest_tagged.sh
./build_server.sh
#./pullAndBuildLatest 
#./pullAndBuildTestSystem.sh 
cd OneLife/server/
../../configure_settings.sh

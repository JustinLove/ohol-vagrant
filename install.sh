#!/bin/sh

sudo apt-get update
sudo apt-get install -y git g++ imagemagick xclip make libsdl1.2-dev libglu1-mesa-dev libgl1-mesa-dev
cd /ohol/
./fetch_latest_tagged.sh
./build_server.sh
#./pullAndBuildLatest 
#./pullAndBuildTestSystem.sh 
cd OneLife/server/
../../configure_settings.sh

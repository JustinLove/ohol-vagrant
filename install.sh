#!/bin/sh

sudo apt-get update
sudo apt-get install git g++ imagemagick xclip make libsdl1.2-dev libglu1-mesa-dev libgl1-mesa-dev
cd /ohol/
./pullAndBuildLatest 
./pullAndBuildTestSystem.sh 
cd OneLife/server/

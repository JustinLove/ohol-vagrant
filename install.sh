#!/bin/sh

sudo apt-get update
sudo apt-get install -y git g++ imagemagick xclip make libsdl1.2-dev libglu1-mesa-dev libgl1-mesa-dev
cd /ohol/
./pullAndBuildLatest 
./pullAndBuildTestSystem.sh 
cd OneLife/server/
echo 0 > settings/requireTicketServerCheck.ini
echo 0 > settings/useStatsServer.ini
echo 0 > settings/allowBugReports.ini
echo 0 > settings/apocalypsePossible.ini
> settings/reflectorURL.ini
echo 1 > settings/forceEveLocation.ini

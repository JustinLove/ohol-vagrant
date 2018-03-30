#!/bin/sh

sudo apt-get update
sudo apt-get install git g++ imagemagick xclip make libsdl1.2-dev libglu1-mesa-dev libgl1-mesa-dev
cd /ohol/
./pullAndBuildLatest 
./pullAndBuildTestSystem.sh 
cd OneLife/server/
echo 0 > /ohol/OneLife/server/settings/allowBugReports.ini
echo 0 > /ohol/OneLife/server/settings/requireTicketServerCheck.ini
echo 0 > /ohol/OneLife/server/settings/useStatsServer.ini

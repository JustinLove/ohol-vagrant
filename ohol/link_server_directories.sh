#!/bin/sh

# This may need to be run in git bash under windows, not inside the VM. Or run the VM as admin, but the VM has to be COMPLETELY rebuilt every time you switch from user to admin

cd OneLife/server

if [ ! -h categories ]
then
  ln -s ../../OneLifeData7/categories .
fi

if [ ! -h objects ]
then
  ln -s ../../OneLifeData7/objects .
fi

if [ ! -h transitions ]
then
  ln -s ../../OneLifeData7/transitions .
fi

if [ ! -h tutorialMaps ]
then
  ln -s ../../OneLifeData7/tutorialMaps .
fi

if [ ! -h dataVersionNumber.txt ]
then
  ln -s ../../OneLifeData7/dataVersionNumber.txt .
fi

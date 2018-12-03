#!/bin/sh

# This may need to be run in git bash under windows, not inside the VM. Or run the VM as admin, but the VM has to be COMPLETELY rebuilt every time you switch from user to admin

cd OneLife/gameSource

if [ ! -h animations ]
then
  ln -s ../../OneLifeData7/animations .
fi

if [ ! -h categories ]
then
  ln -s ../../OneLifeData7/categories .
fi

if [ ! -h ground ]
then
  ln -s ../../OneLifeData7/ground .
fi

if [ ! -h music ]
then
  ln -s ../../OneLifeData7/music .
fi

if [ ! -h objects ]
then
  ln -s ../../OneLifeData7/objects .
fi

if [ ! -h overlays ]
then
  ln -s ../../OneLifeData7/overlays .
fi

if [ ! -h scenes ]
then
  ln -s ../../OneLifeData7/scenes .
fi

if [ ! -h sounds ]
then
  ln -s ../../OneLifeData7/sounds .
fi

if [ ! -h sprites ]
then
  ln -s ../../OneLifeData7/sprites .
fi

if [ ! -h transitions ]
then
  ln -s ../../OneLifeData7/transitions .
fi

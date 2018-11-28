#!/bin/sh

cd OneLife

./configure 1

cd gameSource

make

echo 1 > settings/useCustomServer.ini

sh ./makeEditor.sh

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

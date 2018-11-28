#!/bin/sh

cd OneLife/server
./configure 1
make

if [ ! -h dataVersionNumber.txt ]
then
  ln -s ../../OneLifeData7/categories .
fi

if [ ! -h dataVersionNumber.txt ]
then
  ln -s ../../OneLifeData7/objects .
fi

if [ ! -h dataVersionNumber.txt ]
then
  ln -s ../../OneLifeData7/transitions .
fi

if [ ! -h dataVersionNumber.txt ]
then
  ln -s ../../OneLifeData7/tutorialMaps .
fi

if [ ! -h dataVersionNumber.txt ]
then
  ln -s ../../OneLifeData7/dataVersionNumber.txt .
fi

git for-each-ref --sort=-creatordate --format '%(refname:short)' --count=1 refs/tags/OneLife_v* | sed -e 's/OneLife_v//' > serverCodeVersionNumber.txt

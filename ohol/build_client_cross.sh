#!/bin/sh

cd OneLife

cd gameSource

make clean

cd ..

./configure 5

cd gameSource

make

cp /usr/i686-w64-mingw32/lib/SDL.dll ./

#!/bin/sh

cd OneLife

cd gameSource

make clean

cd ..

./configure 5

cd gameSource

make

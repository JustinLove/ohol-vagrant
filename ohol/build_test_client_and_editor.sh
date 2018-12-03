#!/bin/sh

cd OneLife

./configure 1

cd gameSource

make

echo 1 > settings/useCustomServer.ini

sh ./makeEditor.sh

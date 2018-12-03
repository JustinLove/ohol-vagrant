#!/bin/sh

cd OneLife/server
./configure 1
make

git for-each-ref --sort=-creatordate --format '%(refname:short)' --count=1 refs/tags/OneLife_v* | sed -e 's/OneLife_v//' > serverCodeVersionNumber.txt

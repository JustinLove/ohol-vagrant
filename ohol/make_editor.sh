#!/bin/sh

cd OneLife/gameSource

mv makeFileList makeFileList.bak

cp makeFileListEditor makeFileList


# e.g. make_editor.sh clean
make $1 $2 $3 $4 $5

mv makeFileList.bak makeFileList

cp /usr/i686-w64-mingw32/lib/libpng16-16.dll ./
cp /usr/i686-w64-mingw32/lib/zlib1.dll ./

#!/bin/bash

# Usage:  ./build.sh CouchDb_Mac.zip
mkdir temp
git clone https://github.com/garden20/garden-futon.git temp
mkdir dist
unzip "$1" -d dist
mv "dist/CouchDB Server.app" dist/Garden.app
cp assets/Info.plist dist/Garden.app/Contents/Info.plist
cp assets/CouchDb.icns dist/Garden.app/Contents/Resources/CouchDb.icns
cp assets/CouchDb-Status-bw.png dist/Garden.app/Contents/Resources/CouchDb-Status-bw.png
cp assets/CouchDb-Status.png dist/Garden.app/Contents/Resources/CouchDb-Status.png
cp assets/ensure_full_commit.sh dist/Garden.app/Contents/Resources/ensure_full_commit.sh
cp assets/local.ini dist/Garden.app/Contents/Resources/couchdbx-core/etc/couchdb/local.ini
cp -r temp/www dist/Garden.app/Contents/Resources/couchdbx-core/share/couchdb/
ditto -ck --rsrc --sequesterRsrc dist temp/garden_for_osx.zip
#zip -r garden_for_osx.zip Garden.app
rm -r dist/Garden.app
mv temp/garden_for_osx.zip dist/garden_for_osx.zip

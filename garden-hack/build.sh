#!/bin/bash

# Usage:  ./build.sh CouchDb_Mac.zip
mkdir temp
mkdir dist
unzip "$1" -d dist
mv "dist/CouchDB Server.app" dist/Garden.app
cp assets/Info.plist dist/Garden.app/Contents/Info.plist
cp assets/CouchDb-Status-bw.png dist/Garden.app/Contents/Resources/CouchDb-Status-bw.png
cp assets/CouchDb-Status.png dist/Garden.app/Contents/Resources/CouchDb-Status.png
cp assets/ensure_full_commit.sh dist/Garden.app/Contents/Resources/ensure_full_commit.sh
cp assets/local.ini dist/Garden.app/Contents/Resources/couchdbx-core/etc/couchdb/local.ini



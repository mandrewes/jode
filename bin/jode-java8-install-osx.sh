#!/bin/bash

WORK=/tmp/jode

mkdir -p $WORK

cd $WORK

wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u102-b14/jdk-8u102-macosx-x64.dmg

# http://sdlc-esd.oracle.com/ESD6/JSCDL/jdk/8u101-b13/jre-8u101-macosx-x64.dmg?GroupName=JSC&FilePath=/ESD6/JSCDL/jdk/8u101-b13/jre-8u101-macosx-x64.dmg&BHost=javadl.sun.com&File=jre-8u101-macosx-x64.dmg&AuthParam=1471996221_b6cfcdf306138ee606aec873d1238c46&ext=.dmg

# rpm -Uvh jdk-8u102-linux-x64.rpm

hdiutil attach jdk-8u102-macosx-x64.dmg

sudo installer -package "/Volumes/JDK 8 Update 102/JDK 8 Update 102.pkg" -target /


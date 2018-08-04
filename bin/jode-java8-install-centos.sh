#!/bin/bash

WORK=/tmp/jode
JDK_URL=http://download.oracle.com/otn-pub/java/jdk/8u181-b13/96a7b8442fe848ef90c96a2fad6ed6d1/jdk-8u181-linux-x64.rpm
JCE_URL=http://download.oracle.com/otn-pub/java/jce/8/jce_policy-8.zip
mkdir -p $WORK

cd $WORK

wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" $JDK_URL

wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" $JCE_URL

rpm -Uvh jdk-*.rpm

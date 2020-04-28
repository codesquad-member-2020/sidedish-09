#!/bin/bash

BASE_DIR=$(pwd)
REMOTE=$(git rev-parse origin/master)
LOCAL=$(git rev-parse HEAD)
NGINX_STATIC_DIR=/var/www/html
TOMCAT_DIR=$HOME/tomcat

echo ">>> check github repository"
if [ $REMOTE != $LOCAL ]; then
    echo ">>> github pull"
    git pull
fi

echo ">>> Stop nginx, tomcat "
service nginx stop
$TOMCAT_DIR/bin/shutdown.sh

echo ">>> Delete react file and webapps file"
rm -rf $NGINX_STATIC_DIR/*
rm -rf $TOMCAT_DIR/webapps/*

echo ">>> Build front-end"
npm run build --prefix FE/sidedish
mv $BASE_DIR/FE/sidedish/build/* $NGINX_STATIC_DIR/

echo ">>> Build back-end"
cd BE
./gradlew bootWar
mv $BASE_DIR/BE/build/libs/be-0.0.1-SNAPSHOT.war $BASE_DIR/BE/build/libs/ROOT.war
mv $BASE_DIR/BE/build/libs/ROOT.war $TOMCAT_DIR/webapps/

echo ">>> Start nginx and tomcat"
service nginx start
$TOMCAT_DIR/bin/startup.sh

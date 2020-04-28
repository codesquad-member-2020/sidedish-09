#!/bin/bash

echo ">>> Stop nginx and tomcat "
service nginx stop
$HOME/tomcat/bin/shutdown.sh
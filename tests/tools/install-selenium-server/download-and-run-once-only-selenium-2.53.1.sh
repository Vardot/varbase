#!/bin/bash

echo "Getting selenium server standalone 2.53.1\n"
wget http://selenium-release.storage.googleapis.com/2.53/selenium-server-standalone-2.53.1.jar
java -jar selenium-server-standalone-2.31.0.jar -port 4445 > /dev/null &
echo "[  OK  ] Starting Selenium on the 4445 port ..."


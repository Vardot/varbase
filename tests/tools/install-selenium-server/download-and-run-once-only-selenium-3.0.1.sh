#!/bin/bash

echo "Getting selenium server standalone 3.0.1\n"
wget http://selenium-release.storage.googleapis.com/3.0-beta3/selenium-server-standalone-3.0.1.jar
java -jar selenium-server-standalone-3.0.1 -port 4445 > /dev/null &
echo "[  OK  ] Starting Selenium on the 4445 port ..."

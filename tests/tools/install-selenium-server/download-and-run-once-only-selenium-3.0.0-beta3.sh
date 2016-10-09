#!/bin/bash

echo "Getting selenium server standalone 3.0.0-beta3\n"
wget http://selenium-release.storage.googleapis.com/3.0-beta3/selenium-server-standalone-3.0.0-beta3.jar
java -jar selenium-server-standalone-3.0.0-beta3 -port 4445 > /dev/null &
echo "[  OK  ] Starting Selenium on the 4445 port ..."

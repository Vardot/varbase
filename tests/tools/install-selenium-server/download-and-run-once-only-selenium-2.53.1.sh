#!/bin/bash

echo "Getting selenium server standalone 3.9.1\n"
wget http://selenium-release.storage.googleapis.com/3.9/selenium-server-standalone-3.9.1.jar
java -jar selenium-server-standalone-3.9.1.jar -port 4445 > /dev/null &
echo "[  OK  ] Starting Selenium on the 4445 port ..."


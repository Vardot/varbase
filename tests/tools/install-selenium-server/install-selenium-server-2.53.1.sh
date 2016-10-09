#!/bin/bash

if [ ! -d "/usr/lib/selenium" ]; then
  sudo mkdir /usr/lib/selenium

  echo "Created selenium directory in /usr/lib.\n"

  echo "Getting selenium server standalone 2.53.1\n"
  sudo wget http://selenium-release.storage.googleapis.com/2.53/selenium-server-standalone-2.53.1.jar
  sudo mv selenium-server-standalone-2.53.1.jar /usr/lib/selenium/selenium-server-standalone-2.53.1.jar
  sudo ln -s /usr/lib/selenium/selenium-server-standalone-2.53.1.jar /usr/lib/selenium/selenium-server-standalone.jar
  echo "The selenium server standalone is ready in the server.\n"

  sudo mkdir -p /var/log/selenium
  sudo chmod a+w /var/log/selenium
  echo "Created the logs for selenium.\n"

  sudo cp selenium.sh /etc/init.d/selenium
  sudo chmod 755 /etc/init.d/selenium
  sudo update-rc.d selenium defaults 4445
  echo "Installed selenium server.\n"
  sudo /etc/init.d/selenium start
else
  echo "Selenium is installed.\nIf you want to update or install you will need:\n to run ./uninstall-selenium-server.sh first"
fi

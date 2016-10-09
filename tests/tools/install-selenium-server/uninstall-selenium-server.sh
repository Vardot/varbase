#!/bin/bash

if [ -d "/usr/lib/selenium" ]; then
  sudo /etc/init.d/selenium stop
  sudo rm -rf /usr/lib/selenium

  echo "\nDeleted selenium.\n"

  sudo rm -rf /var/log/selenium

  echo "Deleted logs.\n"

  sudo update-rc.d -f selenium remove
  echo "Removed selenium server.\n"
else
  echo "You can not uninstall Selenium is NOT installed."
fi
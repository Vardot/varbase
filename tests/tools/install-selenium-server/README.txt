# Selenium Server
# Installing and configuring selenium server to work for each automated testing session #

Some time I do test using some internal or external selenium server, but they
do not have the option of restarting every thing from the beginning .

I just want a very fast and basic solution, if the test finish I want the 
selenium server to restart, and gave me a fresh start for the next automated
testing session.
 
I made this list of script with a basic installer which:
- Have Selenium standalone server will downloaded and installed on your localhost or server.
- Then selenium will start working after reboots.
- This selenium server will start at the 4445 port number.


You will need to have Java first.
================================================================================

$ sudo apt-get install openjdk-8-jdk
$ sudo apt-get install openjdk-8-jre

================================================================================


Run the following command to install selenium server 2.53.1:
================================================================================

$  sh ./install-selenium-server-2.53.1.sh

================================================================================

Run the following command to install selenium server 3.0.1:
================================================================================

$  sh ./install-selenium-server-3.0.1.sh

================================================================================


We could use the following commands to control the server
================================================================================

sudo /etc/init.d/selenium start

sudo /etc/init.d/selenium stop

sudo /etc/init.d/selenium restart

================================================================================


If you want to Uninstall :
================================================================================

$  sh ./uninstall-selenium-server.sh

================================================================================
Then Reboot.

The only thing we do need is a reset Button to restart the selenium server to 
work in a new automated testing session.

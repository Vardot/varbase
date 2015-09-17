
CONTENTS OF THIS FILE
---------------------
 * Installation profiles

INSTALLATION PROFILES
---------------------
To build the profile, run:

 - Install Drupal.org drush (make sure this is intalled in .drush directory)
   drush dl drupalorg_drush
 - Build the project make file
   ./varbase/build-local.sh www
 - if you want to commit to varbase from the project move the .git file to the profile directory inside www

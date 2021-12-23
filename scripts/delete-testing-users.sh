#!/bin/usr/env bash

## cd PROJECT_DIR_NAME/docroot/profiles/varbase/scripts
## bash delete-testing-users.sh

current_path=$(pwd);

# Include the Bash YAML library.
source ${current_path}/libs/bash-yaml.sh || exit 1 ;

# Load the list of default users for Varbase.
eval $(parse_yaml ${current_path}/varbase.users.yml);

cd ../../../ ;
for user in ${users[@]}
do
  user_name="user_${user}_name";
  user_mail="user_${user}_mail";
  user_password="user_${user}_password";
  user_role="user_${user}_role";

  echo " ---------------------------------------------------------------- ";
  echo "      User name: ${!user_name}";
  echo "      User mail: ${!user_mail}";
  echo "  User password: ${!user_password}";
  echo "      User role: ${!user_role}";
  echo " ================================================================= ";

  ../vendor/drush/drush/drush user:cancel --delete-content "${!user_name}" --yes;

done
cd ${current_path};
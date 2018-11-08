# Varbase Update
General instructions on how to update Varbase

# 1 - Read the release notes to know what had been changed.

For each stable release we will have some notes, and extra steps,
developers need to do to update the last release to the new release.

#  For Example:
* https://www.drupal.org/project/varbase/releases/8.x-6.2
* https://www.drupal.org/project/varbase/releases/8.x-6.1
* https://www.drupal.org/project/varbase/releases/8.x-6.0


# 2 - Backups

* Backup your project database.
* Backup your project files.
* Test a restore for your backups, to make sure that your backups works.

# 3 - Get the packaged files for the new version of Varbase 8.5.x

* From Drupal website: https://www.drupal.org/project/varbase
* Using varbase-project: https://packagist.org/packages/vardot/varbase-project

# 4 - From your terminal, change directory to the root directory of your
#     project to do the update:

# For Example:

```
Given that we do have a project at the /var/www/html/projects/example folder
  And we do have our custom themes, features, custom modules in
   /var/www/html/projects/example/themes/custom/
   /var/www/html/projects/example/modules/custom/
   /var/www/html/projects/example/sites/default
so on ...
like contributed modules which we had theme added
while working on the project.

  And we opened a terminal console window
  And we changed directory to our project folder
  cd /var/www/html/projects/example in Linux

  When we delete all files and folders, except our changes on Varbase.
  Then we will be left with only custom changes

  When we copy all Varbase files
  And we make sure that we do not have any overridden files or folders
     only delete old ones and copy new folder of modules to the same place
```

# 5 - Set the right file permissions.
# 6 - Update composer packages. use "composer outdated"
# $ composer update

  Make sure that you do have modules in the right place.

# 7 - Import Varbase Core Features and Bundles:

```
 Given that you are logged in with the "webmaster" user
   And the "Features" module is enabled
   And the "Features UI" module is enabled
  When you go to "admin/config/development/features"
  Then you should not see any changed features in the Varbase core bundle.
  When you click on all "Changed"
  Then you will be able to see all changes
   And you will be able to import new changes if you need them
```

# 8 - Do your Drupal 8 database updates

* By the terminal "drush updb".
* By the web browser by going to "yousite.domain/update.php"

# 9 - Regression test the full site.

* Done :\)



--------------------------------------------------------------------------------

# Updating Varbase 8.6.1 to Varbase 8.6.2


## Updating files with *Copy and Paste* for Varbase 8.6.1 to Varbase 8.6.2
```
  Given that we are at the drupal root folder for varbase
   When we delete all drupal core folders and files
    And we copy all new Varbase files drupal root folder for varbase
    And we make sure that we have all custom module or themes still in the
        "sites" folder
    And we make sure that all new used modules and features are present.
   Then we will be ready to update the active config and database.
```

## Varbase Procedures to update the varbase base code. not in any varbase-project project builders.
```
  Given that we are at the root folder for varbase project, not the docroot
    And we make sure that the current "Varbase-project" composer.json file and
        files are the latest
   When we delete the "composer.lock" file
    And we delete the "vendor" folder
    And we delete the "docroot/modules/contrib" folder
    And we delete the "docroot/themes/contrib" folder
    And we delete the "docroot/profiles/varbase" folder
    And we delete the "docroot/libraries" folder
    And we run the "composer require vardot/varbase:8.6.1" command
    And wait for composer to finish work
   Then we should not see any issues in the terminal
    And we should see "Writing lock file" in the terminal
    And we should see "Generating autoload files" in the terminal
   When the composer finishes work without errors
   Then we will be ready to update the active config and database.
```

## Updating the active config and database from Varbase 8.6.1 to Varbase 8.6.2
```
  Given that we are in the docroot of the current Varbase project
    And all files are updated using (copy and past) or (composer require/update
   When we run drush "updb" or go to "/update.php"
   Then we should see the steps of updates.
   When we run drush "updb" or go to "/update.php" again
   Then we will have the site update with the new Varbase 8.6.2 version
   When we go to "/admin/config/development/features"
   Then we should see "Changed"
   When we follow with each feature to import new changes.
   Then we will have the Varbase site updated to the latest version.
```

--------------------------------------------------------------------------------


# Updating Varbase 8.6.0 to Varbase 8.6.1


## Updating files with *Copy and Paste* for Varbase 8.6.0 to Varbase 8.6.1
```
  Given that we are at the drupal root folder for varbase
   When we delete all drupal core folders and files
    And we copy all new Varbase files drupal root folder for varbase
    And we make sure that we have all custom module or themes still in the
        "sites" folder
    And we make sure that all new used modules and features are present.
   Then we will be ready to update the active config and database.
```

## Varbase Procedures to update the varbase base code. not in any varbase-project project builders.
```
  Given that we are at the root folder for varbase project, not the docroot
    And we make sure that the current "Varbase-project" composer.json file and
        files are the latest
   When we delete the "composer.lock" file
    And we delete the "vendor" folder
    And we delete the "docroot/modules/contrib" folder
    And we delete the "docroot/themes/contrib" folder
    And we delete the "docroot/profiles/varbase" folder
    And we delete the "docroot/libraries" folder
    And we run the "composer require vardot/varbase:8.6.1" command
    And wait for composer to finish work
   Then we should not see any issues in the terminal
    And we should see "Writing lock file" in the terminal
    And we should see "Generating autoload files" in the terminal
   When the composer finishes work without errors
   Then we will be ready to update the active config and database.
```

## Updating the active config and database from Varbase 8.6.0 to Varbase 8.6.1
```
  Given that we are in the docroot of the current Varbase project
    And all files are updated using (copy and past) or (composer require/update
   When we run drush "updb" or go to "/update.php"
   Then we should see the steps of updates.
   When we run drush "updb" or go to "/update.php" again
   Then we will have the site update with the new Varbase 8.6.1 version
   When we go to "/admin/config/development/features"
   Then we should see "Changed"
   When we follow with each feature to import new changes.
   Then we will have the Varbase site updated to the latest version.
```



--------------------------------------------------------------------------------

# No upgrade path to update Varbase 8.x-5.x to 8.x-6.x yet
You will need to manage a migration, or a hard update process.
https://www.drupal.org/project/varbase/issues/3000529
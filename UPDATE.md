# Varbase Update
General instructions on how to update Varbase

# 1 - Read the release notes to know what had been changed.

For each stable release we will have some notes, and extra steps,
developers need to do to update the last release to the new release.


#  For Example:
* https://www.drupal.org/project/varbase/releases/8.x-4.0
* https://www.drupal.org/project/varbase/releases/8.x-4.01


# 2 - Backups

* Backup your project database.
* Backup your project files.

# 3 - Get the packaged files for the new version of Varbase 8.4.x

* From Drupal website: https://www.drupal.org/project/varbase
* Using Varbase-Build: https://packagist.org/packages/vardot/varbase-build

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

---

# Updating Varbase 8.4.04 to Varbase 8.4.05

If you are updating from Varbase 8.4.01 or earlier, please follow the steps
to updated to Varbase 8.4.02 first. in the UPDATE.md file.

## Updating files with Copy and Paste for Varbase 8.4.04 to Varbase 8.4.05
```
  Given that we are at the drupal root folder for varbase
   When we delete all drupal core folders and files
    And we copy all new Varbase files drupal root folder for varbase
    And we make sure that we have all custom module or themes still in the
        "sites" folder
    And we make sure that all new used modules and features are present.
   Then we will be ready to update the active config and database.
```

## Updating files with composer from Varbase 8.4.04 to Varbase 8.4.05
```
  Given that we are at the root folder for varbase project, not the docroot
    And we make sure that the current "Varbase-Build" composer.json file and
        files are the latest
   When we delete the "vendor" folder
    And we delete the "composer.lock" file
    And we run the "composer require vardot/varbase:8.4.05" command
    And wait for composer to finish work
   Then we should not see any issues in the terminal
    And we should see "Writing lock file" in the terminal
    And we should see "Generating autoload files" in the terminal
   When the composer finishes work with no errors
   Then we will be ready to update the active config and database.
```

## Updating the active config and database from Varbase 8.4.04 to Varbase 8.4.05
```
  Given that we are in the docroot of the current Varbase project
    And all files are updated using (copy and past) or (composer require/update
   When we run drush "updb" or go to "/update.php"
   Then we should see the steps of updates.
   When we run drush "updb" or go to "/update.php" again
   Then we will have the site update with the new Varbase 8.4.04 version
   When we go to "/admin/config/development/features"
   Then we should see "Changed"
   When we follow with each feature to import new changes.
   Then we will have the Varbase site updated to the latest version.
```


# Varbase 8.4.03 to Varbase 8.4.04

If you are updating from Varbase 8.4.01 or earlier, please follow the steps
to updated to Varbase 8.4.02 first. in the UPDATE.md file.

## Updating files with Copy and Paste for Varbase 8.4.03 to Varbase 8.4.04
```
  Given that we are at the drupal root folder for varbase
   When we delete all drupal core folders and files
    And we copy all new Varbase files drupal root folder for varbase
    And we make sure that we have all custom module or themes still in the
        "sites" folder
    And we make sure that all new used modules and features are present.
   Then we will be ready to update the active config and database.
```

## Updating files with composer from Varbase 8.4.03 to Varbase 8.4.04
```
  Given that we are at the root folder for varbase project, not the docroot
    And we make sure that the current "Varbase-Build" composer.json file and
        files are the latest
   When we delete the "vendor" folder
    And we delete the "composer.lock" file
    And we run the "composer require vardot/varbase:8.4.04" command
    And wait for composer to finish work
   Then we should not see any issues in the terminal
    And we should see "Writing lock file" in the terminal
    And we should see "Generating autoload files" in the terminal
   When the composer finishes work with no errors
   Then we will be ready to update the active config and database.
```

## Updating the active config and database from Varbase 8.4.03 to Varbase 8.4.04
```
  Given that we are in the docroot of the current Varbase project
    And all files are updated using (copy and past) or (composer require/update
   When we run drush "updb" or go to "/update.php"
   Then we should see the steps of updates.
   When we run drush "updb" or go to "/update.php" again
   Then we will have the site update with the new Varbase 8.4.04 version
   When we go to "/admin/config/development/features"
   Then we should see "Changed"
   When we follow with each feature to import new changes.
   Then we will have the Varbase site updated to the latest version.
```


---

# Varbase 8.4.02 to Varbase 8.4.03

If you are updating from Varbase 8.4.01 or earlier, please follow the steps
to updated to Varbase 8.4.02 first. in the UPDATE.md file.

## Updating files with Copy and Paste for Varbase 8.4.02 to Varbase 8.4.03
```
  Given that we are at the drupal root folder for varbase
   When we delete all drupal core folders and files
    And we copy all new Varbase files drupal root folder for varbase
    And we make sure that we have all custom module or themes still in the
        "sites" folder
    And we make sure that all new used modules and features are present.
   Then we will be ready to update the active config and database.
```

## Updating files with composer from Varbase 8.4.02 to Varbase 8.4.03
```
  Given that we are at the root folder for varbase project, not the docroot
    And we make sure that the current "Varbase-Build" composer.json file and
        files are the latest
   When we delete the "vendor" folder
    And we delete the "composer.lock" file
    And we run the "composer require vardot/varbase:8.4.03" command
    And wait for composer to finish work
   Then we should not see any issues in the terminal
    And we should see "Writing lock file" in the terminal
    And we should see "Generating autoload files" in the terminal
   When the composer finishes work with no errors
   Then we will be ready to update the active config and database.
```

## Updating the active config and database from Varbase 8.4.02 to Varbase 8.4.03
```
  Given that we are in the docroot of the current Varbase project
    And all files are updated using (copy and past) or (composer require/update
   When we run drush "updb" or go to "/update.php"
   Then we should see the steps of updates.
   When we run drush "updb" or go to "/update.php" again
   Then we will have the site update with the new Varbase 8.4.03 version
   When we go to "/admin/config/development/features"
   Then we should see "Changed"
   When we follow with each feature to import new changes.
   Then we will have the Varbase site updated to the latest version.
```


---

# Varbase 8.4.01 to Varbase 8.4.02

## Updating files with Copy and Paste for Varbase 8.4.01 to Varbase 8.4.02
```
  Given that we are at the drupal root folder for varbase
   When we delete all drupal core folders and files
    And we copy all new Varbase files drupal root folder for varbase
    And we make sure that we have all custom module or themes still in the
        "sites" folder
    And we make sure that all new used modules and features are present.
   Then we will be ready to update the active config and database.
```

## Updating files with composer from Varbase 8.4.01 to Varbase 8.4.02
```
  Given that we are at the root folder for varbase project, not the docroot
    And we make sure that the current "Varbase-Build" composer.json file and
        files are the latest
   When we delete the "vendor" folder
    And we delete the "composer.lock" file
    And we run the "composer require vardot/varbase:8.4.02" command
    And wait for composer to finish work
   Then we should not see any issues in the terminal
    And we should see "Writing lock file" in the terminal
    And we should see "Generating autoload files" in the terminal
   When the composer finishes work with no errors
   Then we will be ready to update the active config and database.
```

## Updating the active config and database from Varbase 8.4.01 to Varbase 8.4.02
```
  Given that we are in the docroot of the current Varbase project
    And all files are updated using (copy and past) or (composer require/update
    And we had deleted the "bootstrap_layout" module folder
   When we run drush "updb" or go to "/update.php"
   Then we should see the steps of updates.
   When we copy the bootstrap_layout module back to the project
    And enable it
    And we run drush "updb" or go to "/update.php" again
   Then we will have the site update with the new Varbase 8.4.02 version
   When we go to "/admin/config/development/features"
   Then we should see "Changed"
   When we follow with each feature to import new changes.
   Then we will have the Varbase site updated to the latest version.
```

# Varbase Update
General instructions on how to update Varbase

# 1 - Read the release notes to know what had been changed.

For each stable release we will have some notes, and extra steps,
developers need to do to update the last release to the new release.

#  For Example:
* https://www.drupal.org/project/varbase/releases/8.x-6.3
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
   And the "Configuration Update Reports" module is enabled
  When you go to "/admin/config/development/configuration/report"
   And from "Single module" you could select any Varbase component
    /admin/config/development/configuration/report/module/varbase_core
    /admin/config/development/configuration/report/module/varbase_admin
    /admin/config/development/configuration/report/module/varbase_media
    /admin/config/development/configuration/report/module/varbase_development
    /admin/config/development/configuration/report/module/varbase_editor
    /admin/config/development/configuration/report/module/varbase_page
    /admin/config/development/configuration/report/module/varbase_bootstrap_paragraphs
    /admin/config/development/configuration/report/module/varbase_landing
    /admin/config/development/configuration/report/module/varbase_blog
    /admin/config/development/configuration/report/module/varbase_seo
    /admin/config/development/configuration/report/module/varbase_security
    /admin/config/development/configuration/report/module/varbase_search
    /admin/config/development/configuration/report/module/varbase_auth
    /admin/config/development/configuration/report/module/varbase_total_control
    /admin/config/development/configuration/report/module/varbase_webform
  Then you will be able to see all changes
   And you will be able to import new changes if you need them
```

# 8 - Do your Drupal 8 database updates

* By the terminal "drush updb".
* By the web browser by going to "yousite.domain/update.php"

# 9 - Regression test the full site.

* Done :\)



--------------------------------------------------------------------------------

# Updating Varbase 8.6.2 to Varbase 8.6.3


## Updating files with *Copy and Paste* for Varbase 8.6.2 to Varbase 8.6.3
```
  Given that we are at the drupal root folder for varbase
   When we delete all drupal core folders and files
    And we copy all new Varbase files drupal root folder for varbase
    And we make sure that we have all custom module or themes still in the
        "sites" folder
    And we make sure that all new used modules and features are present.
   Then we will be ready to update the active config and database.
```

## Varbase Procedures to update the varbase base code by varbase-project builder

**NOTICE:** We're now using composer patches from Vardot repository to suggest
several fixes and better handling of patches in your Drupal project.
You'll notice that we have included (https://github.com/vardot/composer-patches)
in  this composer.json repositories. This will replace the original
library (cweagans/composer-patches) with our own from (vardot/composer-patches).
See https://github.com/cweagans/composer-patches/pull/243 and more details
on our changes on the composer-patches package. Once our changes get merged,
we will revert to using (cweagans/composer-patches) without this override.

To follow with the latest work on this subject you could
have a look at our Varbase Project template file:
https://github.com/Vardot/varbase-project/blob/8.6.x/composer.json

Add the following in **repositories** :
```
    "composer-patches": {
      "type": "vcs",
      "url": "https://github.com/vardot/composer-patches"
}
```

Add the following in **extra** :
```
    "patchLevel": {
       "drupal/core": "-p2"
    }
```

In require change:
```
    "composer/installers": "^1.5.0",
    "oomphinc/composer-installers-extender": "^1.1.2",
    "cweagans/composer-patches": "^1.6.4",
    "drupal-composer/drupal-scaffold": "^2.4.0",
    "drupal/drupal-library-installer-plugin": "^0.3",
    "webflo/drupal-finder": "^1.1.0",
    "webmozart/path-util": "^2.3.0",
    "vardot/varbase": "8.6.2",
    "drupal/extlink": "1.x-dev#8a773a6c5519ccb167e18cc39d68551b30b0e4b3",
    "drupal/image_resize_filter": "1.x-dev#c3f4b23b02005859092aaff746b9f21b794adc58",
    "drupal/entity_clone": "1.x-dev#6d0ce053605e9aaf8412927a9b0ea8da7a9a06e5",
    "drupal/tour_ui": "1.x-dev#5cf793c071aeddea0ecd20d80b541606bfe2aff1",
    "drupal/tour_builder": "1.x-dev#d70e898949b7ec4095efb391a0dbec56d0117558",
    "drupal/l10n_client": "1.x-dev#9bf8d597732870bdca301512c71b6e5d74d48db2",
    "drupal/node_edit_protection": "1.x-dev#902339c08222f838030c07aaea23bdc51ababebd",
    "drupal/security_review": "1.x-dev#35ebae445bb260e961e47c4c58efe7c50c228999",
    "drupal/menu_position": "1.x-dev#d134276b4bbd08b3c9678943d0225fbef7dd05b5",
    "drupal/mail_edit": "1.x-dev#bcd0041830d8581b36e6211f0c8eabd8caf9652b",
    "drupal/taxonomy_menu": "3.x-dev#1103ad0855de4d242364a5b7e74a5c5fc1ce9e02",
    "drupal/google_analytics_reports": "3.x-dev#2b6bb8efbc7f61ce3c1225638075aa6037b8db44",
    "drupal/login_destination": "1.x-dev#54be8b89fdc073ca40af6b9b2eeb050e0aeb7908",
    "drupal/betterlogin": "1.x-dev#f7cf1c5c9ec5e80c6ac0ef04ed605e25495232cd"
```

With:
```
    "composer/installers": "~1.0",
    "oomphinc/composer-installers-extender": "~1.0",
    "cweagans/composer-patches": "~1.0",
    "drupal-composer/drupal-scaffold": "~2.0",
    "drupal/drupal-library-installer-plugin": "^0.3",
    "webflo/drupal-finder": "~1.0",
    "webmozart/path-util": "~2.0",
    "vardot/varbase": "~8.6.0",
    "vardot/varbase-updater": "~1.0",
    "drupal/image_resize_filter": "1.x-dev#c3f4b23b02005859092aaff746b9f21b794adc58",
    "drupal/entity_clone": "1.x-dev#6d0ce053605e9aaf8412927a9b0ea8da7a9a06e5",
    "drupal/tour_builder": "1.x-dev#d70e898949b7ec4095efb391a0dbec56d0117558",
    "drupal/l10n_client": "1.x-dev#9bf8d597732870bdca301512c71b6e5d74d48db2",
    "drupal/node_edit_protection": "1.x-dev#902339c08222f838030c07aaea23bdc51ababebd",
    "drupal/security_review": "1.x-dev#35ebae445bb260e961e47c4c58efe7c50c228999",
    "drupal/menu_position": "1.x-dev#d134276b4bbd08b3c9678943d0225fbef7dd05b5",
    "drupal/mail_edit": "1.x-dev#bcd0041830d8581b36e6211f0c8eabd8caf9652b",
    "drupal/google_analytics_reports": "3.x-dev#2b6bb8efbc7f61ce3c1225638075aa6037b8db44",
    "drupal/login_destination": "1.x-dev#54be8b89fdc073ca40af6b9b2eeb050e0aeb7908"
```

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
    And we run the "composer require vardot/varbase:8.6.3" command
    And wait for composer to finish work
   Then we should not see any issues in the terminal
    And we should see "Writing lock file" in the terminal
    And we should see "Generating autoload files" in the terminal
   When the composer finishes work without errors
   Then we will be ready to update the active config and database.
```

## Updating the active config and database from Varbase 8.6.2 to Varbase 8.6.3
```
  Given that we are in the docroot of the current Varbase project
    And all files are updated using (copy and past) or (composer require/update
   When we run drush "updb" or go to "/update.php"
   Then we should see the steps of updates.
   When we run drush "updb" or go to "/update.php" again
   Then we will have the site update with the new Varbase 8.6.3 version
   When you go to "/admin/config/development/configuration/report"
   And from "Single module" you could select any Varbase component
     /admin/config/development/configuration/report/module/varbase_core
     /admin/config/development/configuration/report/module/varbase_admin
     /admin/config/development/configuration/report/module/varbase_media
     /admin/config/development/configuration/report/module/varbase_development
     /admin/config/development/configuration/report/module/varbase_editor
     /admin/config/development/configuration/report/module/varbase_page
     /admin/config/development/configuration/report/module/varbase_bootstrap_paragraphs
     /admin/config/development/configuration/report/module/varbase_landing
     /admin/config/development/configuration/report/module/varbase_blog
     /admin/config/development/configuration/report/module/varbase_seo
     /admin/config/development/configuration/report/module/varbase_security
     /admin/config/development/configuration/report/module/varbase_search
     /admin/config/development/configuration/report/module/varbase_auth
     /admin/config/development/configuration/report/module/varbase_total_control
     /admin/config/development/configuration/report/module/varbase_webform
   Then you will be able to see all changes
   So that you could select which change you would you like to update.
```

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
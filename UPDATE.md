# Varbase Update
General instructions on how to update Varbase

# 1 - Read the release notes to know what had been changed.

For each stable release we will have some notes, and extra steps,
developers need to do to update the last release to the new release.


#  For Example:
* https://www.drupal.org/project/varbase/releases/8.x-5.0-alpha1


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

# No upgrade path to update Varbase 8.x-4.x to 8.x-5.x yet
You will need to manage a migration, or a hard update process.

Progress work on the configuration update, as we started to work on the update
steps, which it could be an automated bash command varbase84xTo85x.sh in
 scripts to run:

1. Replace media entity with media type in the Drupal core. ( string).
2. Rename media entity config files to media type config naming.
3. Change config values and dependences to use media type.
4. Change media type sizes from size 1, 2, 3, 4 .. to size 9 for all
   view modes in all content types.
5. Replace all old video with video_embed. and related switches
6. Change entity browsers, as we have changed the machine names and we do
   have new entity browsers.
7. Change blog field from field_image to field_media.
...

Still a progress work
These points could work for all old varbase 8.4.x projects. 

string_replace "- media_entity.bundle" with "- media.type"
string_replace "- media_entity\n" with "- media\n"
string_replace "media.image.field_image" with "media.image.field_media_image"
string_replace "views.view.browser" with "views.view.media_browsers"
string_replace "view: browser" with "view: media_browsers"
string_replace "view_display: images_browser" with "view_display: image_browser"
string_replace "media_entity_bundle: image" with "media_type: image"
string_replace "upload_location: 'public://[date:custom:Y]-[date:custom:m]'"
 with  "upload_location: 'public://images/[date:custom:Y]-[date:custom:m]'"

# ----------------------
string_replace "image.style.d1\n" with "image.style.d01\n"
string_replace "image.style.d2" with "image.style.d02"
string_replace "image.style.d3" with "image.style.d03"
string_replace "image.style.d4" with "image.style.d04"
string_replace "image.style.d5" with "image.style.d05"
string_replace "image.style.d6" with "image.style.d06"
string_replace "image.style.d7" with "image.style.d07"
string_replace "image.style.d8" with "image.style.d08"
string_replace "image.style.d9" with "image.style.d09"
# ----------------------
string_replace "image.styles.d1\n" with "image.styles.d01\n"
string_replace "image.styles.d2" with "image.styles.d02"
string_replace "image.styles.d3" with "image.styles.d03"
string_replace "image.styles.d4" with "image.styles.d04"
string_replace "image.styles.d5" with "image.styles.d05"
string_replace "image.styles.d6" with "image.styles.d06"
string_replace "image.styles.d7" with "image.styles.d07"
string_replace "image.styles.d8" with "image.styles.d08"
string_replace "image.styles.d9" with "image.styles.d09"
# ----------------------
string_replace "image_style: d1\n" with "image_style: d01\n"
string_replace "image_style: d2" with "image_style: d02"
string_replace "image_style: d3" with "image_style: d03"
string_replace "image_style: d4" with "image_style: d04"
string_replace "image_style: d5" with "image_style: d05"
string_replace "image_style: d6" with "image_style: d06"
string_replace "image_style: d7" with "image_style: d07"
string_replace "image_style: d8" with "image_style: d08"
string_replace "image_style: d9" with "image_style: d09"
# ----------------------
string_replace "image.style.d1_traditional" with "image.style.d01_traditional"
string_replace "image.style.d2_traditional" with "image.style.d02_traditional"
string_replace "image.style.d3_traditional" with "image.style.d03_traditional"
string_replace "image.style.d4_traditional" with "image.style.d04_traditional"
string_replace "image.style.d5_traditional" with "image.style.d05_traditional"
string_replace "image.style.d6_traditional" with "image.style.d06_traditional"
string_replace "image.style.d7_traditional" with "image.style.d07_traditional"
string_replace "image.style.d8_traditional" with "image.style.d08_traditional"
string_replace "image.style.d9_traditional" with "image.style.d09_traditional"
# ----------------------
string_replace "image.styles.d1_traditional" with "image.styles.d01_traditional"
string_replace "image.styles.d2_traditional" with "image.styles.d02_traditional"
string_replace "image.styles.d3_traditional" with "image.styles.d03_traditional"
string_replace "image.styles.d4_traditional" with "image.styles.d04_traditional"
string_replace "image.styles.d5_traditional" with "image.styles.d05_traditional"
string_replace "image.styles.d6_traditional" with "image.styles.d06_traditional"
string_replace "image.styles.d7_traditional" with "image.styles.d07_traditional"
string_replace "image.styles.d8_traditional" with "image.styles.d08_traditional"
string_replace "image.styles.d9_traditional" with "image.styles.d09_traditional"
# ----------------------
string_replace "image_style: d1_traditional" with "image_style: d01_traditional"
string_replace "image_style: d2_traditional" with "image_style: d02_traditional"
string_replace "image_style: d3_traditional" with "image_style: d03_traditional"
string_replace "image_style: d4_traditional" with "image_style: d04_traditional"
string_replace "image_style: d5_traditional" with "image_style: d05_traditional"
string_replace "image_style: d6_traditional" with "image_style: d06_traditional"
string_replace "image_style: d7_traditional" with "image_style: d07_traditional"
string_replace "image_style: d8_traditional" with "image_style: d08_traditional"
string_replace "image_style: d9_traditional" with "image_style: d09_traditional"
# ----------------------
string_replace "image.style.d1_standard" with "image.style.d01_standard"
string_replace "image.style.d2_standard" with "image.style.d02_standard"
string_replace "image.style.d3_standard" with "image.style.d03_standard"
string_replace "image.style.d4_standard" with "image.style.d04_standard"
string_replace "image.style.d5_standard" with "image.style.d05_standard"
string_replace "image.style.d6_standard" with "image.style.d06_standard"
string_replace "image.style.d7_standard" with "image.style.d07_standard"
string_replace "image.style.d8_standard" with "image.style.d08_standard"
string_replace "image.style.d9_standard" with "image.style.d09_standard"
# ----------------------
string_replace "image.styles.d1_standard" with "image.styles.d01_standard"
string_replace "image.styles.d2_standard" with "image.styles.d02_standard"
string_replace "image.styles.d3_standard" with "image.styles.d03_standard"
string_replace "image.styles.d4_standard" with "image.styles.d04_standard"
string_replace "image.styles.d5_standard" with "image.styles.d05_standard"
string_replace "image.styles.d6_standard" with "image.styles.d06_standard"
string_replace "image.styles.d7_standard" with "image.styles.d07_standard"
string_replace "image.styles.d8_standard" with "image.styles.d08_standard"
string_replace "image.styles.d9_standard" with "image.styles.d09_standard"
# ----------------------
string_replace "image_style: d1_standard" with "image_style: d01_standard"
string_replace "image_style: d2_standard" with "image_style: d02_standard"
string_replace "image_style: d3_standard" with "image_style: d03_standard"
string_replace "image_style: d4_standard" with "image_style: d04_standard"
string_replace "image_style: d5_standard" with "image_style: d05_standard"
string_replace "image_style: d6_standard" with "image_style: d06_standard"
string_replace "image_style: d7_standard" with "image_style: d07_standard"
string_replace "image_style: d8_standard" with "image_style: d08_standard"
string_replace "image_style: d9_standard" with "image_style: d09_standard"
# ----------------------
string_replace "image.style.d1_square" with "image.style.d01_square"
string_replace "image.style.d2_square" with "image.style.d02_square"
string_replace "image.style.d3_square" with "image.style.d03_square"
string_replace "image.style.d4_square" with "image.style.d04_square"
string_replace "image.style.d5_square" with "image.style.d05_square"
string_replace "image.style.d6_square" with "image.style.d06_square"
string_replace "image.style.d7_square" with "image.style.d07_square"
string_replace "image.style.d8_square" with "image.style.d08_square"
string_replace "image.style.d9_square" with "image.style.d09_square"
# ----------------------
string_replace "image.styles.d1_square" with "image.styles.d01_square"
string_replace "image.styles.d2_square" with "image.styles.d02_square"
string_replace "image.styles.d3_square" with "image.styles.d03_square"
string_replace "image.styles.d4_square" with "image.styles.d04_square"
string_replace "image.styles.d5_square" with "image.styles.d05_square"
string_replace "image.styles.d6_square" with "image.styles.d06_square"
string_replace "image.styles.d7_square" with "image.styles.d07_square"
string_replace "image.styles.d8_square" with "image.styles.d08_square"
string_replace "image.styles.d9_square" with "image.styles.d09_square"
# ----------------------
string_replace "image_style: d1_square" with "image_style: d01_square"
string_replace "image_style: d2_square" with "image_style: d02_square"
string_replace "image_style: d3_square" with "image_style: d03_square"
string_replace "image_style: d4_square" with "image_style: d04_square"
string_replace "image_style: d5_square" with "image_style: d05_square"
string_replace "image_style: d6_square" with "image_style: d06_square"
string_replace "image_style: d7_square" with "image_style: d07_square"
string_replace "image_style: d8_square" with "image_style: d08_square"
string_replace "image_style: d9_square" with "image_style: d09_square"

#  --------------------
string_replace "view_mode: s1\n" with "view_mode: s01\n"
string_replace "view_mode: s2" with "view_mode: s02"
string_replace "view_mode: s3" with "view_mode: s03"
string_replace "view_mode: s4" with "view_mode: s04"
string_replace "view_mode: s5" with "view_mode: s05"
string_replace "view_mode: s6" with "view_mode: s06"
string_replace "view_mode: s7" with "view_mode: s07"
string_replace "view_mode: s8" with "view_mode: s08"
string_replace "view_mode: s9" with "view_mode: s09"

string_replace "view_mode: s1_traditional" with "view_mode: s01_traditional"
string_replace "view_mode: s2_traditional" with "view_mode: s02_traditional"
string_replace "view_mode: s3_traditional" with "view_mode: s03_traditional"
string_replace "view_mode: s4_traditional" with "view_mode: s04_traditional"
string_replace "view_mode: s5_traditional" with "view_mode: s05_traditional"
string_replace "view_mode: s6_traditional" with "view_mode: s06_traditional"
string_replace "view_mode: s7_traditional" with "view_mode: s07_traditional"
string_replace "view_mode: s8_traditional" with "view_mode: s08_traditional"
string_replace "view_mode: s9_traditional" with "view_mode: s09_traditional"

string_replace "view_mode: s1_standard" with "view_mode: s01_standard"
string_replace "view_mode: s2_standard" with "view_mode: s02_standard"
string_replace "view_mode: s3_standard" with "view_mode: s03_standard"
string_replace "view_mode: s4_standard" with "view_mode: s04_standard"
string_replace "view_mode: s5_standard" with "view_mode: s05_standard"
string_replace "view_mode: s6_standard" with "view_mode: s06_standard"
string_replace "view_mode: s7_standard" with "view_mode: s07_standard"
string_replace "view_mode: s8_standard" with "view_mode: s08_standard"
string_replace "view_mode: s9_standard" with "view_mode: s09_standard"

string_replace "view_mode: s1_square" with "view_mode: s01_square"
string_replace "view_mode: s2_square" with "view_mode: s02_square"
string_replace "view_mode: s3_square" with "view_mode: s03_square"
string_replace "view_mode: s4_square" with "view_mode: s04_square"
string_replace "view_mode: s5_square" with "view_mode: s05_square"
string_replace "view_mode: s6_square" with "view_mode: s06_square"
string_replace "view_mode: s7_square" with "view_mode: s07_square"
string_replace "view_mode: s8_square" with "view_mode: s08_square"
string_replace "view_mode: s9_square" with "view_mode: s09_square"
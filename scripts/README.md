# Varbase Scripts

## Quick tip on how to use this script command file.

Default settings could be changed in scripts.settings.yml


## Create new Vartheme sub theme for a project.
By Composer:
```
cd PROJECT_DIR_NAME/docroot/profiles/varbase
composer create-new-vartheme "THEME_NAME" "ltr" "sites/default/themes/custom"
```

By Bash:
```
cd PROJECT_DIR_NAME/docroot/profiles/varbase/scripts
bash ./create-new-vartheme.sh "THEME_NAME" "ltr" "sites/default/themes/custom"
```
--------------------------------------------------------------------------------

## For right to left themes.
By Composer:
```
cd PROJECT_DIR_NAME/docroot/profiles/varbase
composer create-new-vartheme "THEME_NAME" "rtl" "sites/default/themes/custom"
```

By Bash:
```
cd PROJECT_DIR_NAME/docroot/profiles/varbase/scripts
bash ./create-new-vartheme.sh "THEME_NAME" "rtl" "sites/default/themes/custom"
```
--------------------------------------------------------------------------------

## To create a new theme in the themes/custom
By Composer:
```
cd PROJECT_DIR_NAME/docroot/profiles/varbase
composer create-new-vartheme "THEME_NAME" "ltr"
```

By Bash:
```
cd PROJECT_DIR_NAME/docroot/profiles/varbase/scripts
bash ./create-new-vartheme.sh "THEME_NAME" "ltr"
```
--------------------------------------------------------------------------------

# Varbase Scripts

## Quick tip on how to use this script command file.

Default settings could be changed in scripts.settings.yml


# Create a Vartheme BS4 sub theme ( Bootstrap 4 ) SASS

Before we generate the new sub theme we need to have the following tools
* 1. npm and nodejs : Helps getting the bootstrap 4 and popper packages. 
        [Bootstrap standard build tools](https://getbootstrap.com/docs/4.0/getting-started/build-tools/)
```
$ curl -sL https://deb.nodesource.com/setup | sudo bash -
$ apt install nodejs
$ apt install build-essential

$ curl -L https://npmjs.com/install.sh | sh
$ apt install npm
```

* 2. Gulp : Helps compiling SASS to CSS
```
npm install gulp-cli -g
npm install gulp -D
```


After we make sure that we do have all the tools we could change directory
 in the terminal to:

```
$ cd PROJECT_DIR_NAME/docroot/profiles/varbase/scripts
$ bash ./create-new-vartheme-bs4.sh "THEME_NAME"
```

* Activate your new sub theme by going to Appearance in our Varbase site.
* Search for THEME_NAME of the generated new sub theme and click on Install
 and set as default.
* Go to the home page to check if the theme is showing up.
* then we can change directory to our sub theme in the terminal to test compile
 our SASS files to CSS

```
$ cd PROJECT_DIR_NAME/docroot/themes/custom/THEME_NAME
$ gulp
[10:55:40] Using gulpfile PROJECT_DIR_NAME/docroot/themes/custom/THEME_NAME/gulpfile.js
[10:55:40] Starting 'default'...
[10:55:40] Starting 'compile'...
[10:55:42] Finished 'compile' after 2.44 s
[10:55:42] Starting 'move_bootstrap_js_files'...
[10:55:43] Finished 'move_bootstrap_js_files' after 18 ms
[10:55:43] Starting 'move_popper_js_files'...
[10:55:43] Finished 'move_popper_js_files' after 3.89 ms
[10:55:43] Starting 'watch'...
```


We may want to increase our maximum watched SASS files by
```
$ echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p
```

--------------------------------------------------------------------------------


# Create new Vartheme sub theme ( Bootstrap 3) LESS


### For left to right (LTR) sub-theme
```
cd PROJECT_DIR_NAME/docroot/profiles/varbase/scripts
bash ./create-new-vartheme.sh "THEME_NAME" "ltr"
```

### For right to left (RTL) sub-theme
```
cd PROJECT_DIR_NAME/docroot/profiles/varbase/scripts
bash ./create-new-vartheme.sh "THEME_NAME" "rtl"
```
--------------------------------------------------------------------------------

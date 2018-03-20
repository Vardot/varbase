#!//bin/bash
################################################################################
## Create new vartheme subtheme.
################################################################################
##
## Quick tip on how to use this script command file.
##
## Create new Vartheme sub theme for a project.
## By Bash:
## -----------------------------------------------------------------------------
## cd PROJECT_DIR_NAME/docroot/profiles/varbase/scripts
## bash ./create-new-vartheme.sh "THEME_NAME" "ltr"
##------------------------------------------------------------------------------
##
## For right to left themes.
## By Bash:
## -----------------------------------------------------------------------------
## cd PROJECT_DIR_NAME/docroot/profiles/varbase/scripts
## bash ./create-new-vartheme.sh "THEME_NAME" "rtl"
## -----------------------------------------------------------------------------
##
## To create a new theme in the PROJECT_DIR_NAME/docroot/themes/custom
## By Bash:
## -----------------------------------------------------------------------------
## cd PROJECT_DIR_NAME/docroot/profiles/varbase/scripts
## bash ./create-new-vartheme.sh "THEME_NAME"
## -----------------------------------------------------------------------------
##
################################################################################

# Basic yaml parser.
parse_yaml() {
   local s='[[:space:]]*' w='[a-zA-Z0-9_]*' fs=$(echo @|tr @ '\034')
   sed -ne "s|^\($s\)\($w\)$s:$s\"\(.*\)\"$s\$|\1$fs\2$fs\3|p" \
        -e "s|^\($s\)\($w\)$s:$s\(.*\)$s\$|\1$fs\2$fs\3|p"  $1 |
   awk -F$fs '{
      indent = length($1)/2;
      vname[indent] = $2;
      for (i in vname) {if (i > indent) {delete vname[i]}}
      if (length($3) > 0) {
         vn=""; for (i=0; i<indent; i++) {vn=(vn)(vname[i])("_")}
         printf("%s%s%s=\"%s\"\n", "",vn, $2, $3);
      }
   }'
}

current_path=$(pwd);
drupal_root="$current_path";

if [[ "${drupal_root: -1}" == "/" ]]; then
  drupal_root="${drupal_root::-1}";
fi

if [[ "${drupal_root: -24}" == "profiles/varbase/scripts" ]]; then
  drupal_root="${drupal_root::-24}";
fi

if [[ "${drupal_root: -16}" == "profiles/varbase" ]]; then
  drupal_root="${drupal_root::-16}";
fi

if [[ "${drupal_root: -8}" == "profiles" ]]; then
  drupal_root="${drupal_root::-8}";
fi

if [[ "${drupal_root: -1}" == "/" ]]; then
  drupal_root="${drupal_root::-1}";
fi

echo "Current path: $current_path";
echo "Drupal root: $drupal_root";

# Read scripts.settings.yml file
eval $(parse_yaml $drupal_root/profiles/varbase/scripts/scripts.settings.yml);

# Default theme name.
theme_name=$default_theme_name;

# Grape the theme name argument.
if [ ! -z "$1" ]; then
  arg1="$1";
  if [[ $arg1 =~ ^[A-Za-z][A-Za-z0-9_]*$ ]]; then
    theme_name="$arg1";
  else
    echo "---------------------------------------------------------------------------";
    echo "   Theme name is not a valid theme name!                                   ";
    echo "---------------------------------------------------------------------------";
    exit 1;
  fi
else
  echo "---------------------------------------------------------------------------";
  echo "   Please add the name of your theme!                                      ";
  echo "---------------------------------------------------------------------------";
  exit 1;
fi

# Default direction.
direction=$default_direction;

# Grape the direction argument. only if we have arg #2.
if [ ! -z "$2" ]; then
  arg2="$2";
  if [[ "$arg2" == "rtl" || "$arg2" == "RTL" ]]; then
    direction=$arg2;
  elif [[ "$arg2" == "ltr" || "$arg2" == "LTR" ]]; then
    direction=$arg2;
  else
    echo "---------------------------------------------------------------------------";
    echo "   Direction of language is not valid!                                     ";
    echo "    ltr - for (left to right) languages.                                   ";
    echo "    rtl - for (right to left) languages.                                   ";
    echo "---------------------------------------------------------------------------";
    exit 1;
  fi
fi

# Default themes creation path.
theme_path=$drupal_root/$default_themes_creation_path;
mkdir -p ${theme_path};
cp ${current_path}/README.md ${theme_path}/README.md


# Create the new Vartheme subtheme if we do not have a folder with that name yet.
if [[ ! -d "$theme_path/$theme_name" ]]; then

  # 1. Copy the VARTHEME_SUBTHEME folder to your custom theme location.
  cp -r ${drupal_root}/themes/contrib/vartheme/VARTHEME_SUBTHEME ${theme_path}/${theme_name};

  # 2. Rename VARTHEME_SUBTHEME.starterkit.yml your_subtheme_name.info.yml
  mv ${theme_path}/${theme_name}/VARTHEME_SUBTHEME.starterkit.yml ${theme_path}/${theme_name}/VARTHEME_SUBTHEME.info.yml ;
  mv ${theme_path}/${theme_name}/VARTHEME_SUBTHEME.info.yml ${theme_path}/${theme_name}/${theme_name}.info.yml ;

  # 3. Rename VARTHEME_SUBTHEME.libraries.yml your_subtheme_name.libraries.yml
  mv ${theme_path}/${theme_name}/VARTHEME_SUBTHEME.libraries.yml ${theme_path}/${theme_name}/${theme_name}.libraries.yml ;

  # 4. Rename VARTHEME_SUBTHEME.theme your_subtheme_name.theme
  mv ${theme_path}/${theme_name}/VARTHEME_SUBTHEME.theme ${theme_path}/${theme_name}/${theme_name}.theme ;

  # 5. Rename VARTHEME_SUBTHEME.settings.yml
  mv ${theme_path}/${theme_name}/config/install/VARTHEME_SUBTHEME.settings.yml ${theme_path}/${theme_name}/config/install/${theme_name}.settings.yml ;

  # 6. Rename VARTHEME_SUBTHEME.schema.yml
  mv ${theme_path}/${theme_name}/config/schema/VARTHEME_SUBTHEME.schema.yml ${theme_path}/${theme_name}/config/schema/${theme_name}.schema.yml ;

  # 7.1 Rename VARTHEME_SUBTHEME optional blocks.
  mv ${theme_path}/${theme_name}/config/optional/block.block.VARTHEME_SUBTHEME_branding.yml ${theme_path}/${theme_name}/config/optional/block.block.${theme_name}_branding.yml
  mv ${theme_path}/${theme_name}/config/optional/block.block.VARTHEME_SUBTHEME_breadcrumbs.yml ${theme_path}/${theme_name}/config/optional/block.block.${theme_name}_breadcrumbs.yml
  mv ${theme_path}/${theme_name}/config/optional/block.block.VARTHEME_SUBTHEME_content.yml ${theme_path}/${theme_name}/config/optional/block.block.${theme_name}_content.yml
  mv ${theme_path}/${theme_name}/config/optional/block.block.VARTHEME_SUBTHEME_copyright.yml ${theme_path}/${theme_name}/config/optional/block.block.${theme_name}_copyright.yml
  mv ${theme_path}/${theme_name}/config/optional/block.block.VARTHEME_SUBTHEME_footer.yml ${theme_path}/${theme_name}/config/optional/block.block.${theme_name}_footer.yml
  mv ${theme_path}/${theme_name}/config/optional/block.block.VARTHEME_SUBTHEME_help.yml ${theme_path}/${theme_name}/config/optional/block.block.${theme_name}_help.yml
  mv ${theme_path}/${theme_name}/config/optional/block.block.VARTHEME_SUBTHEME_local_actions.yml ${theme_path}/${theme_name}/config/optional/block.block.${theme_name}_local_actions.yml
  mv ${theme_path}/${theme_name}/config/optional/block.block.VARTHEME_SUBTHEME_local_tasks.yml ${theme_path}/${theme_name}/config/optional/block.block.${theme_name}_local_tasks.yml
  mv ${theme_path}/${theme_name}/config/optional/block.block.VARTHEME_SUBTHEME_main_menu.yml ${theme_path}/${theme_name}/config/optional/block.block.${theme_name}_main_menu.yml
  mv ${theme_path}/${theme_name}/config/optional/block.block.VARTHEME_SUBTHEME_messages.yml ${theme_path}/${theme_name}/config/optional/block.block.${theme_name}_messages.yml
  mv ${theme_path}/${theme_name}/config/optional/block.block.VARTHEME_SUBTHEME_page_title.yml ${theme_path}/${theme_name}/config/optional/block.block.${theme_name}_page_title.yml
  mv ${theme_path}/${theme_name}/config/optional/block.block.VARTHEME_SUBTHEME_socialauthlogin.yml ${theme_path}/${theme_name}/config/optional/block.block.${theme_name}_socialauthlogin.yml
  mv ${theme_path}/${theme_name}/config/optional/block.block.VARTHEME_SUBTHEME_views_block__varbase_heroslider_media_varbase_heroslider_media.yml ${theme_path}/${theme_name}/config/optional/block.block.${theme_name}_views_block__varbase_heroslider_media_varbase_heroslider_media.yml

  # 7.2 Rename the extentions of TWIG template files.
  # html.html.twig is very important and needed file for RTL websites.
  mv ${theme_path}/${theme_name}/templates/system/html.html.twig-VARTHEME_SUBTHEME ${theme_path}/${theme_name}/templates/system/html.html.twig

  # Custom Better Login templates for edit, login, rest password, and register template files.
  mv ${theme_path}/${theme_name}/templates/betterlogin/page--user--edit.html.twig-VARTHEME_SUBTHEME ${theme_path}/${theme_name}/templates/betterlogin/page--user--edit.html.twig
  mv ${theme_path}/${theme_name}/templates/betterlogin/page--user--login.html.twig-VARTHEME_SUBTHEME ${theme_path}/${theme_name}/templates/betterlogin/page--user--login.html.twig
  mv ${theme_path}/${theme_name}/templates/betterlogin/page--user--password.html.twig-VARTHEME_SUBTHEME ${theme_path}/${theme_name}/templates/betterlogin/page--user--password.html.twig
  mv ${theme_path}/${theme_name}/templates/betterlogin/page--user--register.html.twig-VARTHEME_SUBTHEME ${theme_path}/${theme_name}/templates/betterlogin/page--user--register.html.twig
  mv ${theme_path}/${theme_name}/templates/betterlogin/page--user--reset.html.twig-VARTHEME_SUBTHEME ${theme_path}/${theme_name}/templates/betterlogin/page--user--reset.html.twig

  # 8.  Rename VARTHEME_SUBTHEME.base.css files.
  mv ${theme_path}/${theme_name}/css/base/VARTHEME_SUBTHEME.base.css ${theme_path}/${theme_name}/css/base/${theme_name}.base.css

  # 9.  Rename VARTHEME_SUBTHEME-rtl.base.css files.
  mv ${theme_path}/${theme_name}/css/rtl/base/VARTHEME_SUBTHEME-rtl.base.css ${theme_path}/${theme_name}/css/rtl/base/${theme_name}-rtl.base.css

  # 10. Rename VARTHEME_SUBTHEME.base.less file.
  mv ${theme_path}/${theme_name}/less/base/VARTHEME_SUBTHEME.base.less ${theme_path}/${theme_name}/less/base/${theme_name}.base.less

  # 11.  Rename VARTHEME_SUBTHEME-rtl.base.less file.
  mv ${theme_path}/${theme_name}/less/rtl/base/VARTHEME_SUBTHEME-rtl.base.less ${theme_path}/${theme_name}/less/rtl/base/${theme_name}-rtl.base.less

  # 12. Replace all VARTHEME_SUBTHEME with the machine name of your theme.
  grep -rl 'VARTHEME_SUBTHEME' ${theme_path}/${theme_name} | xargs sed -i "s/VARTHEME_SUBTHEME/${theme_name}/g" ;

  # 13. Replace the name: 'Vartheme Sub-Theme (LESS)' to the name of your theme.
  grep -rl 'Vartheme Sub-Theme (LESS)' ${theme_path}/${theme_name} | xargs sed -i "s/Vartheme Sub-Theme (LESS)/${theme_name}/g" ;


  # 14. If we want to use the RTL (right to left) bootstrap.
  # 15.1 Delete the template folder bootstrap.
  rm -rf ${theme_path}/${theme_name}/bootstrap ;

  # 15.2 Download the bootstrap library. change the version as you need.
  wget -P ${theme_path}/${theme_name} https://github.com/twbs/bootstrap/archive/v${bootstrap_library_version}.tar.gz -vvv

  # 15.3 Extract the bootstrap library.
  mkdir ${theme_path}/${theme_name}/bootstrap
  tar -xzvf ${theme_path}/${theme_name}/v${bootstrap_library_version}.tar.gz --strip-components=1 -C ${theme_path}/${theme_name}/bootstrap -vvv

  # 15.4 Delete the archived bootstrap library.
  rm ${theme_path}/${theme_name}/v${bootstrap_library_version}.tar.gz

  # 16. If we want to use the RTL (right to left) bootstrap.
  if [[ $direction == "rtl" || $direction == "RTL" ]]; then
    # 16.1. Delete the template folder bootstrap-rtl.
    rm -rf ${theme_path}/${theme_name}/bootstrap-rtl ;

    # 16.2. Download the bootstrap library. change the version as you need.
    wget -P ${theme_path}/${theme_name} https://github.com/morteza/bootstrap-rtl/archive/v${bootstrap_rtl_library_version}.tar.gz -vvv

    # 16.3. Extract the bootstrap library.
    mkdir ${theme_path}/${theme_name}/bootstrap-rtl
    tar -xzvf ${theme_path}/${theme_name}/v${bootstrap_rtl_library_version}.tar.gz --strip-components=1 -C ${theme_path}/${theme_name}/bootstrap-rtl -vvv

    # 16.4. Delete the archived bootstrap library.
    rm ${theme_path}/${theme_name}/v${bootstrap_rtl_library_version}.tar.gz
  fi

  generated_datetime="$(date '+%Y/%m/%d - %H:%M:%S')";
  generated_log=" Generated by -- create-new-vartheme ${theme_name} ${direction} ${theme_path} -- on ${generated_datetime}";
  echo "${generated_log}"  >> ${theme_path}/${theme_name}/README.md;

  echo "---------------------------------------------------------------------------";
  echo "   The new Vartheme subtheme were created at \"${theme_path}/${theme_name} :)\" ";
  echo "---------------------------------------------------------------------------";
  exit 0;

else
  echo "---------------------------------------------------------------------------";
  echo "   The folder \"${theme_path}/${theme_name}\" is already in the site!";
  echo "---------------------------------------------------------------------------";
  exit 1;
fi

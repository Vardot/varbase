#!/bin/bash

# Create new vartheme subtheme.

bootstrap_library_version="3.3.7";
bootstrap_rtl_library_version="3.4.0";

# Default theme name
theme_name="mytheme";

# Grape the theme name argument.
if [ "$1" != "" ]; then
  if [[ $1 =~ ^[A-Za-z][A-Za-z0-9_]*$ ]]; then
    theme_name=$1;
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



# Default direction of language.
direction="ltr";

# Grape the direction argument. only if we have arg #2.
if [ "$2" != "" ]; then
  if [[ $2 == "rtl" || $2 == "RTL" ]]; then
    direction=$2;
  elif [[ $2 == "ltr" || $2 == "LTR" ]]; then
    direction=$2;
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
theme_path="docroot/themes/custom";

# Grape the theme path argument. only if we have arg #3.
if [ "$3" != "" ]; then
  if [[ $3 =~ ^[A-Za-z][A-Za-z0-9_-/]*$ ]]; then
    arg3=$3;
    if [[ "${arg3: -1}" == "/" ]]; then
      arg3="${arg3::-1}";
    fi

    if [[ ! -d "$arg3" ]]; then
      theme_path=$arg3;
      mkdir -p $theme_path;
    fi
  else
    echo "---------------------------------------------------------------------------";
    echo "   Theme path must be in the right format!                                 ";
    echo "---------------------------------------------------------------------------";
    exit 1;
  fi
else
  if [[ ! -d "$theme_path" ]]; then
    mkdir -p $theme_path;
  fi
fi


# Create the new Vartheme subtheme if we do not have a folder with that name yet.
if [[ ! -d "$theme_path/$theme_name" ]]; then
  # 1. Copy the VARTHEME_SUBTHEME folder to your custom theme location.
  cp -r docroot/profiles/varbase/themes/vartheme/VARTHEME_SUBTHEME ${theme_path}/${theme_name} ;

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

  # 7. Rename VARTHEME_SUBTHEME optional blocks.
  mv ${theme_path}/${theme_name}/config/optional/block.block.VARTHEME_SUBTHEME_branding.yml ${theme_path}/${theme_name}/config/optional/block.block.${theme_name}_branding.yml
  mv ${theme_path}/${theme_name}/config/optional/block.block.VARTHEME_SUBTHEME_breadcrumbs.yml ${theme_path}/${theme_name}/config/optional/block.block.${theme_name}_breadcrumbs.yml
  mv ${theme_path}/${theme_name}/config/optional/block.block.VARTHEME_SUBTHEME_content.yml ${theme_path}/${theme_name}/config/optional/block.block.${theme_name}_content.yml
  mv ${theme_path}/${theme_name}/config/optional/block.block.VARTHEME_SUBTHEME_footer.yml ${theme_path}/${theme_name}/config/optional/block.block.${theme_name}_footer.yml
  mv ${theme_path}/${theme_name}/config/optional/block.block.VARTHEME_SUBTHEME_help.yml ${theme_path}/${theme_name}/config/optional/block.block.${theme_name}_help.yml
  mv ${theme_path}/${theme_name}/config/optional/block.block.VARTHEME_SUBTHEME_local_actions.yml ${theme_path}/${theme_name}/config/optional/block.block.${theme_name}_local_actions.yml
  mv ${theme_path}/${theme_name}/config/optional/block.block.VARTHEME_SUBTHEME_local_tasks.yml ${theme_path}/${theme_name}/config/optional/block.block.${theme_name}_local_tasks.yml
  mv ${theme_path}/${theme_name}/config/optional/block.block.VARTHEME_SUBTHEME_main_menu.yml ${theme_path}/${theme_name}/config/optional/block.block.${theme_name}_main_menu.yml
  mv ${theme_path}/${theme_name}/config/optional/block.block.VARTHEME_SUBTHEME_messages.yml ${theme_path}/${theme_name}/config/optional/block.block.${theme_name}_messages.yml
  mv ${theme_path}/${theme_name}/config/optional/block.block.VARTHEME_SUBTHEME_page_title.yml ${theme_path}/${theme_name}/config/optional/block.block.${theme_name}_page_title.yml

  # 8.  Rename VARTHEME_SUBTHEME.base.css files.
  mv ${theme_path}/${theme_name}/css/base/VARTHEME_SUBTHEME.base.css ${theme_path}/${theme_name}/css/base/${theme_name}.base.css
  mv ${theme_path}/${theme_name}/css/base/VARTHEME_SUBTHEME.base.css.map ${theme_path}/${theme_name}/css/base/${theme_name}.base.css.map

  # 9.  Rename VARTHEME_SUBTHEME-rtl.base.css files.
  mv ${theme_path}/${theme_name}/css/rtl/base/VARTHEME_SUBTHEME-rtl.base.css ${theme_path}/${theme_name}/css/rtl/base/${theme_name}-rtl.base.css
  mv ${theme_path}/${theme_name}/css/rtl/base/VARTHEME_SUBTHEME-rtl.base.css.map ${theme_path}/${theme_name}/css/rtl/base/${theme_name}-rtl.base.css.map

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
  generated_log=" Generated by -- composer create-new-vartheme ${theme_name} ${direction} ${theme_path} -- on ${generated_datetime}";
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

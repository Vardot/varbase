# 8.6.4

### Highlighted important changes since Varbase 8.6.3:
* Issue [#3024940](https://www.drupal.org/node/3024940):
                   Changed [Varbase Media Hero Slider] to have a fixed Image
                   max and min Height
* Issue [#3026247](https://www.drupal.org/node/3026247):
                   Added [vartheme/spacing] bootstrap spacing library to
                   support a back-ported spacing style borrowed from Bootstrap 4
* Issue [#3023119](https://www.drupal.org/node/3023119):
                   Added VBO to admin/content and admin/people and changed
                   the batch size to 50
* Issue [#3023181](https://www.drupal.org/node/3023181):
                   Added VBO to admin/media with [Created from, and Created to]
                   date filters to media table
* Issue [#3025036](https://www.drupal.org/node/3025036):
                   Added target bundle [text and image] to landing page
                   components * (landing page paragraphs field) without
                   changing old configurations

### Added since Varbase 8.6.3:
* Issue [#3026046](https://www.drupal.org/node/3026046):
                   Added styling template for [Varbase Media Hero Slider] to
                   VARTHEME_SUBTHEM to let themers change Custom Varbase Hero
                   slider media variables
* Issue [#3026247](https://www.drupal.org/node/3026247):
                   Added [vartheme/spacing] bootstrap spacing library to
                   support a back-ported spacing style borrowed from Bootstrap 4
* Issue [#3025783](https://www.drupal.org/node/3025783):
                   Added a default RTL Font [Droid Arabic Kufi ] to Vartheme
                   and VARTHEME_SUBTHEME
* Issue [#3023119](https://www.drupal.org/node/3023119):
                   Added VBO to admin/content and admin/people and changed
                   the batch size to 50
* Issue [#3023181](https://www.drupal.org/node/3023181):
                   Added VBO to admin/media with [Created from, and Created to]
                   date filters to media table
* Issue [#3023087](https://www.drupal.org/node/3023087):
                   Added a default override for Views Infinite Scroll button
                   style to use Bootstrap btn
* Issue [#3023116](https://www.drupal.org/node/3023116):
                   Added Drupal Console ~1.0 to require-dev
* Issue [#3025036](https://www.drupal.org/node/3025036):
                   Added target bundle [text and image] to landing page
                   components * (landing page paragraphs field) without changing old configurations

### Changed since Varbase 8.6.3:
* Issue [#3024940](https://www.drupal.org/node/3024940):
                   Changed [Varbase Media Hero Slider] to have a fixed Image
                   max and min Height
* Issue [#3027158](https://www.drupal.org/node/3027158):
                   Changed [Views Bootstrap] module from 3.1 to ~3.0

### Updates since Varbase 8.6.3:
* Issue [#3027176](https://www.drupal.org/node/3027176):
                   Updated [Adminimal] theme from 1.3 to ~1.0 (1.4) at the time
* Issue [#3023061](https://www.drupal.org/node/3023061):
                   Updated [Simple XML Sitemap] module from ^2.12 to ~3.0
* Issue [#3024236](https://www.drupal.org/node/3024236):
                   Updated [Entity Clone] module from 1.x-dev 6d0ce05 to ~1.0
* Issue [#3023647](https://www.drupal.org/node/3023647):
                   Updated [Menu position] module
                   from 1.x-dev d134276 to 8.1.0-alpha1 (~1.0)
* Issue [#3028740](https://www.drupal.org/node/3028740):
                   Updated [Vimeo api player.js] external remote player library
                   from version: 2.6.1 to open card for latest library version

### Fixes since Varbase 8.x-6.3:
* Issue [#3025606](https://www.drupal.org/node/3025606)
  by [Mohammed J. Razem](https://www.drupal.org/u/mohammed-j-razem):
                   Fixed description caret staying on its
                   own line when description has HTML
* Issue [#3023173](https://www.drupal.org/node/3023173):
                   Fixed [VBO) Fatal error with a patch when we execute simple
                   actions on [Adminimal] theme
* Issue [#3026336](https://www.drupal.org/node/3026336):
                   Fixed issue for [page manager] module with 2665328 87.patch
                   as variants take entity label not the variant title
* Issue [#3020311](https://www.drupal.org/node/3020311)
                   by [a.qala](https://www.drupal.org/u/aqala):
                   Fixed accordion issue with 2921228-3.patch for
                   [Field Group] module with accordion field groups (both on
                   form and view modes)
* Issue [#3028164](https://www.drupal.org/node/3028164):
                   Fixed a bug of not loading general metatag defaults configs
                   in active config on installation
* Issue [#3028739](https://www.drupal.org/node/3028739):
                   Fixed issue with single slide height on full content and
                   single slick slide and the center of video players


# 8.6.3

### Highlighted important changes since Varbase 8.6.2:

Now you can install most Varbase components with any Drupal 8 site. Even if
 installed with the Minimal or Standard profile.

However, using them with Varbase distro and Vartheme theme gives you way much
 more cool stuff!

For an example of how to require them in Drupal 8 site you can have a look at

 [Varbase Media](https://www.drupal.org/project/varbase_media/issues/3017553)

 [Varbase Editor](https://www.drupal.org/project/varbase_editor/issues/3017550)

* Issue [#3017555](https://www.drupal.org/node/3017555):
                  Changed [Varbase 8.6.x] Components dependencies on
                  install: enable or dependencies: enable of modules in the
                  .info.yml and composer.json to have tilde Version Range (~)
* Issue [#3020808](https://www.drupal.org/node/3020808):
                  Updated scripts settings for [Create new vartheme subtheme]
                  generator command to use
[Bootstrap library 3.4.0](https://blog.getbootstrap.com/2018/12/13/bootstrap-3-4-0/)
* [varbase-project] template: Added Varbase Updater for Managing Varbase updates
                  [#43](https://github.com/Vardot/varbase-project/issues/43)
* [varbase-project] template: Added composer-patches to repositories type vcs
                  for vardot/composer-patches repository
                  [#44](https://github.com/Vardot/varbase-project/issues/44)

**NOTICE:** We're now using composer patches from Vardot repository to suggest
several fixes and better handling of patches in your Drupal project.
You'll notice that we have included (https://github.com/vardot/composer-patches)
in the this composer.json repositories. This will replace the original
library (cweagans/composer-patches) with our own from (vardot/composer-patches).
See https://github.com/cweagans/composer-patches/pull/243 and more details
on our changes on the composer-patches package. Once our changes get merged,
we will revert to using (cweagans/composer-patches) without this override.

To follow with the latest work on this subject you could
have a look at our Varbase Project template file:
https://github.com/Vardot/varbase-project/blob/8.6.x/composer.json

### Added since Varbase 8.6.2:
* Issue [#3021486](https://www.drupal.org/node/3021486):
                  Added [webform analysis and Webform Views Integration]
                  to [Varbase core] and enable in [Varbase Webform] with
                  install: not dependency:
* Issue [#3019580](https://www.drupal.org/node/3019580):
                  Added an on install permission for [Varbase Search] to grant
                  anonymous and authenticated users a permission to
                  [search content] and removed that from Varbase on install.
* [varbase-project] template: Added patch Level for drupal/core project
                  with -p2 level using composer-patches 1.6.5
                  [#42](https://github.com/Vardot/varbase-project/issues/42)
* [varbase-project] template: Added Varbase Updater for Managing Varbase updates
                  [#43](https://github.com/Vardot/varbase-project/issues/43)
* [varbase-project] template: Added composer-patches to repositories type vcs
                  for vardot/composer-patches repository
                  [#44](https://github.com/Vardot/varbase-project/issues/44)

### Changed since Varbase 8.6.2:
* Issue [#3017555](https://www.drupal.org/node/3017555):
                  Changed [Varbase 8.6.x] Components dependencies on
                  install: enable or dependencies: enable of modules in the
                  .info.yml and composer.json to have tilde Version Range (~)
* Issue [#3017554](https://www.drupal.org/node/3017554):
                  Changed [Varbase Core] Components dependencies on
                  install: enable or dependencies: enable of modules in the
                  .info.yml and composer.json to have tilde Version Range (~)
* Issue [#3017553](https://www.drupal.org/node/3017553):
                  Changed [Varbase Media] Components dependencies on
                  install: enable or dependencies: enable of modules in the
                  .info.yml and composer.json to have tilde Version Range (~)
* Issue [#3017550](https://www.drupal.org/node/3017550):
                  Changed [Varbase Editor] Components dependencies on
                  install: enable or dependencies: enable of modules in the
                  .info.yml and composer.json to have tilde Version Range (~)
* Issue [#3017502](https://www.drupal.org/node/3017502):
                  Changed [Varbase Blog (Corporate Blog)] composer.json to have
                  tilde Version Range (~)
* Issue [#3017512](https://www.drupal.org/node/3017512):
                  Changed [Varbase Bootstrap Paragraphs] Components
                  dependencies on install: enable or dependencies: enable of
                  modules in the .info.yml and composer.json to have tilde
                  Version Range (~)
* Issue [#3017517](https://www.drupal.org/node/3017517):
                  Changed [Varbase Landing] Components dependencies on
                  install: enable or dependencies: enable of modules in the
                  .info.yml and composer.json to have tilde Version Range (~)
* Issue [#3017509](https://www.drupal.org/node/3017509):
                  Changed [Varbase Media Hero Slider] Components dependencies
                  on install: enable or dependencies: enable of modules in the
                  .info.yml and composer.json to have tilde Version Range (~)
* Issue [#3017507](https://www.drupal.org/node/3017507):
                  Changed [Varbase Carousels] Components dependencies on
                  install: enable or dependencies: enable of modules in the
                  .info.yml and composer.json to have tilde Version Range (~)
* Issue [#3017499](https://www.drupal.org/node/3017499):
                  Changed [Varbase Social Single Sign-On] Components
                  dependencies on install: enable or dependencies: enable
                  of modules in the .info.yml and composer.json to
                  have tilde Version Range (~)
                  and added support for stark, bartik, bootstrap, with Vartheme
* Issue [#3017506](https://www.drupal.org/node/3017506):
                  Changed [Varbase Search] Components dependencies on
                  install: enable or dependencies: enable of modules in the
                  .info.yml and composer.json to have tilde Version Range (~)
* Issue [#3017546](https://www.drupal.org/node/3017506):
                  Changed [Varbase SEO] Components dependencies on
                  install: enable or dependencies: enable of modules in the
                  .info.yml and composer.json to have tilde Version Range (~)
* Issue [#3017498](https://www.drupal.org/node/3017498):
                  Changed [Varbase Styleguide] Components dependencies on
                  install: enable or dependencies: enable of modules in the
                  .info.yml and composer.json to have tilde Version Range (~)
* Issue [#3017515](https://www.drupal.org/node/3017515):
                  Changed [Varbase Total Control Dashboard] Components
                  dependencies on install: enable or dependencies: enable of
                  modules in the .info.yml and composer.json to have tilde
                  Version Range (~)
* Issue [#3018004](https://www.drupal.org/node/3018004):
                  Changed [Vartheme] composer.json to have tilde Version
                  Range (~)
* Issue [#3018134](https://www.drupal.org/node/3018134):
                  Changed [Vartheme Admin] composer.json to have tilde Version
                  Range (~)
* Issue [#3017494](https://www.drupal.org/node/3017494):
                  Changed [Varbase FAQs] Components dependencies
                  on install: enable or dependencies: enable of modules in the
                  .info.yml and composer.json to have tilde Version Range (~)

### Updates since Varbase 8.6.2:
* Issue [#3020808](https://www.drupal.org/node/3020808):
                  Updated scripts settings for [Create new vartheme subtheme]
                  generator command to use
[Bootstrap library 3.4.0](https://blog.getbootstrap.com/2018/12/13/bootstrap-3-4-0/)
* Issue [#3018483](https://www.drupal.org/node/3018483):
                  Varbase 8.6.3: Updated [CHANGELOG.md, UPDATE.md,
                  drupal-org.make] files and filtered the code for
                  Drupal 8 Coding Standard:
```
    Updated [Bootstrap] theme from 8.3.13 to 8.3.16
    Updated [View Modes Inventory - Bootstrap Ready] module from 8.2.0 to 8.2.1
    Updated [Configuration Update Manager] module from 8.1.5 to 8.1.6
    Updated [Config Filter] module from 8.1.3 to 8.1.4
    Updated [Display Suite] module from 8.3.1 to 8.3.2
    Updated [Ace Code Editor] module from 8.1.0 to 8.1.1
    Updated [Admin Toolbar] module from 8.1.24 to 8.1.25
    Updated [Webform] module from 8.5.0-rc26 to 8.5.0
    Updated [Real-time SEO for Drupal] module from 8.1.4 to 8.1.5
    Updated [Search API] module from 8.1.10 to 8.1.11
    Updated [Blazy] module from 8.1.0-rc3 to 8.1.0-rc4
    Updated [Slick Carousel] module from 8.1.0 to 8.1.1
    Updated [Slick Media] module from 8.2.0-alpha2 to 8.2.0-alpha3
```

* Issue [#3019722](https://www.drupal.org/node/3019722):
                  Updated [Display Suite] module from 3.1 to ~3
* Issue [#3022251](https://www.drupal.org/node/3022251):
                  Updated [Taxonomy Menu] module from 3.x-dev 1103ad0 3.4
                  with a patch
* Issue [#3019721](https://www.drupal.org/node/3019721):
                  Updated [Slick Carousel] module from 1.0 to ~1.0

### Fixes since Varbase 8.x-6.2:
* Issue [#3019686](https://www.drupal.org/node/3019686):
                  Fixed issue of media image default view mode of linking the
                  default image to the file image.
* Issue [#3017493](https://www.drupal.org/node/3017493)
                  by [Muath Khraisat](https://www.drupal.org/u/muath-khraisat)
                 : Fixed the appearing of the image in the
                  entity browser widget.
* Issue [#3019107](https://www.drupal.org/node/3019107)
                  by [mohammad faqeh](https://www.drupal.org/u/mohammad-faqeh)
                 : [IE] fixed the height space under the
                  card image appeared on IE.
* Issue [#3012888](https://www.drupal.org/node/3012888)
                  by [mhawwari](https://www.drupal.org/u/malhawwari)
                 : Fixed Syntax Error In Card Component.
* Issue [#3022562](https://www.drupal.org/node/3022562):
                  Fixed Broken/missing handler on bulk action field
                  in Media Library view.
* Issue [#3022669](https://www.drupal.org/node/3022669):
                  Fixed Issue with [Localization client] of User error:
                  0 is an invalid render array key.

--------------------------------------------------------------------------------

# 8.6.2

### Highlighted important changes since Varbase 8.6.1:
* Issue [#3012231](https://www.drupal.org/node/3012231):
                  Updated [Drupal core] from 8.6.2 to 8.6.3

### Added since Varbase 8.6.1:
* No new features in this version, as it's only an update for Drupal core.

### Changed since Varbase 8.6.1:
* No changes in this version, as it's only an update for Drupal core.

### Updates since Varbase 8.6.1:
* Issue [#3012231](https://www.drupal.org/node/3012231):
                  Updated [Drupal core] from 8.6.2 to 8.6.3
* Issue [#3012288](https://www.drupal.org/node/3012288):
                  Updated [Webform] module from ^8.5.0-rc24 to ^8.5.0-rc26

### Fixes since Varbase 8.x-6.1:
* No fixes in this version, as it's only an update for Drupal core.

--------------------------------------------------------------------------------

# 8.6.1

### Highlighted important changes since Varbase 8.6.0:
* Issue [#3009782](https://www.drupal.org/node/3009782):
                 Updated [Paragraphs] module from 8.1.3 to 8.1.5

Paragraphs - Moderately critical - Access Bypass - 
[SA-CONTRIB-2018-073](https://www.drupal.org/sa-contrib-2018-073)

* Issue [#3008794](https://www.drupal.org/node/3008794):
                  Changed the patch for [Drupal 8.6.x core] to Allow profiles
                  to define a base/parent profile and load them in the
                  correct order.
* Issue [#3009841](https://www.drupal.org/node/3009841):
                  Added exposed date filters to [Content, People] views in
                  [Varbase Admin] module, so that admins will be able list
                  content or users with the selected date range.

### Added since Varbase 8.6.0:
* Issue [#3009841](https://www.drupal.org/node/3009841):
                  Added exposed date filters to [Content, People] views in
                  [Varbase Admin] module, so that admins will be able list
                  content or users with the selected date range.
* Issue [#3010819](https://www.drupal.org/node/3010819):
                  Styled a width for [Created content from, and to] date
                  filters and [Registered user from, and to] date filters.
* Issue [#3009957](https://www.drupal.org/node/3009957):
                  Added a default [Simple sitemap] settings with
                  [Skip non-existent translations] checked by default.

### Change since Varbase 8.6.0:
* Issue [#3008794](https://www.drupal.org/node/3008794):
                  Changed the patch for [Drupal 8.6.x core] to Allow profiles
                  to define a base/parent profile and load them in the correct
                  order.

### Updates since Varbase 8.6.0:
* Issue [#3009782](https://www.drupal.org/node/3009782):
                  Updated [Paragraphs] module from 8.1.3 to 8.1.5
* Issue [#3009790](https://www.drupal.org/node/3009790):
                  Updated [Better Exposed Filters] module
                  from ^8.3.0-alpha4 to ^8.3.0-alpha5
* Issue [#3010216](https://www.drupal.org/node/3010216):
                  Updated [Real-time SEO for Drupal] module
                  from ^1.3 to ^1.4
* Issue [#3009794](https://www.drupal.org/node/3009794):
                  Updated [Charts] module from ^8.3.0-alpha9 to ^8.3.0-beta2

### Fixes since Varbase 8.6.0:
* Issue [#3010008](https://www.drupal.org/node/3010008):
                  Fixed [Varbase default content] homepage with H1 tag for
                  the website name.
* Issue [#3009983](https://www.drupal.org/node/3009983):
                  Fixed homepage, user/login, user/register, and
                  user/password having no H1
* Issue [#3010485](https://www.drupal.org/node/3010485)
                  by sally_nader: Made blocks titles translatable
* Issue [#3010828](https://www.drupal.org/node/3010828)
                  by sally_nader: Removed translation function from
                  blocks views templates


--------------------------------------------------------------------------------

# 8.6.0

### Highlighted important changes since Varbase 8.5.x:
* Issue [#3003340](https://www.drupal.org/node/3003340):
                  Switched [Varbase Media] to use [Remote Video] with oEmbed
                  from Drupal 8.6.x core.
* Issue [#3006742](https://www.drupal.org/node/3006742):
                  Added a hint description for which remote source we can
                  embed in the [Embed] tab in the Varbase Entity Browsers.
* Issue [#3005535](https://www.drupal.org/node/3005535):
                  Enabled an OPTIONAL [Layout Builder] configs to use with the 
                 [Default] view mode for the [Basic page] content type by
                  default and allow each content item to have its layout
                  customized.
* Issue [#3008320](https://www.drupal.org/node/3008320):
                  Updated the Automated Functional Acceptance Testing to cover
                  the new media and media library and browser updates.

### Added since Varbase 8.5.x:
* Issue [#2993499](https://www.drupal.org/node/2993499):
                  Started an 8.x-6.x new branch for [Varbase] version:
                  8.x-6.x-dev and extra branch-alias
                  with dev-8.x-6.x to 8.6.x-dev
* Issue [#3006742](https://www.drupal.org/node/3006742):
                  Added a hint description for which remote source we can embed
                  in the [Embed] tab in the Varbase Entity Browsers.
* Issue [#2995503](https://www.drupal.org/node/2995503):
                  Added [Layout Builder Restrictions] module 8.1.0

### Change since Varbase 8.5.x:
* Issue [#3003340](https://www.drupal.org/node/3003340):
                  Switched [Varbase Media] to use [Remote Video] with oEmbed
                  from Drupal 8.6.x core.
* Issue [#3006742](https://www.drupal.org/node/3006742):
                  Added a hint description for which remote source we can
                  embed in the [Embed] tab in the Varbase Entity Browsers.
* Issue [#2995503](https://www.drupal.org/node/2995503):
                  Added [Layout Builder Restrictions] module 8.1.0
* Issue [#3005535](https://www.drupal.org/node/3005535):
                  Enabled an OPTIONAL [Layout Builder] configs to use with
                  the [Default] view mode for the [Basic page] content type
                  by default and allow each content item to have its layout
                  customized.
* Issue [#3005123](https://www.drupal.org/node/3005123):
                  Switched [Vartheme admin] to use [Remote Video] with oEmbed
                  from Drupal 8.6.x core.
* Issue [#3003359](https://www.drupal.org/node/3003359):
                  Switched [Vartheme] to use [Remote Video] with oEmbed
                  from Drupal 8.6.x core.
* Issue [#2998212](https://www.drupal.org/node/2998212):
                  Switched to use [Remote Video] with oEmbed from Drupal
                  8.6.x core
* Issue [#3003267](https://www.drupal.org/node/3003267):
                  Changed [Varbase] profile info.yml to project:module
                  syntax standard not to have a broken installation of
                  sub profiles.
* Issue [#3001196](https://www.drupal.org/node/3001196):
                  Enabled [BigPipe] Drupal core module by default.
* Issue [#3008320](https://www.drupal.org/node/3008320):
                  Updated the Automated Functional Acceptance Testing to
                  cover the new media and media library and browser updates.
* Issue [#3004239](https://www.drupal.org/node/3004239):
                  Changed the logic of which default image field name for
                  media entity should be used for the Social share image
                  styles and tokens.
* Issue [#3003332](https://www.drupal.org/node/3003332):
                  Switched [Varbase Blog (Corporate Blog)] to use
                  [Remote Video] with oEmbed from Drupal 8.6.x core.
* Issue [#2990617](https://www.drupal.org/node/2990617):
                  Removed required for the categories field, not to have
                  issues on Blog content creation, as the categories brings
                  a field error message not visible.
* Issue [#3003337](https://www.drupal.org/node/3003337):
                  Switched [Varbase Editor] to use [Remote Video] with oEmbed
                  from Drupal 8.6.x core.
* Issue [#3003438](https://www.drupal.org/node/3003438):
                  Changed [Varbase SEO] optional config for google analytics
                  settings.
* Issue [#3003435](https://www.drupal.org/node/3003435):
                  Changed [Varbase Search] Default database server config to
                  have matching partial.
* Issue [#2995535](https://www.drupal.org/node/2995535):
                  Made Google Analytics optional - Re-structure [Varbase SEO]
                  dependencies to suggested installs.
* Issue [#3003438](https://www.drupal.org/node/3003438):
                  Changed [Varbase SEO] optional config for google analytics
                  settings.
* Issue [#2995712](https://www.drupal.org/node/2995712)
                  by alonaoneill: Capitalize the name of the module and
                  dependency namespacing in .info.yml file.
* Issue [#2995476](https://www.drupal.org/node/2995476):
                  Removed [Vartheme Material Design] themes and related modules.

### Updates since Varbase 8.5.x:
* Issue [#3007650](https://www.drupal.org/node/3007650):
                  Updated [Drupal core] from 8.6.1 to 8.6.2
* Issue [#3008154](https://www.drupal.org/node/3008154):
                  Updated [Webform] module from ^8.5.0-rc21 to ^8.5.0-rc24
* Issue [#2995114](https://www.drupal.org/node/2995114):
                  Updated [Image Optimize (or ImageAPI Optimize)] module
                  from 8.2.0-alpha3 to 8.2.0-alpha4
* Issue [#2995117](https://www.drupal.org/node/2995117):
                  Updated [Metatag] module from 8.1.5 to ^8.1.7 and change to
                  open requirement and the Drupal.org make builder.
* Issue [#3000907](https://www.drupal.org/node/3000907):
                  Updated [Views Bootstrap] from 3.x-dev ec4e787 to ^3.1
                  (Drush make) and automated test and removed the hash commit.
* Issue [#3000924](https://www.drupal.org/node/3000924):
                  Updated [Search API] module from 8.1.9 to 8.1.10 (Drush make)
                  and automated tests.
* Issue [#3000934](https://www.drupal.org/node/3000934):
                  Updated [Layout Builder Restrictions] module 8.1.1 to 8.1.2
                  (Drush make)
* Issue [#3000945](https://www.drupal.org/node/3000945):
                  Updated [Media entity Instagram] module
                  from 8.2.0-alpha1 to 8.2.0-alpha2 (Drush make) and
                  automated tests
* Issue [#3000975](https://www.drupal.org/node/3000975):
                  Updated [Link Attributes widget] module from 8.1.3 to 8.1.5
                  (Drush make) and automated tests.
* Issue [#3007525](https://www.drupal.org/node/3007525):
                  Updated [Blazy] module from 8.1.0-rc2 to ^8.1.0-rc3
* Issue [#3007529](https://www.drupal.org/node/3007529):
                  Updated [Config Filter] module from ^8.1.2 to ^8.1.3
* Issue [#3007537](https://www.drupal.org/node/3007537):
                  Updated [Entity API] module from 8.1.0-beta4 to 8.1.0-rc1
* Issue [#3007550](https://www.drupal.org/node/3007550):
                  Updated [Entity Reference Revisions] module
                  from ^8.1.5 to ^8.1.6
* Issue [#3007567](https://www.drupal.org/node/3007567):
                  Updated [Persistent Login] module from 8.1.0 to 8.1.1
* Issue [#3007577](https://www.drupal.org/node/3007577):
                  Updated [Redirect] module from ^8.1.2 to ^8.1.3
* Issue [#3007583](https://www.drupal.org/node/3007583):
                  Updated [Security Kit] module from ^8.1.0 to ^8.1.1
* Issue [#3007585](https://www.drupal.org/node/3007585):
                  Updated [Token] module from ^8.1.4 to ^8.1.5

### Fixes since Varbase 8.5.x:
* Issue [#3004098](https://www.drupal.org/node/3004098):
                  Fixed [Vartheme admin] theme style to work with Seven theme
                  from Drupal 8.6.x core.
* Issue [#3001899](https://www.drupal.org/node/3001899):
                  by midobel: Fixed typo in the welcome page.
* Issue [#3000014](https://www.drupal.org/node/3000014):
                  by mhawwari: Fixed Better Login Input Label Alignment.
* Issue [#2990965](https://www.drupal.org/node/2990965):
                  Fixed issue of unable to edit menu items, which related to
                  entity clone patch.
* Issue [#2999427](https://www.drupal.org/node/2999427):
                  by JayBeeDutch, Mohammed J. Razem: Fixed typo in the text
                  between the installation and the redirection.

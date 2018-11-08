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

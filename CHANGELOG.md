# 8.6.11

### Highlighted important changes since Varbase 8.6.10:

* Issue [#3056587](https://www.drupal.org/node/3056587):
                  Updated [Drupal core] from 8.7.1 to 8.7.2 ( ~8.7.0 )
                  and removed all patches for 8.7.1
* Issue [#3056598](https://www.drupal.org/node/3056598):
                 Varbase 8.6.11: Updated [CHANGELOG.md, README.md,
                 drupal-org.make] files and filter the code for
                 Drupal 8 Coding Standard
* Updated [Admin Toolbar] module from 8.1.26 to 8.1.27
* Updated [Adminimal - Responsive Administration Theme] theme
          from 8.1.4 to 8.1.5

--------------------------------------------------------------------------------

# 8.6.10

### Highlighted important changes since Varbase 8.6.9:
* Issue [#3052218](https://www.drupal.org/node/3052218):
                  Updated [Drupal core] from ~8.6.0 to ~8.7.0
* Issue [#3051422](https://www.drupal.org/node/3051422):
                  Have Vartheme BS4 as the default theme for Varbase and
                  disable Vartheme
* Issue [#3052293](https://www.drupal.org/node/3052293):
                  Changed and shifted Varbase Media responsive image styles
                  to work with the mapping of Bootstrap 3 breakpoints into
                  Bootstrap 4 breakpoints.

This update works for any theme, whether you are using Bootstrap 3,
 Bootstrap 4, or any theme. It adds new breakpoints provided from Varbase
 Media module (based on Bootstrap 4 media queries) to unify the way responsive
 images are displayed.

Varbase Media Mapping Bootstrap 3 into Bootstrap 4:
* Switched BS3 XS max ( < 768px) to BS4 SM max ( <767.98px)
* Switched BS3 SM min ( >=768px) to BS4 MD min ( >=768px)
* Switched BS3 MD min ( >=992px) to BS4 LG min ( >=992px)
* Switched BS3 LG min ( >=1200px) to BS4 XL min ( >=1200px)

### Added since Varbase 8.6.9:
* Issue [#3051878](https://www.drupal.org/node/3051878):
                  Added project: varbase to varbase.info.yml
* Issue [#3051417](https://www.drupal.org/node/3051417):
                  Added default Vartheme optional blocks in Vartheme BS4
                  and VARTHEM_BS4_SUBTHEME
*                 Updated the create new vartheme BS4 sub-theme generator to
                  rename new block config files
* Issue [#3051709](https://www.drupal.org/node/3051709):
                  Added logo.png and logo-print.png files for default logo
                  and default print logo
* Issue [#3051285](https://www.drupal.org/node/3051285):
                  Added Max length (300) for the slide text in
                  [Varbase Media Hero Slider]
* Issue [#3051265](https://www.drupal.org/node/3051265)
                  by
                  [abu-zakham](https://www.drupal.org/u/abu-zakham)
                  : Added the 3032549-18.patch for [Password Policy] module to
                  fix the saving constraint issue
* Issue [#3052248](https://www.drupal.org/node/3052248)
                  by
                  [devkinetic](https://www.drupal.org/u/devkinetic)
                  : Added private flag to package.json for Vartheme BS4

### Changed since Varbase 8.6.9:
* Issue [#3051884](https://www.drupal.org/node/3051884):
                  Switched to use [Varbase Entity Definition Update Manager]
                  and remove deprecated
                  \Drupal::entityDefinitionUpdateManager()->applyUpdates()
* Issue [#3051483](https://www.drupal.org/node/3051483):
                  Changed the default Hero Slider instant block at the
                  home page to work with Vartheme BS4 theme as the
                  default theme
* Issue [#3051468](https://www.drupal.org/node/3051468):
                  Changed the default content and Varbase Welcome Message
                  to work with Vartheme BS4
* Issue [#3052733](https://www.drupal.org/node/3052733):
                  Generated config updates for Varbase 8.6.9 in the update
                  helper checklist and optimized the config updates
* Issue [#3053039](https://www.drupal.org/node/3053039):
                  Marked all updates by the update helper checklist as
                  successful on install
* Issue [#3051248](https://www.drupal.org/node/3051248)
                  by
                  [Firass Ziedan](https://www.drupal.org/u/firass-ziedan)
                  : Removed the language code from base_url in
                  [Varbase Media Hero Slider] oembed base_path
* Issue [#3053436](https://www.drupal.org/node/3053436)
                  by
                  [waleedq](https://www.drupal.org/u/waleedq)
                  : Applied an update onsave for the [Update Helper] module, and
                  disable applied updates and updated the patch
                  to 3024165-31.patch
* Issue [#3055619](https://www.drupal.org/node/3055619)
                  by
                  [metalbote](https://www.drupal.org/u/metalbote)
                  : Changed Varbase Behat Context to use form element ids
                 instead of labels, so that tests run on non-english installs
* Issue [#3055719](https://www.drupal.org/node/3055719)
                  by
                  [YousefAnbar](https://www.drupal.org/u/yousefanbar)
                  : Removed .equal-height-xs from bootstrap 4 as it is not needed

### Updates since Varbase 8.6.9:
* Issue [#3052578](https://www.drupal.org/node/3052578):
                  Updated [Default Content] module
                  from 8.1.0-alpha7 to 8.1.0-alpha8
* Issue [#3052694](https://www.drupal.org/node/3052694):
                  Updated [Entity Embed] module from 8.1.0-beta2 to 8.1.0-beta3
* Issue [#3052708](https://www.drupal.org/node/3052708):
                  Updated JavaScript/CSS libraries for Popper and Bootstrap
                  Barrio theme for new toast and alert library

### Fixes since Varbase 8.x-6.9:
* Issue [#3052032](https://www.drupal.org/node/3052032)
                  by
                  [devkinetic](https://www.drupal.org/u/devkinetic)
                  : Fixed Main menu template dropdown settings applied
                  to all links
* Issue [#3051462](https://www.drupal.org/node/3051462)
                  by
                  [m.alhawwari](https://www.drupal.org/u/malhawwari)
                  : Fixed to return header media from default when no
                  translation is available
* Issue [#3053163](https://www.drupal.org/node/3053163):
                  Fixed Media grid view style after the update to
                  Drupal 8.7.0 stable
* Issue [#3055737](https://www.drupal.org/node/3055737)
                  by
                  [mohammad faqeh](https://www.drupal.org/u/mohammad-faqeh)
                  : Fixed card deck and space under card image on IE
* Issue [#3056083](https://www.drupal.org/node/3056083):
                  Fixed regression of responsive image styles when updating
                  to Bootstrap 4 breakpoints

--------------------------------------------------------------------------------

# 8.6.9

### Highlighted important changes since Varbase 8.6.8:
* Issue [#3053839](https://www.drupal.org/node/3053839):
                  Update [Drupal core] from 8.6.15 to 8.6.16
* Drupal core - Moderately critical - Third-party libraries -
  [SA-CORE-2019-007](https://www.drupal.org/SA-CORE-2019-007)
* Issue [#3053828](https://www.drupal.org/node/3053828):
                  Changed drupal/core ~8.6 to ~8.6.0 to let composer
                  update to 8.6.16 and more 8.6.x versions and
                  not to update to 8.7.x

--------------------------------------------------------------------------------

# 8.6.8

### Highlighted important changes since Varbase 8.6.7:
* Issue [#3048545](https://www.drupal.org/node/3048545):
                  Implement theme suggestions and JS behaviors in
                  Varbase Media for each video provider to support autoplay
                  for various video providers (YouTube, Vimeo, and Local video)
* Issue [#3048729](https://www.drupal.org/node/3048729):
                  Initialized the Varbase Media Header slider 8.x-7.x branch
                  structure and implement theme suggestions and JS behaviors
                  for each video provider to support autoplay for various video
                  providers (YouTube, Vimeo, and Local video)
* Issue [#3050202](https://www.drupal.org/node/3050202):
                  Implemented theme suggestions and JS behaviours in
                  Varbase Media Header for each video provider to support
                  autoplay for various video providers
                  (YouTube, Vimeo, and Local video) targeted for
                  the media header
* Issue [#3048206](https://www.drupal.org/node/3048206):
                  Added [Length Indicator] module 8.1.0-rc3
                  length indicator with 15 50 10
                  - Added [Length Indicator] to the form view config for
                  [Basic page] content type
                  - Added the checklist for optional updates over the
                  [Length Indicator] configs modules
                  - Added targeted modules with #dependency in the checklist
                  item and updated the Updated Helper for optional updates

### Added since Varbase 8.6.7:
* Issue [#3049759](https://www.drupal.org/node/3049759):
                  Added [Length Indicator] to the form view config for
                  [Landing page] content type
* Issue [#3049760](https://www.drupal.org/node/3049760):
                  Added [Length Indicator] to the form view config for
                  [Blog post] content type
* Issue [#3049762](https://www.drupal.org/node/3049762):
                  Added [Length Indicator] to the form view config for
                  [Hero slider] content type

### Changed since Varbase 8.6.7:
* Issue [#3049751](https://www.drupal.org/node/3049751):
                  Styled the one slide view and Full content hero slider page
                  to look like a preview for the slide
* Issue [#3049744](https://www.drupal.org/node/3049744):
                  Have the title element go to the end of the line, with the
                  Length Indicator and the title should have the same exact
                  width, on all responsive sizes
* Issue [#3050421](https://www.drupal.org/node/3050421)
                  by
                  [Mohammad Fayoumi](https://www.drupal.org/u/mohammad-fayoumi)
                  : Support multi-language media header
                  for the selected media field and content types
* Issue [#3045727](https://www.drupal.org/node/3045727)
                  by
                  [scoff](https://www.drupal.org/u/scoff)
                  : Changed VMH expects page_title and breadcrumbs
                  to be NOT only in (header) region and if disabled or
                  removed then costumed

### Updates since Varbase 8.x-6.7:
* Issue [#3050503](https://www.drupal.org/node/3050503):
                  Varbase 8.6.8: Update [CHANGELOG.md, README.md,
                  drupal-org.make] files and filter the code for Drupal 8
                   Coding Standard
* Updated [Drupal core] from 8.6.14 to 8.6.15 (Drush make) in composer
   it's (~8.6.0)
* Updated [Entityqueue] from 1.0-beta1 to 1.0-beta2  (Drush make) in composer
   it's (~1.0)
* Updated [dropzonejs] from 2.0-alpha3 to 2.0-alpha4  (Drush make) in composer
   it's (~2.0)

### Fixes since Varbase 8.x-6.7:
* Issue [#3048899](https://www.drupal.org/node/3048899):
                  Fixed module path in Varbase Media being passed to the
                  selected oembed ifreame twig template for the current active
                  library path to Varbase Media
* Issue [#3049750](https://www.drupal.org/node/3049750):
                  Fixed Vimeo view size issue in the Embed tab in Varbase
                  entity browsers
* Issue [#3050105](https://www.drupal.org/node/3050105)
                  by
                  [Mohammad Fayoumi](https://www.drupal.org/u/mohammad-fayoumi)
                  : Removed the duplicated line of
                  code (type: theme) in vartheme_bs4.info.yml
* Issue [#3047417](https://www.drupal.org/node/3047417)
                  by
                  [Firass Ziedan](https://www.drupal.org/u/firass-ziedan)
                  : Fixed fatal error after translating
                  tabs paragraph type
* Issue [#3050576](https://www.drupal.org/node/3050576)
                  by
                  [devkinetic](https://www.drupal.org/u/devkinetic)
                  : Fixed VMI text teaser css typo
* Issue [#3033781](https://www.drupal.org/node/3033781)
                  by
                  [stefan.korn](https://www.drupal.org/u/stefankorn)
                  : Fixed vartheme subtheme does not use
                  the toolbar top space issue as it was fixed from base theme

--------------------------------------------------------------------------------


# 8.6.7

### Highlighted important changes since Varbase 8.6.6:
* Issue [#3046616](https://www.drupal.org/node/3046616):
                  Switched of using [Responsive image styles] only to use
                  [Blazy loading with responsive image styles] for most media
                  view mode sizes of ( Image, Video, Remote Video) media types
Test Varbase Blog and VMI Images and Videos with Blazy
* Issue [#3043881](https://www.drupal.org/node/3043881):
                  Added [Varbase Update Helper] to the List of default varbase
                  components, which they will be installed when we
                  install varbase
* Issue [#3043869](https://www.drupal.org/node/3043869):
                  Added [Varbase Email] module to the List of default varbase
                  components, which it will be installed when we
                  install varbase.
* Issue [#3047359](https://www.drupal.org/node/3047359):
                  Removed enabling the [smtp] module as we have switched to
                  use swiftmailer ~1.0 and Varbase emailing configs switched
                  to [Varbase Email] module.

### Added since Varbase 8.6.6:
* Issue [#3044573](https://www.drupal.org/node/3044573):
                  Added a post Message play to oEmbed iframe for Remote
                  Youtube and Vimeo embedded videos
* Issue [#3047120](https://www.drupal.org/node/3047120):
                  Added spaceless twig filter for titles of Varbase Bootstrap
                  Paragraphs templates.
* Issue [#3040222](https://www.drupal.org/node/3040222):
                  Added a default style for the [Maintenance page] in
                  Vartheme BS4 and VARTHEME_BS4_SUBTHEME
* Issue [#3043841](https://www.drupal.org/node/3043841):
                  Added theme-settings.php and [Email Logo] settings to
                  [Vartheme Bootstrap 4 settings] to be used with
                  [Varbase Email] module
* Issue [#3043826](https://www.drupal.org/node/3043826):
                  Added [Email Logo] settings to [Vartheme settings] to be
                  used with [Varbase Email] module
* Issue [#3047326](https://www.drupal.org/node/3047326):
                  Added support for link_attributes in menus in Vartheme BS4
* Issue [#3024168](https://www.drupal.org/node/3024168)
                  by
                  [waleedq](https://www.drupal.org/u/waleedq)
                  , [Mohammed J. Razem](https://www.drupal.org/u/mohammed-j-razem)
                  : Added the [Varbase Update Helper] module and
                  [update helper, checklist api] modules in the
                  [Varbase core] module.
* Issue [#3042113](https://www.drupal.org/node/3042113)
                  by
                  [waleedq](https://www.drupal.org/u/waleedq)
                  , [Mohammed J. Razem](https://www.drupal.org/u/mohammed-j-razem)
                  : Initialize the first structure for the [Varbase Email] module
* Issue [#3044588](https://www.drupal.org/node/3044588):
                  Added a replace for ajaxorg/ace-builds * library in the
                  composer as we are using npm-asset/ace-builds ~1.0

### Changed since Varbase 8.6.6:
* Issue [#3046906](https://www.drupal.org/node/3046906):
                  Changed default entity view display for Images in the
                  Carousels slick settings for the new
                  Slick ~2.0 and Blazy ~2.0
* Issue [#3047144](https://www.drupal.org/node/3047144):
                  Changed all [Glyphicon] icons to [Font Awesome] icons
                  in [Vartheme BS4] and clean up of old bootstrap icons
* Issue [#3041041](https://www.drupal.org/node/3041041):
                  Removed .justify-content-center from [Vartheme BS4] as
                  Justify content centre is in the Bootstrap base library
                  only keep the RTL one
* Issue [#3043888](https://www.drupal.org/node/3043888):
                  Have a better CSS utility classes for [Vartheme BS4]
                  on the [.hidden-anonymous] to Hide for anonymous users
                  and [.visible-logged-in, .visible-admin] to Show only
                  for admin users
* Issue [#3029389](https://www.drupal.org/node/3029389)
                  by
                  [Mithun S](https://www.drupal.org/u/mithun-s)
                  : Changed [Vartheme] to use short array as per the
                  coding standards
* Issue [#3040036](https://www.drupal.org/node/3029389):
                   Changed a patch for [Drupal core 8.6.11] from
                   2815221-109.patch to 2815221-116.patch which
                   add quickedit to the latest-revision route

### Updates since Varbase 8.6.6:
* Issue [#3044552](https://www.drupal.org/node/3044552):
                  Updated [Entity Browser] module from 8.2.0 to 8.2.1
* Issue [#3044558](https://www.drupal.org/node/3044558):
                  Updated [Focal Point] module from 8.1.0-beta6 to stable 8.1.0
* Issue [#3046874](https://www.drupal.org/node/3046874):
                  Updated [Blazy] module from (~1.0) to (~2.0)
* Issue [#3046885](https://www.drupal.org/node/3046885):
                  Updated [Slick Carousel] module from (~1.0) to (~2.0)
* Issue [#3046886](https://www.drupal.org/node/3046886):
                  Updated [Slick Views] module from (~1.0) to (~2.0)
* Issue [#3044086](https://www.drupal.org/node/3044086):
                  Updated [Paragraphs] module from 8.1.6 to 8.1.8
* Issue [#3044122](https://www.drupal.org/node/3044122):
                  Updated [Search API] module from 8.1.11 to 8.1.12 (~1.0)
* Issue [#3044561](https://www.drupal.org/node/3044561):
                  Updated [Panels] module from 8.4.3 to 8.4.4 (~4.0)

### Fixes since Varbase 8.x-6.6:
* Issue [#3046417](https://www.drupal.org/node/3046417)
                  by
                  [Firass Ziedan](https://www.drupal.org/u/firass-ziedan)
                  : Fixed Vartheme BS4 fatal error when using
                  paragraph two column uneven
* Issue [#3047330](https://www.drupal.org/node/3047330):
                  Fixed typo from .sass to .scss in comments and tips for which
                  variable files to work on.
* Issue [#3035473](https://www.drupal.org/node/3035473)
                  by
                  [stefan.korn](https://www.drupal.org/u/stefankorn)
                  : Fixed less file syntax for [Media Hero Slider]
* Issue [#3039104](https://www.drupal.org/node/3039104):
                  Fixed VARTHEME_BS4_SUBTHEME .info file on the issue of
                  calling vbp-colors, and betterlogin, as it is a recursive
                  library override, will bring PHP Fatal error: Allowed memory
                  size on symfony yaml Parser on line 169
* Issue [#3039160](https://www.drupal.org/node/3039160):
                  Fixed logo-print.png path for Vartheme BS4 and
                  VARTHEME_BS4_SUBTHEME a legacy issue from old vartheme
* Issue [#3039173](https://www.drupal.org/node/3039173):
                  Fixed old script token of VARTHEME_SUBTHEME to
                  VARTHEME_BS4_SUBTHEME in the sub theme
* Issue [#3039435](https://www.drupal.org/node/3039435):
                  Fixed betterlogin twig-VARTHEME_BS4_SUBTHEME and
                  system call of VARTHEME_BS4_SUBTHEME blocks and
                  libraries vartheme_bs4/global-styles
* Issue [#3039513](https://www.drupal.org/node/3039513):
                  Fixed bootstrap variables not been overridden in
                  Vartheme BS4 and VARTHEME_BS4_SUBTHEME

--------------------------------------------------------------------------------


# 8.6.6

### Highlighted important changes since Varbase 8.6.5:
* Issue [#3038760](https://www.drupal.org/node/3038760):
                 Added [Vartheme (Bootstrap 4 - SASS)] theme (~6.0)
* Cleaned up all hash commits so that
 [vardot/varbase-project](https://github.com/Vardot/varbase-project)
 template and the
 [composer.json](https://github.com/Vardot/varbase-project/blob/8.6.x/composer.json)
 looks clean.

### Added since Varbase 8.6.5:
* Issue [#3038760](https://www.drupal.org/node/3038760):
                 Added [Vartheme (Bootstrap 4 - SASS)] theme (~6.0)
* Issue [#3038760](https://www.drupal.org/node/3038760):
                 Added the create-new-vartheme-bs4.sh bash file to generate
                 Vartheme BS4 sub theme ( Bootstrap 4 ) SASS and updated the
                 [README.md](https://github.com/Vardot/varbase/blob/8.x-6.x/scripts/README.md)
                 for scripts
* Issue [#3035272](https://www.drupal.org/node/3035272):
                 Added 3023452-5.patch for [Drupal core] to fix the issue of
                 Views placeholder texts are not translatable

### Changed since Varbase 8.6.5:
* Cleaned up all hash commits so that
 [vardot/varbase](https://github.com/Vardot/varbase)  
 [composer.json](https://github.com/Vardot/varbase/blob/8.6.x/composer.json) and 
 [vardot/varbase-project](https://github.com/Vardot/varbase-project)
 template and the
 [composer.json](https://github.com/Vardot/varbase-project/blob/8.6.x/composer.json)
 looks clean.
* Issue [#3036491](https://www.drupal.org/node/3036491):
                 Changed [Welcome to Varbase] block in [Varbase default content]
                 module to support Bootstrap 4 grid system
* Issue [#3037138](https://www.drupal.org/node/3037138):
                 Changed the patch to Fix fatal errors when we have missing
                 layouts, on an update after the update [Display suite]
                 module from 8.3.2 to 8.3.3
* Issue [#3034793](https://www.drupal.org/node/3034793):
                 Removed a patch for [Views Bulk Operations (VBO)] as it was
                 applied in 8.25 and the serializable issues were fixed in
                 Drupal core 8.6.x
* Issue [#3035245](https://www.drupal.org/node/3035245):
                 Removed a patch for [Rabbit Hole] as it was applied in
                 1.0-beta5 as we us (~1.0)
* Issue [#3037117](https://www.drupal.org/node/3037117):
                 Removed all patches for [Entity Clone] module after
                 8.x-1.0-beta3 went out

### Updates since Varbase 8.6.5:
* Issue [#3035483](https://www.drupal.org/node/3035483):
                 Update [Custom Permissions] module
                 from 2.0-beta1 (~2.0) to 2.0-beta2 (~2.0)
* Issue [#3037138](https://www.drupal.org/node/3037138):
                 Updated [Display suite] module from 8.3.2 to 8.3.3
* Issue [#3033885](https://www.drupal.org/node/3033885):
                 Updated [Chaos Tool Suite (ctools)] module from 8.3.0 to 8.3.2
* Issue [#3038019](https://www.drupal.org/node/3038019):
                 Updated [Login Destination] module
                 from 8.1.x-dev 54be8b to 8.1.0-alpha1 with (~1.0)
* Issue [#3037311](https://www.drupal.org/node/3037311):
                 Updated [Image Resize Filter] module and update
                 [Varbase Editor] to configure [Rich editor, Simple editor]
                 to use for local and remote images and not to use
                 for [HTML coder]

### Fixes since Varbase 8.x-6.5:
* Issue [#3033885](https://www.drupal.org/node/3033885):
                 Fixed issues after ctools 3.2 with 3033057-13.patch
                 and 3031778-37.patch

--------------------------------------------------------------------------------

# 8.6.5

### Highlighted important changes since Varbase 8.6.4:
* Cleaned up number of modules with hash commits so that
 [vardot/varbase-project](https://github.com/Vardot/varbase-project)
 template and the
 [composer.json](https://github.com/Vardot/varbase-project/blob/8.6.x/composer.json)
 looks clean.
* Issue [#3033630](https://www.drupal.org/node/3033630):
                  Renamed Google+ to Google in installer.
* Issue [#3034471](https://www.drupal.org/node/3034471):
                 Updated [Google Analytics Reports] module
                 from 3.x-dev 2b6bb8e to (~3.0) as 8.x-3.0-beta2 went out.
* Issue [#3034567](https://www.drupal.org/node/3034567):
                 Changed [Social Auth Google] Google+ logo to Google accounts
                 as Google shutdown Google+
* Issue [#3032661](https://www.drupal.org/node/3032661):
                 Changed [Varbase Internationalization] not to use the
                 [Localization client] module by disabling it for old sites
                 and not to install it in new Varbase installations.
* Issue [#3033768](https://www.drupal.org/node/3033768):
                 Fixed W3C standards for element div not allowed as child
                 of element h2.

### Added since Varbase 8.6.4:
* Issue [#3034567](https://www.drupal.org/node/3034567):
                 Added the 3034353-2.patch for [Social Auth Google] to change
                 the Google+ logo to Google accounts as Google shutdown Google+

### Changed since Varbase 8.6.4:
* Issue [#3033630](https://www.drupal.org/node/3033630)
                 by [Mohammed J. Razem](https://www.drupal.org/u/mohammed-j-razem):
                 Renamed Google+ to Google in installer.
* Issue [#3032661](https://www.drupal.org/node/3032661):
                 Changed [Varbase Internationalization] not to use the
                 [Localization client] module by disabling it for old sites
                 and not to install it in new Varbase installations.
* Issue [#3032678](https://www.drupal.org/node/3032678):
                 Changed [Varbase Security] not to install the [Security Review]
                 module in new Varbase installations and require a * wild
                 card version.
* Issue [#3032690](https://www.drupal.org/node/3032690):
                 Changed [Varbase Admin] require [Mail Editor] module with a
                 * wild card version.
* Issue [#3034396](https://www.drupal.org/node/3034396):
                 Removed all patches for [Entity Clone] as they
                 all are already applied in 8.x-1.0-beta2.

### Updates since Varbase 8.6.4:
* Issue [#3034582](https://www.drupal.org/node/3034582):
                 Update [Drupal core] from 8.6.7 to 8.6.10
* Issue [#3034471](https://www.drupal.org/node/3034471):
                 Updated [Google Analytics Reports] module from
                 3.x-dev 2b6bb8e to (~3.0) as 8.x-3.0-beta2 went out.
* Issue [#3034513](https://www.drupal.org/node/3034513):
                 Updated [Paragraphs] module from 8.1.5 to 8.1.6
* Issue [#3034502](https://www.drupal.org/node/3034502):
                 Updated [Paragraphs Previewer] module from 8.1.2 to 8.1.4
* Issue [#3032699](https://www.drupal.org/node/3032699):
                 Updated [Tour Builder] module
                 from 1.x-dev d70e898 to (~1.0) as 8.x-1.0-alpha1 went out
* Issue [#3032929](https://www.drupal.org/node/3032929):
                 Updated [Node Edit Protection] module
                 from 1.x-dev 902339c to (~1.0) as 8.x-1.0-alpha1 went out.

### Fixes since Varbase 8.x-6.4:
* Issue [#3033768](https://www.drupal.org/node/3033768)
                 by [Mohammad Fayoumi](https://www.drupal.org/u/mohammad-fayoumi):
                 Fixed W3C standards for element div not allowed as child of element h2.
* Issue [#3033845](https://www.drupal.org/node/3033845)
                 by [m.alhawwari](https://www.drupal.org/u/malhawwari):
                 Fixed overflow of table input field on smaller screens.

--------------------------------------------------------------------------------

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

--------------------------------------------------------------------------------

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

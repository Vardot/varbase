# 8.5.1

### Highlighted important changes since Varbase 8.5.0:
* Issue [#3000876](http://drupal.org/node/3000876):
                 Update [Drupal core] from 8.5.7 to 8.6.1
* Issue [#3001196](http://drupal.org/node/3001196):
                 Enable [BigPipe] Drupal core module by default

### Added since Varbase 8.5.0:
* No new features

### Change since Varbase 8.5.0:
Issue [#3001196](http://drupal.org/node/3001196):
                 Enable [BigPipe] Drupal core module by default

### Updates since Varbase 8.5.0:
* Issue [#3000876](http://drupal.org/node/3000876):
                 Update [Drupal core] from 8.5.7 to 8.6.1
* Issue [#3000907](http://drupal.org/node/3000907):
                 Update [Views Bootstrap] from 3.x-dev ec4e787 to ^3.1
* Issue [#3000924](http://drupal.org/node/3000924):
                 Update [Search API] module from 8.1.9 to 8.1.10
* Issue [#3000934](http://drupal.org/node/3000934):
                 Update [Layout Builder Restrictions] module 8.1.1 to 8.1.2
* Issue [#3000945](http://drupal.org/node/3000945):
                 Update [Media entity Instagram] module
                 from 8.2.0-alpha1 to 8.2.0-alpha2
* Issue [#3000975](http://drupal.org/node/3000975):
                 Update [Link Attributes widget] module from 8.1.3 to 8.1.5
* Issue [#2999288](http://drupal.org/node/2999288):
                 Update [Bootstrap] theme from ^8.3.12 to ^8.3.13

### Fixes since Varbase 8.5.0:
* Issue [#3000014](http://drupal.org/node/3000014)
                  by [mhawwari](https://www.drupal.org/u/mhawwari):
                  Fix Better Login Input Label Alignment

--------------------------------------------------------------------------------

# 8.5.0

### Highlighted important changes since Varbase 8.4.x:

* Issue [#2959483](http://drupal.org/node/2959483):
                 Change [Varbase Profile] modules and config to work with
                 [Media] Drupal core module.
* Issue [#2974100](http://drupal.org/node/2974100):
                 Add the asset composer repository [asset-packagist.org],
                 and switched all used libraries to use asset packaging.
* Issue [#2956295](http://drupal.org/node/2956295):
                 Depart modules and themes from Varbase 8.x-5.x Profile as
                 stand-alone projects.
* Issue [#2967640](http://drupal.org/node/2967640):
                 Add storage [Field Video] and [Field Media] to [Varbase Core]
                 to let developers create fields for video media types of
                 (local), (embed) and use the [Video Browser]
                 from [Varbase Media].
* Issue [#2978726](http://drupal.org/node/2978726):
                 [Varbase Blog] Change [Main Image] field to [Main Media] to
                 use [Field Media] from [Varbase Core] for images and video
                 posts, and use the [Media Browser] from [Varbase Media] as
                 the default Media browser for the [Blog Post] content type.
* Issue [#2975920](http://drupal.org/node/2975920):
                 Add [Varbase Video Player] library, along with
                 varbase_media/youtube_player and varbase_media/vimeo_player
                 libraries to have play External and locally hosted videos.
* Issue [#2978723](http://drupal.org/node/2978723):
                 [Varbase Media] Add [Media Browser] as a general image and
                 video browsers for the [Field media] in Varbase core.
* Issue [#2978725](http://drupal.org/node/2978725):
                 [Varbase Media Hero Slider] Switch to use [Media Browser]
                 from [Varbase Media] as the default Media browser for hero
                 slider content type. and removed not needed views and the
                 custom hero slider media browser.
* Issue [#2979168](http://drupal.org/node/2979168):
                 Optimize configs of responsive images for media [Size 8]
                 and [Edge to Edge] on (auto, standard, traditional, and
                 square), and Have no revision information or revision log
                 message for media types, and added Varbase Auto Fill Media
                 data Behaviours.
* Issue [#2983378](http://drupal.org/node/2983378):
                 Add [data entity embed display settings] TO LINK entity
                 image with a target link when we embed the image in
                 the CKEditor.
* Issue [#2997498](http://drupal.org/node/2997498):
                 Add [Component title] to most component paragraph types
* Issue [#2978726](http://drupal.org/node/2978726):
                 Change [Main Image] field to [Main Media] to use [Field Media]
                 from [Varbase Core] for images and video posts, and use
                 the [Media Browser] from [Varbase Media] as the default
                 Media browser for the [Blog Post] content type.
* Issue [#2995514](http://drupal.org/node/2995514):
                 Switch from restricted composer require to open, only for
                 not patched modules And add the composer.lock in the
                 varbase-project template.
* Issue [#2986808](http://drupal.org/node/2986808):
                 Remove [panelizer] module with all used configs.
* Issue [#2987364](http://drupal.org/node/2987364):
                 Change [Varbase Bootstrap Paragraphs] colors to use
                 background-color
* Issue [#2987365](http://drupal.org/node/2987365):
                 Change [Vartheme][vbp-colors] paragraphs colors to use
                 background-color
* Issue [#2999006](http://drupal.org/node/2999006):
                 Change the [Field Media] og:image metatags for [Varbase blog]
                 to use our custom social token
                 [node:field_media:entity:social_large]

### Added since Varbase 8.4.x:

* Issue [#2961471](http://drupal.org/node/2961471):
                 Add Video (external) and Video (local) media video types.
                Add Field media cover image. Added Video Browser, and General
                 Browser.
                Add [Source] option switcher between [Embed] and [Upload]
                 video file for the media video type.
                Configure Video form Display, Display media view modes, and
                 Have local video tag style (fiv Video).
* Issue [#2997498](http://drupal.org/node/2997498):
                 Add [Component title] to most component paragraph types
* Issue [#2977178](http://drupal.org/node/2977178):
                 Add [Paragraphs Features] module 8.1.1
* Issue [#2977218](http://drupal.org/node/2977218):
                 Add [Paragraphs asymmetric translation widgets
                 module 1.x-dev e676e68
* Issue [#2983384](http://drupal.org/node/2983384):
                 Add the 25114040-47.patch for the [Entity Embed] module
                 to let editors be able to Embed Image media and link them
                 to a target URL in the CKEditor
* Issue [#2995503](http://drupal.org/node/2995503):
                 Add [Layout Builder Restrictions] module 8.1.0
* Issue [#2975920](http://drupal.org/node/2975920):
                 Add [Varbase Video Player] library, along with
                 varbase_media/youtube_player and varbase_media/vimeo_player
                 libraries to have play External and locally hosted videos.

### Changes since Varbase 8.4.x:
* Issue [#2962007](http://drupal.org/node/2962007):
                 Change machine names for Image Styles and Responsive Image
                 Styles from [ (d1 ... d9) to (d01 .. 09) ] , and Media sizes
                 from [ (s1 ... s9) to (s01 ... s09) ] for better order in
                 listing and readability.
* Issue [#2995514](http://drupal.org/node/2995514):
                 Switched from restricted composer require to open, only for
                 not patched modules And add the composer.lock in the
                 varbase-project template.
* Issue [#2977148](http://drupal.org/node/2977148):
                 Change the Automated Functional Acceptance Testing after
                 the update for [Paragraphs] module from 8.1.2 to 8.1.3
* Issue [#2959483](http://drupal.org/node/2959483):
                 Change the composer.json to use [Varbase Meida][Entity
                 Browser Generic Embed] custom module. and moved
                 vardot/varbase_vmi_demo and vardot/varbase_story_demo
                 to require-dev
* Issue [#2978780](http://drupal.org/node/2978780):
                 Change [Varbase] bundle config not to have blocks in the
                 optional config folder, as they will be in the config/install
* Issue [#2983236](http://drupal.org/node/2983236):
                 Revert [Real-time SEO] module back to old JS version (1.x)
                 instead of version (2.x)
* Issue [#2986808](http://drupal.org/node/2986808):
                 Remove [panelizer] module with all used configs
* Issue [#2988835](http://drupal.org/node/2988835):
                 Add the 2936358-64 patch for Drupal core 8.5.x to have
                 [Layout Builder] with opt-in per display
                 (entity type/bundle/view mode)
* Issue [#2995476](http://drupal.org/node/2995476):
                 Remove [Vartheme Material Design] themes and related modules
* Issue [#2998951](http://drupal.org/node/2998951):
                 Remove config for the social auth login block for
                 [Vartheme Material Design] theme, as it will come
                 with the theme
* Issue [#2978726](http://drupal.org/node/2978726):
                 Change [Main Image] field to [Main Media] to use [Field Media]
                 from [Varbase Core] for images and video posts, and use the
                 [Media Browser] from [Varbase Media] as the default Media
                 browser for the [Blog Post] content type.
* Issue [#2999006](http://drupal.org/node/2999006):
                 Change the [Field Media] og:image metatags for [Varbase blog]
                 to use our custom social token
                 [node:field_media:entity:social_large]
* Issue [#2977199](http://drupal.org/node/2977199):
                 Change Implements hook_form_paragraphs_subform_alter()
                 to hook_field_widget_WIDGET_TYPE_form_alter() after
                 Add paragraph bundle to widget forms.
* Issue [#2977206](http://drupal.org/node/2977206):
                 Add allow_reference_changes: true in a new
                 paragraphs.settings.yml general config.
* Issue [#2977199](http://drupal.org/node/2977199):
                 Change Implements hook_form_paragraphs_subform_alter()
                 to hook_field_widget_WIDGET_TYPE_form_alter() after
                 Add paragraph bundle to widget forms.
* Issue [#2977206](http://drupal.org/node/2977206):
                 Add allow_reference_changes: true in a new
                 paragraphs.settings.yml general config.
* Issue [#2987364](http://drupal.org/node/2987364):
                 Change [Varbase Bootstrap Paragraphs] colors to use
                 background-color
* Issue [#2967633](http://drupal.org/node/2967633):
                 Change [Varbase Carousels] to use the Image Browser and
                 removed the carousels media browser.
* Issue [#2971906](http://drupal.org/node/2971906):
                 Remove [Drupal Image] and [Video embed] CKEditor command
                 buttons from Rich editor and Simple editor.
* Issue [#2983362](http://drupal.org/node/2983362):
                 Change [Rich editor] text format to allow for Align images
                 Uses a data-align attribute on <img> tags to align images.
* Issue [#2962413](http://drupal.org/node/2962413):
                 Change filed [Slide media (image/video)] to use Media types
                 of Image, Video (embed), and Video (local), and - changed
                 the [Heroslider Media Browser] to let user upload videos.
* Issue [#2976585](http://drupal.org/node/2976585):
                 Restructure [Varbase Media Hero slider] on when to load the
                 needed libraries and changed behaviours of local video,
                 Youtube video, and Vimeo Video.
* Issue [#2978725](http://drupal.org/node/2978725):
                 Switch to use [Media Browser] from [Varbase Media] as the
                 default Media browser for hero slider content type. and
                 removed not needed views and the custom hero slider
                 media browser.
* Issue [#2995535](http://drupal.org/node/2995535):
                 Make Google Analytics optional - Re-structure [Varbase SEO]
                 dependencies to suggested installs
* Issue [#2995518](http://drupal.org/node/2995518):
                 Make Google Analytics Reports optional - Re-structure
                 [Varbase Total Control Dashboard] dependencies to
                 suggested installs

### Updates since Varbase 8.4.x:
* Issue [#2977949](http://drupal.org/node/2977949):
                 Update [Drupal core] from 8.5.3 to 8.5.4
* Issue [#2984355](http://drupal.org/node/2984355):
                 Update [Drupal core] from 8.5.4 to 8.5.5
* Issue [#2990103](http://drupal.org/node/2990103):
                 Update [Drupal core] from 8.5.5 to 8.5.6
* Issue [#2997690](http://drupal.org/node/2997690):
                 Update [Drupal core] from 8.5.6 to 8.5.7
* Issue [#2975562](http://drupal.org/node/2975562):
                 Update [Entity Reference Revisions] module
                 from 8.1.4 to 8.1.5
* Issue [#2975569](http://drupal.org/node/2975569):
                 Update [Schema.org Metatag] module from 8.1.2 to 8.1.3
* Issue [#2975570](http://drupal.org/node/2975570):
                 Update [Social Auth Twitter] module
                 from 8.2.0-alpha1 to 8.2.0-alpha2
* Issue [#2975576](http://drupal.org/node/2975576):
                 Update [token] module from 8.1.1 to 8.1.3
* Issue [#2977067](http://drupal.org/node/2977067):
                 Update [Admin Toolbar] module from 8.1.23 to 8.1.24
* Issue [#2977068](http://drupal.org/node/2977068):
                 Update [Maxlength] module from 8.1.0-beta1 to 8.1.0-beta2
* Issue [#2977070](http://drupal.org/node/2977070):
                 Update [SMTP Authentication Support] module
                 from 8.1.0-beta3 to 8.1.0-beta4
* Issue [#2977071](http://drupal.org/node/2977071):
                 Update [Ultimate Cron] module from 8.2.0-alpha3 to 8.2.0-alpha4
* Issue [#2977148](http://drupal.org/node/2977148):
                 Update [Paragraphs] module from 8.1.2 to 8.1.3
* Issue [#2977538](http://drupal.org/node/2977538):
                 Update [Entity Browser] module
                 from 8.2.0-alpha2 to 8.2.0-alpha3
* Issue [#2977546](http://drupal.org/node/2977546):
                 Update [Real-time SEO for Drupal] module
                 from 8.2.0-alpha2 to 8.2.0-alpha3
* Issue [#2977559](http://drupal.org/node/2977559):
                 Update [Webform] module from 8.5.0-rc12 to 8.5.0-rc13
* Issue [#2977538](http://drupal.org/node/2977538):
                 Update [Entity Browser] module
                 from 8.2.0-alpha2 to 8.2.0-alpha3
* Issue [#2977559](http://drupal.org/node/2977559):
                 Update [Webform] module from 8.5.0-rc12 to 8.5.0-rc14
* Issue [#2978505](http://drupal.org/node/2978505):
                 Update [Entity API] module from 8.1.0-beta3 to 8.1.0-beta4
* Issue [#2978512](http://drupal.org/node/2978512):
                 Update [Entity Clone] module
                 from 8.1.x-dev 9265e35 to 8.1.x-dev 6d0ce05
* Issue [#2978515](http://drupal.org/node/2978515):
                 Update [Fast 404] module from 8.1.0-alpha2 to 8.1.0-alpha3
* Issue [#2977559](http://drupal.org/node/2977559):
                 Update [Webform] module from 8.5.0-rc12 to 8.5.0-rc15
* Issue [#2981388](http://drupal.org/node/2981388):
                 Update [Paragraphs asymmetric translation widgets]
                 from 8.1.x-dev e676e68 to 8.1.0-alpha2
* Issue [#2982784](http://drupal.org/node/2982784):
                 Update [Diff] module from 8.1.0-rc1 to 8.1.0-rc2
* Issue [#2982792](http://drupal.org/node/2982792):
                 Update [Webform] module from 8.5.0-rc15 to 8.5.0-rc16
* Issue [#2983282](http://drupal.org/node/2983282):
                 Update [Views Bulk Operations (VBO)] module
                 from 8.2.3 to 8.2.4
* Issue [#2985872](http://drupal.org/node/2985872):
                 Update [Block Class] module from 8.1.0-alpha1 to 8.1.0
* Issue [#2985874](http://drupal.org/node/2985874):
                 Update [Google Analytics] module from 8.2.2 to 8.2.3
* Issue [#2987343](http://drupal.org/node/2987343):
                 Update [Bootstrap] theme from 8.3.11 to 8.3.12
* Issue [#2987344](http://drupal.org/node/2987344):
                 Update [Search API] module from 8.1.8 to 8.1.9
* Issue [#2988769](http://drupal.org/node/2988769):
                 Update [Views Bulk Edit] module from 8.2.1 to 8.2.2
* Issue [#2992070](http://drupal.org/node/2992070):
                 Update [Adminimal Admin Toolbar] module from 8.1.7 to 8.1.8
* Issue [#2992073](http://drupal.org/node/2992073):
                 Update [Honeypot] module from 8.1.27 to 8.1.28
* Issue [#2992075](http://drupal.org/node/2992075):
                 Update [Slick Media] module from 8.2.0-alpha1 to 8.2.0-alpha2
* Issue [#2992083](http://drupal.org/node/2992083):
                 Update [Username Enumeration Prevention] 
                 from 8.1.0-beta1 to 8.1.0-beta2
* Issue [#2993030](http://drupal.org/node/2993030):
                 Update [Security Kit] module from 8.1.0-alpha2 to 8.1.0
* Issue [#2993034](http://drupal.org/node/2993034):
                 Update [Webform] module from 8.5.0-rc16 to 8.5.0-rc18
* Issue [#2995114](http://drupal.org/node/2995114):
                 Update [Image Optimize (or ImageAPI Optimize)] module
                 from 8.2.0-alpha3 to 8.2.0-alpha4
* Issue [#2995117](http://drupal.org/node/2995117)
                 by DamienMcKenna: Update [Metatag] module
                 from 8.1.5 to ^8.1.7 and change to open requirement
                 and the Drupal.org make builder
* Issue [#2997438](http://drupal.org/node/2997438):
                 Update [Entityqueue] module from 8.1.0-alpha7 to ^8.1.0-alpha8
* Issue [#2997745](http://drupal.org/node/2997745):
                 Update [Honeypot] module from ^8.1.28 to ^8.1.29
* Issue [#2997750](http://drupal.org/node/2997750):
                 Update [Color Field] module from ^8.2.0-rc3 to ^8.2.0
* Issue [#2999023](http://drupal.org/node/2999023):
                 Update [Entity Browser] module from 8.2.0-alpha3 to 8.2.0
* Issue [#2999044](http://drupal.org/node/2999044):
                 Update [Layout Builder Restrictions] module
                 from 8.1.0 to 8.1.1 (Drush make)
* Issue [#2999058](http://drupal.org/node/2999058):
                 Update [Paragraphs Features] module
                 from 8.1.2 to 8.1.4 (Drush make) and automated test
* Issue [#2999067](http://drupal.org/node/2999067):
                 Update [pathauto] module from 8.1.2 to 8.1.3 (Drush make)
                 and automated tests
* Issue [#2999077](http://drupal.org/node/2999077):
                 Update [Token] module from 8.1.3 to 8.1.4 (Drush make)
                 and automated tests
* Issue [#2999082](http://drupal.org/node/2999082):
                 Update [View Modes Inventory] module from 8.2.0-alpha1
                 to 8.2.0 (Drush make) and automated tests
* Issue [#2999089](http://drupal.org/node/2999089):
                 Update [Webform] module from 8.5.0-rc18 to 8.5.0-rc21
                 (Drush make) and automated tests
* Issue [#2999289](http://drupal.org/node/2999289):
                 Update [Bootstrap] theme from 8.3.12 to 8.3.13 (Drush make)
                 and automated tests

### Fixes since Varbase 8.4.x:
* Issue [#2976012](http://drupal.org/node/2976012):
                 Fix issue with Argument 1 passed to
                 PageManagerHelper::getVariantTitle() must implement
                 interface Drupal\page_manager\PageVariantInterface or be null,
                 string given in 
                 Drupal\page_manager\PageManagerHelper->getVariantTitle(
* Issue [#2974100](http://drupal.org/node/2974100):
                 Fix the slick library path in drupal-org.amke after we added
                 the asset composer repository [asset-packagist.org], and
                 switched all used libraries to use asset packaging
* Issue [#2978551](http://drupal.org/node/2978551):
                 Fix issue for the [rabbit hole] with [entity clone] modules
                 to ensure getOperation method exists on form
* Issue [#2982794](http://drupal.org/node/2982794):
                 Fix [Drupal core] image calling drupal link functions
                 without checking if the plugin is loaded
* Issue [#2986565](http://drupal.org/node/2986565)
                 by mahmoud-zayed: Fix issue with [Entity clone] which Apply
                 Clone operation shows regardless of permission patch
* Issue [#2986811](http://drupal.org/node/2986811)
                 by abu-zakham: Fix [Ds] issue on a value Conflict with
                 [Layout Builder] in Drupal core
* Issue [#2988830](http://drupal.org/node/2988830):
                 Fix a [Display Suite] fatal errors when we have missing
                 layouts, on an update
* Issue [#2990965](http://drupal.org/node/2990965):
                 Fix issue of unable to edit menu items, which related to
                 entity clone patch
* Issue [#2959805](http://drupal.org/node/2959805):
                 Fix issue with - varbase_media:varbase_media -
                 varbase_seo:varbase_seo - varbase_core:varbase_core in
                 [Varbase Blog (Corporate Blog)] in dependencies for [8.x-5.x].
* Issue [#2980408](http://drupal.org/node/2980408):
                 Fix [Media entity] issue when we update media image, it
                 still retrieves the old image instead of the updated one
* Issue [#2959791](http://drupal.org/node/2959791):
                 Fix issue with - varbase_media:varbase_media -
                 varbase_webform:varbase_webform in
                 [Varbase Bootstrap Paragraphs] dependencies.
* Issue [#2959778](http://drupal.org/node/2959778)
                 by pixelpreview, travisc: Fix WSOD issue when we add an
                 image to a paragraph field.
* Issue [#2981604](http://drupal.org/node/2981604):
                 Fix [Background Image] to use field media image in the
                 media type [Image] under the [Styling settings] part for
                 all Varbase Bootstrap paragraphs types.
* Issue [#2985870](http://drupal.org/node/2985870)
                 by john.money: Fix Missing requirement for
                 better_exposed_filters
* Issue [#2985869](http://drupal.org/node/2985869)
                 by john.money: Fix Missing requirement for video_embed_wysiwyg
* Issue [#2980408](http://drupal.org/node/2980408):
                 Fix [Media entity] issue when we update media image,
                 it still retrieves the old image instead of the updated one.
* Issue [#2956966](http://drupal.org/node/2956966)
                 by Muath Khraisat, Ahmad Abbad: Fix PHP 5.6: Error:
                 syntax error, unexpected
* Issue [#2999427](http://drupal.org/node/2999427)
                 by JayBeeDutch, Mohammed J. Razem: Fix typo in the text
                 between the installation and the redirection
* Issue [#2999447](http://drupal.org/node/2999447): Fix issue of composer
                 installer-paths which locate modules as submodules, not in
                 the root/docroot/module/contrib default location.

# 8.5.0-alpha5

### Highlighted important changes since Varbase 8.5.0-alpha4:
* Issue [#2990103](http://drupal.org/node/2990103):
                  Updated [Drupal core] module from 8.5.5 to 8.5.6
* Drupal Core - 3rd-party libraries -SA-CORE-2018-005
* https://www.drupal.org/SA-CORE-2018-005
* CVE-2018-14773: Remove support for legacy and risky HTTP headers
* https://symfony.com/blog/cve-2018-14773-remove-support-for-legacy-and-ri...
* Zend Security Advisory: ZF2018-01 ZF2018-01: URL Rewrite vulnerability
* https://framework.zend.com/security/advisory/ZF2018-01

# 8.5.0-alpha4

### Highlighted important changes since Varbase 8.5.0-alpha3:
* Issue [#2986808](http://drupal.org/node/2986808):
                  Removed [panelizer] module with all used configs.
* Issue [#2988835](http://drupal.org/node/2988835):
                  Added the 2936358-64 patch for Drupal core 8.5.x to have
                  [Layout Builder] with opt-in per display
                  (entity type/bundle/view mode)
* Issue [#2987364](http://drupal.org/node/2987364):
                  Changed [Varbase Bootstrap Paragraphs] colors to use
                  background-color
* Issue [#2987365](http://drupal.org/node/2987365):
                  Changed [Vartheme][vbp-colors] paragraphs colors to use
                  background-color
* Issue [#2987366](http://drupal.org/node/2987366):
                  Changed [Vartheme Material][vbp-colors] paragraphs colors to
                  use background-color

### Highlighted important changes since Varbase 8.5.0-alpha2:
* Issue [#2984355](http://drupal.org/node/2984355):
                  Updated [Drupal core] from 8.5.4 to 8.5.5

### Highlighted important changes since Varbase 8.5.0-alpha1:
* Issue [#2983378](http://drupal.org/node/2983378):
                  Added [data entity embed display settings] TO LINK entity
                  image with a target link when we embed the image in
                  the CKEditor.
* Issue [#2983236](http://drupal.org/node/2983236):
                  Reverted [Real-time SEO] module back to old JS version
                  (1.x) instead of version (2.x)
* Issue [#2980408](http://drupal.org/node/2980408):
                  Fixed [Media entity] issue when we update media image,
                  it still retrieves the old image instead of the updated one

### Highlighted important changes since Varbase 8.4.x:
* Issue [#2959483](http://drupal.org/node/2959483):
                  Changed [Varbase Profile] modules and config to work with
                  [Media] Drupal core module.
* Issue [#2974100](http://drupal.org/node/2974100):
                  Added the asset composer repository [asset-packagist.org],
                  and switched all used libraries to use asset packaging.
* Issue [#2956295](http://drupal.org/node/2956295):
                  Departed modules and themes from Varbase 8.x-5.x Profile
                  as stand-alone projects.
* Issue [#2967640](http://drupal.org/node/2967640):
                  Added storage [Field Video] and [Field Media] to
                  [Varbase Core] to let developers create fields for video
                  media types of (local), (embed) and use the [Video Browser]
                  from [Varbase Media].
* Issue [#2978726](http://drupal.org/node/2978726):
                  [Varbase Blog] Changed [Main Image] field to [Main Media]
                  to use [Field Media] from [Varbase Core] for images and
                  video posts, and use the [Media Browser] from [Varbase Media]
                  as the default Media browser for the [Blog Post] content type.
* Issue [#2978723](http://drupal.org/node/2978723):
                  [Varbase Media] Added [Media Browser] as a general image and
                  video browsers for the [Field media] in Varbase core.
* Issue [#2978725](http://drupal.org/node/2978725):
                  [Varbase Media Hero Slider] Switched to use [Media Browser]
                  from [Varbase Media] as the default Media browser for hero
                  slider content type. and removed not needed views and the
                  custom hero slider media browser.
* Issue [#2979168](http://drupal.org/node/2979168):
                  Optimized configs of responsive images for media [Size 8]
                  and [Edge to Edge] on (auto, standard, traditional,
                  and square), and Have no revision information or revision
                  log message for media types, and added Varbase Auto Fill
                  Media data Behaviours.

### Added since Varbase 8.5.0-alpha3:
* Issue [#2988835](http://drupal.org/node/2988835):
                  Added the 2936358-64 patch for Drupal core 8.5.x to have
                  [Layout Builder] with opt-in per display
                  (entity type/bundle/view mode)

### Changed since Varbase 8.5.0-alpha3:
* Issue [#2987364](http://drupal.org/node/2987364):
                  Changed [Varbase Bootstrap Paragraphs] colors to use
                  background-color
* Issue [#2987365](http://drupal.org/node/2987365):
                  Changed [Vartheme][vbp-colors] paragraphs colors to use
                  background-color
* Issue [#2987366](http://drupal.org/node/2987366):
                  Changed [Vartheme Material][vbp-colors] paragraphs colors
                  to use background-color
* Issue [#2986800](http://drupal.org/node/2986800)
                  by Ahmad Abbad: Remove content_translation module from
                  dependencies.
* Issue [#2988764](http://drupal.org/node/2988764):
                  Removed configs from [Varbase Media Hero Slider] module,
                  which were related to the [panelizer] module as we
                  removed panelizer from [Varbase] profile.
* Issue [#2988761](http://drupal.org/node/2988761):
                  Removed configs from [Varbase Core] module, which were
                  related to the [panelizer] module as we removed panelizer
                  from [Varbase] profile.
* Issue [#2986884](http://drupal.org/node/2986884):
                  Removed configs from [Varbase blog] which were related to
                  the [panelizer] module as we removed panelizer from
                  [Varbase] profile.
* Issue [#2988774](http://drupal.org/node/2988774):
                  Changed the composer.json for [Varbase core] module.
* Issue [#2988776](http://drupal.org/node/2988776):
                  Changed the composer.json for [Varbase Media] module.
* Issue [#2988780](http://drupal.org/node/2988780):
                  Changed the composer.json for [Varbase Bootstrap
                  Paragraphs] module.
* Issue [#2988782](http://drupal.org/node/2988782):
                  Changed the composer.json for [Varbase Editor] module.
* Issue [#2988784](http://drupal.org/node/2988784):
                  Changed the composer.json for [Varbase Landing] module
* Issue [#2988786](http://drupal.org/node/2988786):
                  Changed the composer.json for [Varbase Search] module.
* Issue [#2988788](http://drupal.org/node/2988788):
                  Changed the composer.json for [Varbase SEO] module.
* Issue [#2988793](http://drupal.org/node/2988793):
                  Changed the composer.json for [Varbase Carousels] module.
* Issue [#2988798](http://drupal.org/node/2988798):
                  Changed the composer.json for [Varbase Total Control
                  Dashboard] module.
* Issue [#2988801](http://drupal.org/node/2988801):
                  Changed the composer.json for [Varbase Social Single
                  Sign-On] module
* Issue [#2988803](http://drupal.org/node/2988803):
                  Changed the composer.json for [Varbase Blog (Corporate
                  Blog)] module.
* Issue [#2988809](http://drupal.org/node/2988809):
                  Changed the composer.json for [Varbase Styleguide] module.
* Issue [#2988812](http://drupal.org/node/2988812):
                  Changed the composer.json for [Vartheme] theme.
* Issue [#2988816](http://drupal.org/node/2988816):
                  Changed the composer.json for [Vartheme Material Design]
                  theme.
* Issue [#2988820](http://drupal.org/node/2988820):
                  Changed the composer.json for [Vartheme Admin] theme.
* Issue [#2988823](http://drupal.org/node/2988823):
                  Changed the composer.json for [Vartheme Material Admin] theme.

### Updates since Varbase 8.5.0-alpha3:
* Issue [#2985872](http://drupal.org/node/2985872):
                  Updated [Block Class] module from 8.1.0-alpha1 to 8.1.0
* Issue [#2985874](http://drupal.org/node/2985874):
                  Updated [Google Analytics] module from 8.2.2 to 8.2.3
* Issue [#2987343](http://drupal.org/node/2987343):
                  Updated [Bootstrap] theme from 8.3.11 to 8.3.12
* Issue [#2987344](http://drupal.org/node/2987344):
                  Updated [Search API] module from 8.1.8 to 8.1.9
* Issue [#2988769](http://drupal.org/node/2988769):
                  Updated [Views Bulk Edit] module from 8.2.1 to 8.2.2

### Fixes since Varbase 8.5.0-alpha3:
* Issue [#2988830](http://drupal.org/node/2988830):
                  Fixed a [Display Suite] fatal errors when we have missing
                  layouts, on an update.
* Issue [#2986565](http://drupal.org/node/2986565)
                  by mahmoud-zayed: Fixed issue with [Entity clone] which
                 Apply Clone operation shows regardless of permission patch.
* Issue [#2986811](http://drupal.org/node/2986811)
                  by abu-zakham: Fixed [Ds] issue on a value Conflict with
                  [Layout Builder] in Drupal core.
* Issue [#2985870](http://drupal.org/node/2985870)
                  by john.money: Fixed Missing requirement for
                  better_exposed_filters
* Issue [#2985869](http://drupal.org/node/2985869)
                  by john.money: Fixed Missing requirement for
                  video_embed_wysiwyg

# 8.5.0-alpha3

### Highlighted important changes since Varbase 8.5.0-alpha2:

Issue #2984355: Updated [Drupal core] from 8.5.4 to 8.5.5

# 8.5.0-alpha2

### Highlighted important changes since Varbase 8.5.0-alpha1:
* Issue [#2983378](http://drupal.org/node/2983378):
              Added [data entity embed display settings] TO LINK entity image
              with a target link when we embed the image in the CKEditor.
* Issue [#2983236](http://drupal.org/node/2983236):
              Reverted [Real-time SEO] module back to old JS version (1.x)
              instead of version (2.x).
* Issue [#2980408](http://drupal.org/node/2980408):
              Fixed [Media entity] issue when we update media image, it still
              retrieves the old image instead of the updated one.

### Highlighted important changes since Varbase 8.4.x:
* Issue [#2959483](http://drupal.org/node/2959483):
               Changed [Varbase Profile] modules and config to work with
               [Media] Drupal core module.
* Issue [#2974100](http://drupal.org/node/2974100):
              Added the asset composer repository [asset-packagist.org],
              and switched all used libraries to use asset packaging.
* Issue [#2956295](http://drupal.org/node/2956295):
              Departed modules and themes from Varbase 8.x-5.x Profile as
              stand-alone projects.
* Issue [#2967640](http://drupal.org/node/2967640):
              Added storage [Field Video] and [Field Media] to [Varbase Core]
              to let developers create fields for video media types of (local),
              (embed) and use the [Video Browser] from [Varbase Media].
* Issue [#2978726](http://drupal.org/node/2978726):
              [Varbase Blog] Changed [Main Image] field to [Main Media] to use
              [Field Media] from [Varbase Core] for images and video posts,
              and use the [Media Browser] from [Varbase Media] as the default
              Media browser for the [Blog Post] content type.
* Issue [#2978723](http://drupal.org/node/2978723):
              [Varbase Media] Added [Media Browser] as a general image and
              video browsers for the [Field media] in Varbase core.
* Issue [#2978725](http://drupal.org/node/2978725):
              [Varbase Media Hero Slider] Switched to use [Media Browser] from
              [Varbase Media] as the default Media browser for hero slider
              content type. and removed not needed views and the custom hero
              slider media browser.
* Issue [#2979168](http://drupal.org/node/2979168):
              Optimized configs of responsive images for media [Size 8] and
              [Edge to Edge] on (auto, standard, traditional, and square),
              and Have no revision information or revision log message for
              media types, and added Varbase Auto Fill Media data Behaviors.

### Added since Varbase 8.5.0-alpha1:
* Issue [#2983378](http://drupal.org/node/2983378):
              Added [data entity embed display settings] TO LINK entity image
              with target link when we use.
* Issue [#2983384](http://drupal.org/node/2983384):
              Added the 25114040-47.patch for the [Entity Embed] module to
              let editors be able to Embed Image media and link them to a
              target URL in the CKEditor.

### Changed since Varbase 8.5.0-alpha1:
* Issue [#2983362](http://drupal.org/node/2983362):
              Changed [Rich editor] text format to allow for Align images
              Uses a data-align attribute on <img> tags to align images.
* Issue [#2983236](http://drupal.org/node/2983236):
              Reverted [Real-time SEO] module back to old JS version (1.x)
              instead of version (2.x)
* Issue [#2983221](http://drupal.org/node/2983221):
              Varbase 8.5.0-alpha2: Updated [CHANGELOG.md, UPDATE.md] files
              and filtered the code for Drupal 8 Coding Standard.

### Updates since Varbase 8.5.0-alpha1:
* Issue [#2981388](http://drupal.org/node/2981388):
              Updated [Paragraphs asymmetric translation widgets]
              from 8.1.x-dev e676e68 to 8.1.0-alpha2
* Issue [#2983282](http://drupal.org/node/2983282):
              Updated [Views Bulk Operations (VBO)] module
              from 8.2.3 to 8.2.4
* Issue [#2982792](http://drupal.org/node/2982792):
              Updated [Webform] module from 8.5.0-rc15 to 8.5.0-rc16
* Issue [#2982784](http://drupal.org/node/2982784):
              Updated [Diff] module from 8.1.0-rc1 to 8.1.0-rc2

### Fixes since Varbase 8.5.0-alpha1:
* Issue [#2981604](http://drupal.org/node/2981604):
              Fixed [Background Image] to use field media image in the
              media type [Image] under the [Styling settings] part for
              all Varbase Bootstrap paragraphs types.
* Issue [#2980408](http://drupal.org/node/2980408):
              Fixed [Media entity] issue when we update media image, it still
              retrieves the old image instead of the updated one.
* Issue [#2983387](http://drupal.org/node/2983387):
              Fixed form view for the [Landing page] content type to use the
              description field as a feed for Real-time SEO.
* Issue [#2982794](http://drupal.org/node/2982794):
              Fixed [Drupal core] image calling Drupal link functions without
              checking if the plugin is loaded

# 8.5.0-alpha1

### Highlighted important changes since Varbase 8.4.x:

* Issue [#2959483](http://drupal.org/node/2959483): 
              Changed [Varbase Profile] modules and config to work with [Media]
              Drupal core module.
* Issue [#2974100](http://drupal.org/node/2974100):
              Added the asset composer repository [asset-packagist.org], and
              switched all used libraries to use asset packaging.
* Issue [#2956295](http://drupal.org/node/2956295):
              Departed modules and themes from Varbase 8.x-5.x Profile as
              stand-alone projects.
* Issue [#2967640](http://drupal.org/node/2967640):
              Added storage [Field Video] and [Field Media] to [Varbase Core] 
              to let developers create fields for video media types of (local),
              (embed) and use the [Video Browser] from [Varbase Media].
* Issue [#2978726](http://drupal.org/node/2978726):
              [Varbase Blog] Changed [Main Image] field to [Main Media] to use
              [Field Media] from [Varbase Core] for images and video posts,
              and use the [Media Browser] from [Varbase Media] as the default
              Media browser for the [Blog Post] content type.
* Issue [#2978723](http://drupal.org/node/2978723):
              [Varbase Media] Added [Media Browser] as a general image and
              video browsers for the [Field media] in Varbase core.
* Issue [#2978725](http://drupal.org/node/2978725):
              [Varbase Media Hero Slider] Switched to use [Media Browser]
              from [Varbase Media] as the default Media browser for hero slider
              content type. and removed not needed views and the custom hero
              slider media browser.
* Issue [#2979168](http://drupal.org/node/2979168):
              Optimized configs of responsive images for media [Size 8] and
              [Edge to Edge] on (auto, standard, traditional, and square),
              and Have no revision information or revision log message for
              media types, and added Varbase Auto Fill Media data Behaviors.

### Added since Varbase 8.4.x:
* Issue [#2974100](http://drupal.org/node/2974100):
              Added the asset composer repository [asset-packagist.org], and 
              switched all used libraries to use asset packaging.
* Issue [#2961471](http://drupal.org/node/2961471):
              Added Video (embed) and Video (local) media video types.
* Issue [#2967640](http://drupal.org/node/2967640):
              Added storage [Field Video] to [Varbase Core] to let developers
              create fields for video media types of (local), (embed) and use 
              the [Video Browser] from [Varbase Media].
* Issue [#2978527](http://drupal.org/node/2978527):
              Added support for initial [VMI] config values for [Field Video]
              and [Field Media].
* Issue [#2967640](http://drupal.org/node/2967640):
              Added storage [Field Video] to [Varbase Core] to let developers
              create fields for video media types of (local), (embed) and use
              the [Video Browser] from [Varbase Media].
* Issue [#2977178](http://drupal.org/node/2977178):
              Added [Paragraphs Features] module 8.1.2
* Issue [#2977218](http://drupal.org/node/2977218):
              Added [Paragraphs asymmetric translation widgets] module
              1.x-dev e676e68
* Issue [#2974101](http://drupal.org/node/2974101):
              Added [Better Normalizers] module 8.1.0-beta3 to help with
              allow export of all site content
* Issue [#2968726](http://drupal.org/node/2968726):
              Added the 2881849-8.patch for [Blazy] module to Integrate it
              with core Media 8.4
* Issue [#2977206](http://drupal.org/node/2977206):
              [Varbase Bootstrap Paragraphs] Added allow_reference_changes:
              true in a new paragraphs.settings.yml general config.

### Changed since Varbase 8.4.x:
* Issue [#2956295](http://drupal.org/node/2956295):
              Departed modules and themes from Varbase 8.x-5.x Profile as
              stand-alone projects.
* Issue [#2954551](http://drupal.org/node/2954551):
              Started a new branch for version: 8.x-5.x-dev and extra
              branch-alias with dev-8.x-5.x to 8.5.x-dev
* Issue [#2959483](http://drupal.org/node/2959483):
              Changed [Varbase Profile] modules and config to work with
              [Media] Drupal core module.
* Issue [#2978780](http://drupal.org/node/2978780):
              Changed [Varbase] bundle config not to have blocks in the
              optional config folder, as they will be in the config/install
* Issue [#2962007](http://drupal.org/node/2962007):
              Changed machine names for Image Styles and Responsive
              Image Styles from [ (d1 ... d9) to (d01 .. 09) ] , and
              Media sizes from [ (s1 ... s9) to (s01 ... s09) ] for better
              order in listing and readability.
* Issue [#2974085](http://drupal.org/node/2974085):
              Removed Legacy Contrib modules, which they are not used any more,
              but kept for projects which still using them.
* Issue [#2971906](http://drupal.org/node/2971906):
              [Varbase Editor] Removed [Drupal Image] and [Video embed]
              CKEditor command buttons from Rich editor and Simple editor.
* Issue [#2977199](http://drupal.org/node/2977199):
              [Varbase Bootstrap Paragraphs] Changed Implements
              hook_form_paragraphs_subform_alter() to
              hook_field_widget_WIDGET_TYPE_form_alter() after
              Add paragraph bundle to widget forms.
* Issue [#2978073](http://drupal.org/node/2978073):
              Changed [VMI] Hero content group z-index to 3 for the hero
              view mode xlarge.
* Issue [#2978107](http://drupal.org/node/2978107):
              Changed [VMI] Tout content group z-index to 3 for the tout
              view mode.
* Issue [#2978723](http://drupal.org/node/2978723):
              [Varbase Media] Added [Media Browser] as a general image and
              video browsers for the [Field media] in Varbase core.
* Issue [#2978725](http://drupal.org/node/2978725):
              [Varbase Media Hero Slider] Switched to use [Media Browser]
              from [Varbase Media] as the default Media browser for hero slider
              content type. and removed not needed views and the custom hero
              slider media browser.
* Issue [#2978726](http://drupal.org/node/2978726):
              [Varbase Blog] Changed [Main Image] field to [Main Media] to use
              [Field Media] from [Varbase Core] for images and video posts,
              and use the [Media Browser] from [Varbase Media] as the default
              Media browser for the [Blog Post] content type.
* Issue [#2979168](http://drupal.org/node/2979168):
              Optimized configs of responsive images for media [Size 8] and
              [Edge to Edge] on (auto, standard, traditional, and square),
              and Have no revision information or revision log message for
              media types, and added Varbase Auto Fill Media data Behaviors.

### Updates since Varbase 8.4.x:
* Issue [#2977949](http://drupal.org/node/2977949):
              Updated [Drupal core] from 8.5.3 to 8.5.4
* Issue [#2979339]](http://drupal.org/node/2979339):
              Updated [Entity Browser Enhance(d|r)] module
              from 8.1.0-rc1 to 8.1.0-rc2
* Issue [#2977538](http://drupal.org/node/2977538):
              Updated [Entity Browser] module from 8.2.0-alpha2 to 8.2.0-alpha3
* Issue [#2977148](http://drupal.org/node/2977148):
              Updated [Paragraphs] module from 8.1.2 to 8.1.3
* Issue [#2975562](http://drupal.org/node/2975562):
              Updated [Entity Reference Revisions] module from 8.1.4 to 8.1.5
* Issue [#2974694](http://drupal.org/node/2974694):
              Updated [Inline Entity Form] module from 8.1.0-beta1 to 8.1.0-rc1
* Issue [#2968001](http://drupal.org/node/2968001):
              Updated [Better Exposed Filters] module
              from 8.3.0-alpha3 to 8.3.0-alpha4
* Issue [#2961338](http://drupal.org/node/2961338):
              Updated [Video Embed Field] module from 8.2.0-alpha2 to 8.2.0
* Issue [#2977559](http://drupal.org/node/2977559):
              Updated [Webform] module from 8.5.0-rc12 to 8.5.0-rc15
* Issue [#2977546](http://drupal.org/node/2977546):
              Updated [Real-time SEO for Drupal] module
              from 8.2.0-alpha2 to 8.2.0-alpha3
* Issue [#2977071](http://drupal.org/node/2977071):
              Updated [Ultimate Cron] module from 8.2.0-alpha3 to 8.2.0-alpha4
* Issue [#2977070](http://drupal.org/node/2977070):
              Updated [SMTP Authentication Support] module
              from 8.1.0-beta3 to 8.1.0-beta4
* Issue [#2977068](http://drupal.org/node/2977068):
              Updated [Maxlength] module from 8.1.0-beta1 to 8.1.0-beta2
* Issue [#2977067](http://drupal.org/node/2977067):
              Updated [Admin Toolbar] module from 8.1.23 to 8.1.24
* Issue [#2975576](http://drupal.org/node/2975576):
              Updated [token] module from 8.1.1 to 8.1.3
* Issue [#2975569](http://drupal.org/node/2975569):
              Updated [Schema.org Metatag] module from 8.1.2 to 8.1.3
* Issue [#2975570](http://drupal.org/node/2975570):
              Updated [Social Auth Twitter] module
              from 8.2.0-alpha1 to 8.2.0-alpha2
* Issue [#2974082](http://drupal.org/node/2974082):
              Updated [Color Field] module from 8.2.0-rc2 to 8.2.0-rc3
* Issue [#2974080](http://drupal.org/node/2974080):
              Updated [Link Attributes widget] module from 8.1.2 to 8.1.3
* Issue [#2971268](http://drupal.org/node/2971268):
              Updated [Redirect] module from 8.1.1 to 8.1.2
* Issue [#2968825](http://drupal.org/node/2968825):
              Updated [Pathologic] module from 8.1.x-dev 4f9f3fd to 8.1.0-alpha1
* Issue [#2968779](http://drupal.org/node/2968779):
              Updated [Menu block] module from 8.1.4 to 8.1.5
* Issue [#2968105](http://drupal.org/node/2968105):
              Updated [Views Bulk Operations (VBO)] module from 8.2.2 to 8.2.3
* Issue [#2967910](http://drupal.org/node/2967910):
              Updated [Persistent Login] module from 8.1.0-alpha4 to 8.1.0
* Issue [#2961365](http://drupal.org/node/2961365):
              Updated [Crop API] module from 8.1.5 to 8.2.0-rc1
* Issue [#2961223](http://drupal.org/node/2961223):
              Updated [Custom Permissions] module from 8.1.1 to 8.2.0-beta1
* Issue [#2978505](http://drupal.org/node/2978505):
              Updated [Entity API] module from 8.1.0-beta3 to 8.1.0-beta4
* Issue [#2978512](http://drupal.org/node/2978512):
              Updated [Entity Clone] module
              from 8.1.x-dev 9265e35 to 8.1.x-dev 6d0ce05
* Issue [#2978515](http://drupal.org/node/2978515):
              Updated [Fast 404] module from 8.1.0-alpha2 to 8.1.0-alpha3

### Fixes since Varbase 8.4.x:
* Issue [#2978845](http://drupal.org/node/2978845):
              Fixed the location of [Varbase Video Player icon] to work
              with all video media sizes and any entity referenced fields.
* Issue [#2971923](http://drupal.org/node/2971923):
              Fixed issue with the CKEditor command button [Media library]
              icon Editor Entity Browser.
* Issue [#2976012](http://drupal.org/node/2976012):
              Fixed issue with Argument 1 passed to
              PageManagerHelper::getVariantTitle() must implement interface
              Drupal\page_manager\PageVariantInterface or be null, string given.
* Issue [#2974402](http://drupal.org/node/2974402):
              Fixed Warning for [Node Edit Protection] module: array_search()
              expects parameter 2 to be array.
* Issue [#2973026 by dame](http://drupal.org/node/2973026):
              Replace exec in remove Git Repositories with Symfony Finder & 
              File System to work with Windows and Linux
* Issue [#2972620](http://drupal.org/node/2972620):
              Fixed issue with PHP 7.2, 5.6 versions.
* Issue [#2959778](http://drupal.org/node/2959778)
              by travisc, pixelpreview: [Varbase Bootstrap Paragraphs] Fixed
              WSOD issue when we add an image to a paragraph field.
* Issue [#2977613](http://drupal.org/node/2977613) by p-neyens:
              Fixed translations for [Varbase Total Control Dashboard]
              text values.
* Issue [#2978551](http://drupal.org/node/2978551):
              Fixed issue for the [rabbit hole] with [entity clone] modules to
              ensure getOperation method exists on form.
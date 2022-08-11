# 9.0.8

### Highlighted important changes since Varbase 9.0.7:

This is a patch (bugfix) release of Varbase 9 and is ready
for use on production sites. Learn more about Varbase 9.

* Issue [#3295950](https://www.drupal.org/i/3295950):
        Changed the default `drush/drush` version
        from `~10.0 || ~11.0` to `~11.0` in the `composer.json`
        file for Varbase Profile and the Varbase Project Template
* Issue [#3301451](https://www.drupal.org/i/3301451)
        by [vacho](https://www.drupal.org/u/vacho)
       : Have `drupal-scaffold` locations `web-root` for Varbase as `docroot`
        to fix composer `web-root` folder in projects
* Issue [#3302442](https://www.drupal.org/i/3302442):
        Dropped support for Composer `~1.0` in Varbase profile
        and only support Composer `~2.0` and later versions

### Added since Varbase 9.0.7:
* Issue [#3298632](https://www.drupal.org/i/3298632)
        by [Alaa Jwiehan](https://www.drupal.org/u/alaa-jwiehan)
       : Added Functional Automated Testing: Step Definition to validate if a checkbox input is checked or unchecked
* Issue [#3300946](https://www.drupal.org/i/3300946):
        Added max width `100%` to images in the Welcome
        to Varbase message homepage default content

### Changed since Varbase 9.0.7:
* Issue [#3301364](https://www.drupal.org/i/3301364):
        Changed `node_type` to `entity_bundle:node` for default
         pathauto pattern configs for the Blog Post content type
* Issue [#3301361](https://www.drupal.org/i/3301361):
        Changed `node_type` to `entity_bundle:node` for default
        pathauto pattern configs for the Basic Page content type
* Issue [#3301363](https://www.drupal.org/i/3301363):
        Changed `node_type` to `entity_bundle:node` for default
        pathauto pattern configs for the Landing Page (Layout Builder) content type

### Updates since Varbase 9.0.7:
* Issue [#3298831](https://www.drupal.org/i/3298831):
        Updated the Inline Entity Form module from `1.0-rc11` to `1.0-rc12`
* Issue [#3298826](https://www.drupal.org/i/3298826):
        Updated the Prevent Homepage Deletion module from `~1.0` to `~2.0`
* Issue [#3300859](https://www.drupal.org/i/3300859):
        Updated the Views Bootstrap module from `~4.0` to `~5.4.0`
        on the `9.0.x` branch
* Issue [#3298894](https://www.drupal.org/i/3298894):
        Updated the Paragraphs module from `1.13` to `1.14`
        and keep the not committed patches
* Issue [#3298883](https://www.drupal.org/i/3298883):
        Updated the Block Form Alter module from `~1.0` to `~2.0`
* Issue [#3298556](https://www.drupal.org/i/3298556):
        Updated Paragraphs Asymmetric Translation Widgets module
        from `1.0-beta4` to `~1.0` and removed committed patches
* Issue [#3303042](https://www.drupal.org/i/3303042):
        Updated the CTools module from `3.11-rc1` to `3.11` stable ( `~3.0` )
* Issue [#3290573](https://www.drupal.org/i/3290573)
        by [Project Update Bot](https://www.drupal.org/u/project-update-bot)
       : Automated Drupal 10 compatibility fixes for VMI on the 8.x-2.x-dev branch
* Issue [#3290336](https://www.drupal.org/i/3290336)
        by [Project Update Bot](https://www.drupal.org/u/project-update-bot)
       : Automated Drupal 10 compatibility fixes for Vartheme BS4
* Issue [#3290339](https://www.drupal.org/i/3290339)
        by [Project Update Bot](https://www.drupal.org/u/project-update-bot)
       : Automated Drupal 10 compatibility fixes for Vartheme Claro
        admin theme on the `3.0.x` branch

### Fixes since Varbase 9.0.7:
* TEMP quick fix for Issue [#3302839](https://www.drupal.org/i/3302839):
        Changed the CTools module from `~3.0 || ~4.0` to `3.11-rc1`
        in `composer.json` as a TEMP quick fix until `3.11` stable releases
* Issue [#3290804](https://www.drupal.org/i/3290804)
        by [Odai Atieh](https://www.drupal.org/u/odai-atieh)
       : Fixed pathauto's options of punctuation character for
        left and right double quotation
* Issue [#3253519](https://www.drupal.org/i/3253519)
        by [Qusai Taha](https://www.drupal.org/u/qusai-taha)
       : Fixed redirects from aliased paths aren't triggered
* Issue [#3243604](https://www.drupal.org/i/3243604)
        by [Odai Atieh](https://www.drupal.org/u/odai-atieh)
       : Fixed Path field is required validation issue on adding url redirect


-------------------------------------------------------------------------------

# 9.0.7

### Highlighted important changes since Varbase 9.0.5:
This is a patch (bugfix) release of Varbase 9 and is ready
 for use on production sites. Learn more about Varbase 9.

### Added since Varbase 9.0.6:
* Issue [#3277590](https://www.drupal.org/i/3277590)
        by [Abdullah Yassin](https://www.drupal.org/u/abdullah-yassin)
       : Have a Varbase installation requirement ( notification, not a blocker)
* Issue [#3285082](https://www.drupal.org/i/3285082)
        by [Alaa Jwiehan](https://www.drupal.org/u/alaa-jwiehan)
       : Added Automated Testing Coverage For Varbase Tour Module
* Issue [#3292847](https://www.drupal.org/i/3292847)
        by [Alaa Jwiehan](https://www.drupal.org/u/alaa-jwiehan)
       : Added `--with-all-dependencies` to automation testing readme file
        on the drupal/drupal-extension package
* Issue [#3293400](https://www.drupal.org/i/3293400)
        by [Alaa Jwiehan](https://www.drupal.org/u/alaa-jwiehan)
       : Added drevops/behat-screenshot Behat content to the installation
        guide to automated testing readme file and Varbase default testing process
* Issue [#3285361](https://www.drupal.org/i/3285361)
        by [Mutasim Al-Shoura](https://www.drupal.org/u/mutasim-al-shoura)
       : Added Bootstrap buttons (Light,Dark)

### Changed since Varbase 9.0.6:
* Issue [#3284419](https://www.drupal.org/i/3284419)
        by [Abdullah Yassin](https://www.drupal.org/u/abdullah-yassin)
       : Changed default Varbase Carousel option set from limited to infinity
* Issue [#3284568](https://www.drupal.org/i/3284568)
        by [Abdullah Yassin](https://www.drupal.org/u/abdullah-yassin)
       , [Rajab Natshah](https://www.drupal.org/u/rajab-natshah)
       : Hide media (image/video) field link title input
* Issue [#3291994](https://www.drupal.org/i/3291994)
        by [Odai Jaber](https://www.drupal.org/u/odai-jaber)
        , [Omar Alahmed](https://www.drupal.org/u/omar-alahmed)
         : Changed to conditionally attach only needed
        local or remote video libraries
* Issue [#3279038](https://www.drupal.org/i/3279038)
       : Support Drupal 10 and update all use of deprecation in the Vartheme BS4 theme
* Issue [#3278730](https://www.drupal.org/i/3278730)
        : Switched to use Selenium Server Standalone 3.141.59 to follow with
        Latest Chrome Browser and Chrome Driver options

### Updates since Varbase 9.0.6:
* Issue [#3284166](https://www.drupal.org/i/3284166)
       : Updated the Update Helper module from `3.0.2` to `3.0.3` and updated
        the enhancements patch
* Issue [#3291333](https://www.drupal.org/i/3291333)
       : Updated Content Planner module from `1.0-beta16` to `1.0-beta17 ( ~1.0 )`
        and removed committed patches
* Issue [#3293847](https://www.drupal.org/i/3293847)
       : Updated Chaos Tool Suite (ctools) module from `~3.0` to `~3.0 || ~4.0`
        in Varbase Core
* Issue [#3293844](https://www.drupal.org/i/3293844)
       : Updated Chaos Tool Suite (ctools) module from `~3.0` to `~3.0 || ~4.0`
        in Varbase Carousels
* Issue [#3288722](https://www.drupal.org/i/3288722)
        by [NaheemSays](https://www.drupal.org/u/naheemsays)
       : Updated the Image Optimize module from `~3.0` to `~4.0` (first stable release)
* Issue [#3283336](https://www.drupal.org/i/3283336)
       : Updated Blazy module from `2.12` to `2.13 ( ~2.0 )`
        and removed committed patches
* Issue [#3277642](https://www.drupal.org/i/3277642)
       : Updated Flood Control module from `2.2.2` to `~2.0`
        and remove committed patches
* Issue [#3277648](https://www.drupal.org/i/3277648)
       : Updated Menu Position module from `1.0-beta1` to `~1.0`
        and removed committed patches

### Fixes since Varbase 9.0.6:
* Issue [#3280063](https://www.drupal.org/i/3280063)
        by [Abdullah Yassin](https://www.drupal.org/u/abdullah-yassin)
       , [Alaa Jwiehan](https://www.drupal.org/u/alaa-jwiehan)
       : Fixed footer position bottom when page have a little content in Vartheme BS4
* Issue [#3223852](https://www.drupal.org/i/3223852)
        by [jedgar1mx](https://www.drupal.org/u/jedgar1mx)
       , [yasmeensalah](https://www.drupal.org/u/yasmeensalah)
       , [Qusai Taha](https://www.drupal.org/u/qusai-taha)
       : Fixed preview in nodes with workflows
* Issue [#3290890](https://www.drupal.org/i/3290890):
        Fixed deprecation issue for the Content Planner module with mysql driver on Drupal 9.4.0
* Issue [#3285612](https://www.drupal.org/i/3285612)
        by [Mohammad Fayoumi](https://www.drupal.org/u/mohammad-fayoumi)
       : Fixed deprecated PHP 8.1 function: strpos(): Passing null to parameter #1 ($haystack) of type string
* Issue [#3277279](https://www.drupal.org/i/3277279)
        by [Abdullah Yassin](https://www.drupal.org/u/abdullah-yassin)
       : Fixed RTL style for media library menu popup
* Issue [#3283172](https://www.drupal.org/i/3283172)
        by [mohammad faqeh](https://www.drupal.org/u/mohammad-faqeh)
       : Fixed Blazy issue after updating to 2.12 Error: Call to a member function get ()
* Issue [#3277617](https://www.drupal.org/i/3277617)
        by [paskainos](https://www.drupal.org/u/paskainos):
        Fixed Style Guide issue on [PHP 8.1] Deprecated function: strpos(): Passing null to parameter


-------------------------------------------------------------------------------

# 9.0.6

### Highlighted important changes since Varbase 9.0.5:
This is a patch (bugfix) release of Varbase 9 and is ready
 for use on production sites. Learn more about Varbase 9.

* Issue [#3217859](https://www.drupal.org/i/3217859):
        Support PHP8.1 and MySQL 8 for Varbase ~9.0 and all used components
        with automated testing
* Issue [#3256029](https://www.drupal.org/i/3256029):
        Revised Password Policy and Password Confirmation Suggestions message
* Issue [#3272417](https://www.drupal.org/i/3272417):
        Switched to use the Module Installer Factory with Varbase distribution
        and all Varbase components
* Issue [#3271850](https://www.drupal.org/i/3271850):
        Switched from deprecated Node Sass to Dart Sass compiler using Gulp
        and changed minimum Nodejs version to 16.0 and later in
        the Varbase distribution
* Issue [#3264445](https://www.drupal.org/i/3264445):
        Added and enabled CKEditor Paste Filter module
* Issue [#3270457](https://www.drupal.org/i/3270457):
        Have a default template for merge requests and issues for the
        Varbase profile project and all Varbase components in Gitlab

### Added since Varbase 9.0.5:
* Issue [#3264779](https://www.drupal.org/i/3264779):
        Added an update notice about adding the CKEditor Paste Filter
        module to the updates checklist for Varbase 9.0.6
* Issue [#3269806](https://www.drupal.org/i/3269806):
        Included Disallow Oembed media link in the robots.txt file
        for better Varbase SEO
* Issue [#3263378](https://www.drupal.org/i/3263378):
        Added smart step definitions related to adding sections, padding,
        margin, border radius and adding blocks for Varbase Layout Builder
* Issue [#3269421](https://www.drupal.org/i/3269421):
        Added exception messages for VLB automated testing step definitions
* Issue [#3264297](https://www.drupal.org/i/3264297)
        by [hanii.gerges]()
       : Added title attribute to oEmbed iframe for accessibility
* Issue [#3272221](https://www.drupal.org/i/3272221)
        by [Abdullah Yassin]()
       : Added Section Library view with permission to
        |view section library templates| to prevent anonymous
        users from accessing the sections library page
* Issue [#3274455](https://www.drupal.org/i/3274455)
        by [Odai Atieh]()
       : Added support to automatically create a clone for the existing
        inline blocks in the layout in Layout Library
* Issue [#3276911](https://www.drupal.org/i/3276911)
        by [Alaa Jwiehan]()
       : Added automated functional testing coverage for
        Password Suggestions settings

### Changed since Varbase 9.0.5:

* Issue [#3268850](https://www.drupal.org/i/3268850):
        Replaced TravisCI link with CircleCI link
* Issue [#3269809](https://www.drupal.org/i/3269809):
        Enhanced wording for Varbase install - configure site page
* Issue [#3266504](https://www.drupal.org/i/3266504):
        Updated Automated Functional Testing README.md File
* Issue [#3266209](https://www.drupal.org/i/3266209):
        Removed leftover configs after installation of additional modules
        for Social Auth and fullback to the Social Auth and
        its extra modules. To manage the installation and change of configs
* Issue [#3264253](https://www.drupal.org/i/3264253):
        Disabled Blazy per individual Video iframe for editor text formats
* Issue [#3271959](https://www.drupal.org/i/3271959):
        Improved accessibility for the Flood Unblock page
* Issue [#3260019](https://www.drupal.org/i/3260019):
        Enabled X-XSS-Protection header by default for Depth Web Application
        Defense using CSP
* Issue [#3273453](https://www.drupal.org/i/3273453):
        Switched to use YAML Literal Style format to fix issues with
        implicit keys in the updates_checklist.yml file
* Issue [#3271885](https://www.drupal.org/i/3271885)
        by [mhawwari]()
       : Changed to optionally install the Views Infinite Scroll module
        instead of requiring it in dependencies
* Issue [#3295313](https://www.drupal.org/i/3295313):
        Removed enabling the Seven admin theme on new installations.
        After Claro was sat as the default admin theme

### Updates since Varbase 9.0.5:
* Issue [#3271463](https://www.drupal.org/i/3271463):
        Updated Moderation Sidebar module from 1.4 to ~1.0 and removed committed patches
* Issue [#3268628](https://www.drupal.org/i/3268628):
        Updated the Update Helper module from 3.0.1 to 3.0.2
* Issue [#3267998](https://www.drupal.org/i/3267998):
        Updated Antibot module from ~1.0 to ~2.0
* Issue [#3267822](https://www.drupal.org/i/3267822):
        Updated Views Bulk Operations module from 4.0.1 to 4.1.0
* Issue [#3267992](https://www.drupal.org/i/3267992):
        Updated Inline Entity Form module from 1.0-rc9 to 1.0-rc10 and updated applied patches
* Issue [#3269838](https://www.drupal.org/i/3269838):
        Updated Tour UI module from 1.0.0-beta3 to ~1.0 and removed committed patches
* Issue [#3271527](https://www.drupal.org/i/3271527):
        Updated Paragraphs module from 1.12 to 1.13
* Issue [#3271292](https://www.drupal.org/i/3271292):
        Updated Views Bulk Operations (VBO) from 4.1.0 to ~4.1 and removed committed patches
* Issue [#3272381](https://www.drupal.org/i/3272381):
        Updated Reroute Email module from 2.1.0 to ~2.0 and removed committed patches
* Issue [#3273735](https://www.drupal.org/i/3273735):
        Updated Inline Entity Form module from 1.0-rc10 to 1.0-rc11 and kept needed patches
* Issue [#3274535](https://www.drupal.org/i/3274535):
        Updated Media Bulk Upload module from ~1.0 to ~3.0 new stable and supported branch
* Issue [#3265826](https://www.drupal.org/i/3265826):
        Updated Social Aauth Twitter module from 2.x-dev to ~2.0 and remove committed patches

### Fixes since Varbase 9.0.5:
* Issue [#3274689](https://www.drupal.org/i/3274689):
        Fixed image title background width in the media library modal dialog
* Issue [#3271439](https://www.drupal.org/i/3271439):
        Fixed Entity Browser bundle media type filter not to use and empty exposed operator
* Issue [#3265975](https://www.drupal.org/i/3265975):
        Fixed drush cim --partial --source=/app/config/sync on
        Platform.sh app server, which bring up a blocker message
        of |There were errors validating the config synchronization|
* Issue [#3266217](https://www.drupal.org/i/3266217):
        Fixed wrong Formbit process for Varbase Social Single Sign-On extra config. Not to use the simple.setting config
* Issue [#3264905](https://www.drupal.org/i/3264905):
        Fixed Fatal error if a source media was deleted
* Issue [#3265632](https://www.drupal.org/i/3265632):
        Fixed Errors for messing Enabled entity types and Safe tokens on the URL aliases settings page
* Issue [#3276206](https://www.drupal.org/i/3276206):
        Fixed default config for Allowed Formats in the Varbase Rich text and HTML code block types
* Issue [#3273950](https://www.drupal.org/i/3273950)
        by [Abdullah Yassin]()
       : Fixed layout builder custom blocks modal background color
* Issue [#3272735](https://www.drupal.org/i/3272735)
        by [yasmeensalah]()
       : Fixed not loading webp images when used with Image Widget
        Crop and responsive images
* Issue [#3275785](https://www.drupal.org/i/3275785)
        by [Mohammad Fayoumi]()
       : Fixed Accessibility issue on the order of the role attribute for the Paragraph tabs
* Issue [#3275781](https://www.drupal.org/i/3275781)
        by Mohammad Fayoumi:
        Fixed Accessibility issue on  aria-*  attributes for Varbase Bootstrap Paragraphs
* Issue [#3275689](https://www.drupal.org/i/3275689)
        by [Mohammad Fayoumi]()
       : Resolved accessibility issue related to required attributes
        for the heading roles in Vartheme BS4
* Issue [#3275684](https://www.drupal.org/i/3275684)
        by [Mohammad Fayoumi]()
       : Resolved Lighthouse SEO issue related to links are not crawlable
        a#main-content in Vartheme BS4
* Issue [#3273676](https://www.drupal.org/i/3273676)
        by [Abdullah Yassin]()
       : Fixed blocks search field to full width in the off-canvas
        in the Layout Builder page
* Issue [#3276912](https://www.drupal.org/i/3276912)
        by [Abdullah Yassin]()
       : Removed layout builder warning message - location icon
* Issue [#3266745](https://www.drupal.org/i/3266745)
        by [yousef_maraqa98]()
       : Fixed RTL style for Media Library widget inside Layout Builder
* Issue [#3274454](https://www.drupal.org/i/3274454)
        by Odai Atieh
       : Fixed Layout Library issue on Duplicate entry for
        key block_content_field__uuid__value
* Issue [#3276916](https://www.drupal.org/i/3276916)
        by [Qusai Taha]()
       : Fixed Email Registration issue of changing the user name
        when creating a new account. As it always takes the first part of the email
* Issue [#3277033](https://www.drupal.org/i/3277033)
        by [Abdullah Yassin]()
       : Fixed search icon overlapping long text in input auto complete fields
* Issue [#3271883](https://www.drupal.org/i/3271883)
        by mhawwari:
        Fixed route does not exist error in the Total Control Dashboard

-------------------------------------------------------------------------------
# 9.0.5

### Highlighted important changes since Varbase 9.0.4:
This is a patch (bugfix) release of Varbase 9 and is ready for use on production sites.

* Issue [#3260567](https://www.drupal.org/i/3260567):
        Updated the Update Helper module from `~2.0 to ~3.0`
* Issue [#3259112](https://www.drupal.org/i/3259112):
        Changed Drush from `~10.0` to `~10.0 || ~11.0` for easier
        support, update, and upgrade process in development and production servers
* Issue [#3261463](https://www.drupal.org/i/3261463):
        Switched from deprecated class VarbaseEntityDefinitionUpdateManager
        to EntityDefinitionUpdateManager

### Added since Varbase 9.0.4:
* Issue [#3259665](https://www.drupal.org/i/3259665)
        by [Alaa Jwiehan](https://www.drupal.org/u/alaa-jwiehan)
        : Added more step definitions for Varbase Layout Builder
        automated testing for section styling with padding , margin, border
        style, border width, border color, border radius, background image settings,
        background video settings
* Issue [#3252219](https://www.drupal.org/i/3252219)
        by [hanii.gerges](https://www.drupal.org/u/haniigerges)
       : Added Container wrapper ID field to the advanced section settings tab
* Issue [#3263079](https://www.drupal.org/i/3263079)
        by [mhawwari](https://www.drupal.org/u/mhawwari)
       : Provided an out of the box styling for horizontal tabs
        group inside Layout Builder Modal dialog

### Changed since Varbase 9.0.4:
* Issue [#3261917](https://www.drupal.org/i/3261917)
        by [Odai Atieh](https://www.drupal.org/u/odai-atieh)
       : Changed permission to prevent the "Site admin" user role
        from administering the Google Analytics Reports API settings
* Issue [#3260809](https://www.drupal.org/i/3260809)
        by [Alaa Jwiehan](https://www.drupal.org/u/alaa-jwiehan)
       : Changed clicking input elements, and background
        image settings step definitions for functional automated
        testing the Layout Builder

### Updates since Varbase 9.0.4:
* Issue [#3260002](https://www.drupal.org/i/3260002):
        Updated Views Bulk Operations (VBO) from `4.0.0` to `4.0.1`
        and kept the patch for items per page
* Issue [#3259098](https://www.drupal.org/i/3259098):
        Updated WebP module from `1.0-beta5` to `~1.0`

### Fixes since Varbase 9.0.4:
* Issue [#3252657](https://www.drupal.org/i/3252657):
        Fixed the match of default content creation date with install date
* Issue [#3252656](https://www.drupal.org/i/3252656):
        Fixed priority for homepage to be node/1
* Issue [#3259999](https://www.drupal.org/i/3259999)
        by [hanii.gerges](https://www.drupal.org/u/haniigerges)
       , [Alaa Jwiehan](https://www.drupal.org/u/alaa-jwiehan)
       : Fixed Flipped order of items on RTL pages for Layout Builder
        breakpoints editing tools
* Issue [#3259184](https://www.drupal.org/i/3259184)
        by [Rajab Natshah](https://www.drupal.org/u/rajab-natshah)
       , [jeanpaulbouvet](https://www.drupal.org/u/jeanpaulbouvet)
       : Fixed Error when updating with field definitions by
        changing the logic in `varbase_security_update_9001` not to bring
        SQL errors on updates to Varbase `9.0.4`
* Issue [#3258740](https://www.drupal.org/i/3258740):
        Fixed some typos in automates testing scenarios
        and testing `README.md` file
* Issue [#3261520](https://www.drupal.org/i/3261520)
        by [Odai Atieh](https://www.drupal.org/u/odai-atieh)
       : Fixed missing CKEditor Media Embed Plugins
        after `8.x-1.11` and CKEditor `4.17.1` was released
* Issue [#3263487](https://www.drupal.org/i/3263487):
        Fixed Blazy `8.x-2.6` conflicting issues with the `blazy/loading`
        library and the use of Varbase Media blazy blurry option
* Issue [#3263106](https://www.drupal.org/i/3263106)
        by [mhawwari](https://www.drupal.org/u/mhawwari)
       : Fixed last inline block item styling in the
        Add a new custom block off canvas
* Issue [#3251870](https://www.drupal.org/i/3251870)
        by [Rahaf Albawab](https://www.drupal.org/u/rahaf-albawab)
       : Fixed undefined field_link when deleting the
        field link from Varbase media block
* Issue [#3261685](https://www.drupal.org/i/3261685)
        by [Qusai Taha](https://www.drupal.org/u/qusai-taha)
       : Fixed issue when adding background color the class bg-color
        adding, but when deleting the color the class will not be removed
* Issue [#3262009](https://www.drupal.org/i/3262009)
        by [mhawwari](https://www.drupal.org/u/mhawwari)
       : Fixed print layout styling issues

-------------------------------------------------------------------------------

# 9.0.4

### Highlighted important changes since Varbase 9.0.3:
This is a patch (bugfix) release of Varbase 9 and is ready for use on production sites.

### Added since Varbase 9.0.3:
* Issue [#3255863](https://www.drupal.org/i/3255863):
        Added composer allow-plugins to composer.json for Varbase and
        Varbase Project template to work with Composer 2.2.1 and later versions
* Issue [#3252064](https://www.drupal.org/i/3252064):
        Added Antibot module with config to Varbase Security
* Issue [#3255491](https://www.drupal.org/i/3255491):
        Added Email Registration module to Varbase Core to allow
        users to login using Email or username
* Issue [#3253354](https://www.drupal.org/i/3253354)
        by [Alaa Jwiehan](https://www.drupal.org/u/alaa-jwiehan)
       , [Rajab Natshah](https://www.drupal.org/u/rajabnatshah)
       : Added new step definitions to Varbase Context to help
        automate the testing for Varbase Layout Builder
* Issue [#3256661](https://www.drupal.org/i/3256661)
        by [Alaa Jwiehan](https://www.drupal.org/u/alaa-jwiehan)
        , [Rajab Natshah](https://www.drupal.org/u/rajabnatshah)
        : Added Automated Testing Gherkin features for the Varbase
         Landing (Layout Builder) content type

### Changed since Varbase 9.0.3:
* Issue [#3255633](https://www.drupal.org/i/3255633):
        Switched default Automated Functional Testing users creation to
        use drush user:create and drush user:role:add and use the
        default manual testing user names and emails
* Issue [#3255405](https://www.drupal.org/i/3255405):
        Changed Varbase installation step for Varbase Development tools
        to mach with the new Reroute Settings config schema
* Issue [#3249270](https://www.drupal.org/i/3249270):
        Switched Varbase Media Hero Slider to use Entity Definition Update Manager
        class from vardot/entity-definition-update-manager class library
* Issue [#3252060](https://www.drupal.org/i/3252060):
        Revised Honeypot configurations
* Removed webmozart/path-util and webflo/drupal-finder from vardot/varbase-project
  [#128](https://github.com/Vardot/varbase-project/issues/128)
* Issue [#3251860](https://www.drupal.org/i/3251860)
        by [mhawwari](https://www.drupal.org/u/mhawwari)
       : Restricted add section to library button access based on user role
* Issue [#3251634](https://www.drupal.org/i/3251634):
        Kept using ~9.0.0 || 9.0.x-dev for Varbase Media which using Bootstrap 4
        on the Varbase Bootstrap Paragraphs 9.0.x branch.
        after starting a 9.1.x branch to support Bootstrap 5
* Issue [#3251532](https://www.drupal.org/i/3251532):
        Kept using ~9.0.0 || 9.0.x-dev for Varbase Media and Varbase Editor which
        using Bootstrap 4 on the Varbase Layout Builder 10.0.x branch. after starting
        a 9.1.x branch to support Bootstrap 5
* Issue [#3251533](https://www.drupal.org/i/3251533):
        Kept using ~9.0.0 || 9.0.x-dev for Varbase Core, Varbase Media,
        and using ~9.0 || 9.0.x-dev || ~10.0.0 || 10.0.x-dev for Varbase
        Layout Builder which using Bootstrap 4 for the Varbase Blog 9.0.x branch.
        after starting a 9.1.x branch to support Bootstrap 5
* Issue [#3251685](https://www.drupal.org/i/3251685):
        Kept using ~9.0.0 || 9.0.x-dev for Varbase Media and
        Varbase Bootstrap Paragraphs. which using Bootstrap 4 on the
        Varbase Landing 9.0.x branch. after starting a 9.1.x branch
        to support Bootstrap 5
* Issue [#3251681](https://www.drupal.org/i/3251681):
        kept using ~9.0.0 || 9.0.x-dev for Varbase Media which using Bootstrap 4
        for the Varbase Media Hero Slider 9.0.x branch. after starting a 9.1.x
        branch to support Bootstrap 5
* Issue [#3251666](https://www.drupal.org/i/3251666):
        Kept using ~9.0.0 || 9.0.x-dev for Varbase Media which using Bootstrap 4
        for the Varbase Carousels 9.0.x branch. after starting a 9.1.x branch
        to support Bootstrap 5

### Updates since Varbase 9.0.3:
* Issue [#3255819](https://www.drupal.org/i/3255819)
       : Update to maintain automated tests to work with Drupal 9.3.0
* Issue [#3257957](https://www.drupal.org/i/3257957)
       : Update the Views Infinite Scroll module from ~1.0 to ~2.0 in Varbase Core
* Issue [#3257958](https://www.drupal.org/i/3257958)
       : Update the Views Infinite Scroll module from ~1.0 to ~2.0 in Varbase Media
* Issue [#3257985](https://www.drupal.org/i/3257985)
       : Updated the Layout Builder Component Attributes module from ~1.0 to ~2.0

### Fixes since Varbase 9.0.3:
* Issue [#3253518](https://www.drupal.org/i/3253518)
       : Fixed Drupal 9.3.0 issue on restricting calling libraries
        in dependencies: for not enabled modules
* Issue [#3254482](https://www.drupal.org/i/3254482)
        by [Qusai Taha](https://www.drupal.org/u/qusai-taha)
       : Fixed deprecated function drupal_get_path() in drupal:9.3.0
        and is removed from drupal:10.0.0
* Issue [#3225632](https://www.drupal.org/i/3225632)
       : Fixed Drupal 9 compatibility for Varbase Commerce module by adding
        the patch for the Commerce Reporting module to work with Drupal 9
* Issue [#3257624](https://www.drupal.org/i/3257624)
        by [Odai Atieh](https://www.drupal.org/u/odai-atieh)
       : Fixed revision issue with custom blocks used in the Layout Builder
* Issue [#3255151](https://www.drupal.org/i/3255151)
       : Fixed missing default skip email rerouting for email addresses
        after Reroute Email 2.1.0
* Issue [#3252799](https://www.drupal.org/i/3252799)
        by [Slurpee](https://www.drupal.org/u/slurpee)
        : Fixed the ampersand issue written in buggy
        Varbase Tour Tip #5: "Site's Content"

-------------------------------------------------------------------------------

# 9.0.3

### Highlighted important changes since Varbase 9.0.2:
* This is a **patch (bugfix) release of Varbase 9** and is ready for use
 on production sites.
  [Learn more about Varbase 9](https://docs.varbase.vardot.com/developers/understanding-varbase/basic-concepts).
* Updated Drupal core to 9.2.10 for new builds. which is
 a **patch (bugfix) release of Drupal 9** and is ready for use on production sites.
  [Learn more about Drupal 9](https://www.drupal.org/about/9).
* Issue [#3251062](https://www.drupal.org/i/3251062):
        Updated Bootstrap library from 4.6.0 to 4.6.1

### Added since Varbase 9.0.2:
* Issue [#3227277](https://www.drupal.org/i/3227277):
        Added "Authored by" filter to admin content views in Varbase Admin
* Issue [#3249476](https://www.drupal.org/i/3249476):
        Added "Authored by" filter to Media Table and Media Grid views in Varbase Media
* Issue [#3248635](https://www.drupal.org/i/3248635):
        Added Reroute Email ~2.0 module and enable with default config to
         Varbase Development module
* Issue [#3248644](https://www.drupal.org/i/3248644):
        Added a formbit on install to setup the rerouting email address configs
        for the Reroute Email module with default config checked for Varbase Development
* Issue [#3187308](https://www.drupal.org/i/3187308):
        Added Flood Control module to Varbase Security for login attempt limiting

* Issue [#3245156](https://www.drupal.org/i/3245156):
        Added the Block Library module ( ~1.0 ) with basic config for available block types
* Issue [#3244846](https://www.drupal.org/i/3244846)
        by [Ahmad Abbad](https://www.drupal.org/u/ahmad-abbad)
       : Added Bootstrap Border Color (side) variations to Bootstrap
        Base Utilities list in Vartheme BS4
* Issue [#3244910](https://www.drupal.org/i/3244910)
        by [Ahmad Abbad](https://www.drupal.org/u/ahmad-abbad)
       , [n.ghunaim](https://www.drupal.org/u/nghunaim)
       : Added a specific class when having background bg-color, bg-image, bg-video options
* Issue [#3233072](https://www.drupal.org/i/3233072):
        Added lint:yaml and update the package.json for Varbase Media
        module with latest Drupal 9.3.x dev tools

### Changed since Varbase 9.0.2:
* Issue [#3250823](https://www.drupal.org/i/3250823):
        Removed the Flood Unblock module as it will be discontinued by its maintainers
        in favour of using the Flood Control module instead, which
        now contains the functionality
* Issue [#3249434](https://www.drupal.org/i/3249434):
        Changed default width for selected admin exposed filters
* Issue [#3248270](https://www.drupal.org/i/3248270):
        Removed the Hero Slider region TWIG template file from Vartheme BS4
* Issue [#3245803](https://www.drupal.org/i/3245803):
        Allowed Varbase YouTube Import module to work with Composer ~2.0

### Updates since Varbase 9.0.2:
* Issue [#3246789](https://www.drupal.org/i/3246789):
        Updated Fast 404 module from 2.x-dev to 2.0-alpha6 ( ~2.0 )
* Issue [#3246778](https://www.drupal.org/i/3246778):
        Updated Layout Builder Library module from 1.0-beta2 to 1.0-beta3 ( ~1.0 )
        and remove committed patches
* Issue [#3246796](https://www.drupal.org/i/3246796):
        Updated Maxlength module from ~1.0 to ~2.0
* Issue [#3246802](https://www.drupal.org/i/3246802):
        Updated Maxlength module from ~1.0 to ~2.0 for the Varbase Landing Page (Paragraphs) module
* Issue [#3246803](https://www.drupal.org/i/3246803):
        Updated Maxlength module from ~1.0 to ~2.0 for the Varbase Media Hero Slider module
* Issue [#3246800](https://www.drupal.org/i/3246800):
        Updated Maxlength module from ~1.0 to ~2.0 for the Varbase FAQs module
* Issue [#3246801](https://www.drupal.org/i/3246801):
        Updated Maxlength module from ~1.0 to ~2.0 for the Varbase Bootstrap Paragraph module

### Fixes since Varbase 9.0.2:
* Issue [#3247625](https://www.drupal.org/i/3247625)
        by [Ahmad Abbad](https://www.drupal.org/u/ahmad-abbad)
       : Fixed admin Content and User Admin People view old config
        after change of schema config by the Views Bulk Operation module
* Issue [#3218138](https://www.drupal.org/i/3218138)
        by [RajabNatshah](https://www.drupal.org/u/rajabnatshah)
       , [ahillio](https://www.drupal.org/u/ahillio)
       , [alexpott](https://www.drupal.org/u/alexpott)
       : Fixed Invalid argument supplied for foreach() UpdateChecklist.php
* Issue [#3249335](https://www.drupal.org/i/3249335)
       : Fixed Media Table and Media Grid view old config after change
        of schema config by the Views Bulk Operation module
* Issue [#3244168](https://www.drupal.org/i/3244168)
        by mohammad faqeh
       : Fixed style for inline entity table inside layout builder modal
* Issue [#3244849](https://www.drupal.org/i/3244849)
        by [Ahmad Abbad](https://www.drupal.org/u/ahmad-abbad)
       : Fixed border color (side) variation classes in Bootstrap
        Styles for Varbase Layout Builder default configs
* Issue [#3214993](https://www.drupal.org/i/3214993)
        by [solanas](https://www.drupal.org/u/solanas)
       , [Joachim Namyslo](https://www.drupal.org/u/joachim-namyslo)
       : Fix not working Gallery media type display mode with Slick Carousel
        in text formatted with the CKEditor
* Issue [#3245763](https://www.drupal.org/i/3245763)
        by [Alaa Jwiehan](https://www.drupal.org/u/alaa-jwiehan)
       : Fixed missing CircleCI commit branch filter
* Issue [#3245889](https://www.drupal.org/i/3245889)
        by [Qusai Taha](https://www.drupal.org/u/qusai-taha)
       : Fixed broken Pager when items been selected by the views bulk operation
* Issue [#3246182](https://www.drupal.org/i/3246182)
        by [RajabNatshah](https://www.drupal.org/u/rajabnatshah)
       , [Delana_Alkurdi](https://www.drupal.org/u/delana_alkurdi)
       : Fixed Media library from Drupal core on user can add more than
        one image if he swipe to add them from the next page from the media library window
* Issue [#3245768](https://www.drupal.org/i/3245768)
        by [Odai Atieh](https://www.drupal.org/u/odai-atieh)
       : Fixed IEF complex widget: Re-ordering issue

--------------------------------------------------------------------------------

# 9.0.2

### Highlighted important changes since Varbase 9.0.1:
This is a patch (bugfix) release of Varbase 9 and is ready for
 use on production sites. Learn more about Varbase 9.

* Issue [#3160148](https://www.drupal.org/i/3160148):
        Added access permission check to "View JSON" operation link
* Issue [#3160149](https://www.drupal.org/i/3160149):
        Fixed "View API Documentation" link in entity operations
* Issue [#3243594](https://www.drupal.org/i/3243594):
        Added new permissions to Site Admin user role to access "View JSON"
        and "View API Docs" entity operations
* Issue [#3232568](https://www.drupal.org/i/3232568):
        Switched Varbase Entity Definition Update Manager class to extend
        the vardot/entity-definition-update-manager class library
* Issue [#3236754](https://www.drupal.org/i/3236754):
        Removed the Quick Edit module from Varbase install
* Added drush ~10 to require-dev only for development workflow
        [#115](https://github.com/Vardot/varbase-project/pull/115)
        for the default vardot/varbase-project template
* Added drupal/core-dev ~9 to require-dev only for development workflow
        [#116](https://github.com/Vardot/varbase-project/pull/116)
        for the default vardot/varbase-project template
* Issue [#3243512](https://www.drupal.org/i/3243512):
        Added lint:yaml and update the package.json for Varbase Installation
        profile with latest Drupal 9.3.x dev tools


### Added since Varbase 9.0.1:
* Issue [#3233071](https://www.drupal.org/i/3233071):
        Added lint:yaml and update the package.json for Varbase Core module
        with latest Drupal 9.3.x dev tools
* Issue [#3238527](https://www.drupal.org/i/3238527):
        Added lint:yaml and update the package.json for Varbase Editor module
        with latest Drupal 9.3.x dev tools
* Issue [#3230811](https://www.drupal.org/i/3230811):
        Added lint:yaml and update the package.json for Varbase Layout Builder module
        with latest Drupal 9.3.x dev tools
* Issue [#3230881](https://www.drupal.org/i/3230881):
        Added lint:yaml and update the package.json for Varbase API module
        with latest Drupal 9.3.x dev tools
* Issue [#3232675](https://www.drupal.org/i/3232675):
        Added lint:yaml and update the package.json for Vartheme BS4
        with latest Drupal 9.3.x dev tools
* Issue [#3233072](https://www.drupal.org/i/3233072):
        Added lint:yaml and update the package.json for Varbase Media module
        with latest Drupal 9.3.x dev tools
* Issue [#3236760](https://www.drupal.org/i/3236760):
        Added lint:yaml and update the package.json for Varbase Carousels module
        with latest Drupal 9.3.x dev tools
* Issue [#3232518](https://www.drupal.org/i/3232518):
        Added lint:yaml and update the package.json for Varbase Blog (Corporate Blog) module
        with latest Drupal 9.3.x dev tools
* Issue [#3239224](https://www.drupal.org/i/3239224):
        Added lint:yaml and update the package.json for Varbase FAQs module
        with latest Drupal 9.3.x dev tools
* Issue [#3239275](https://www.drupal.org/i/3239275):
        Added lint:yaml and update the package.json for Varbase Landing Page (Paragraphs) module
        with latest Drupal 9.3.x dev tools
* Issue [#3236550](https://www.drupal.org/i/3236550):
        Added lint:yaml and update the package.json for Varbase Bootstrap Paragraphs module
        with latest Drupal 9.3.x dev tools
* Issue [#3239735](https://www.drupal.org/i/3239735):
        Added lint:yaml and update the package.json for Varbase Media Header module
        with latest Drupal 9.3.x dev tools
* Issue [#3240009](https://www.drupal.org/i/3240009):
        Added lint:yaml and update the package.json for Varbase Search module
        with latest Drupal 9.3.x dev tools
* Issue [#3240022](https://www.drupal.org/i/3240022):
        Added lint:yaml and update the package.json for Varbase SEO module
        with latest Drupal 9.3.x dev tools
* Issue [#3240452](https://www.drupal.org/i/3240452):
        Added lint:yaml and update the package.json for Varbase Style Guide module
        with latest Drupal 9.3.x dev tools
* Issue [#3240580](https://www.drupal.org/i/3240580):
        Added lint:yaml and update the package.json for Varbase Total Control Dashboard module
        with latest Drupal 9.3.x dev tools
* Issue [#3240863](https://www.drupal.org/i/3240863):
        Added lint:yaml and update the package.json for Varbase Workflow module
        with latest Drupal 9.3.x dev tools
* Issue [#3241258](https://www.drupal.org/i/3241258):
        Added lint:yaml and update the package.json for Vartheme Claro admin theme
        with latest Drupal 9.3.x dev tools
* Issue [#3239221](https://www.drupal.org/i/3239221):
        Added lint:yaml and update the package.json for Varbase Email module
        with latest Drupal 9.3.x dev tools
* Issue [#3238344](https://www.drupal.org/i/3238344):
        Added lint:yaml and update the package.json for Varbase Media Hero Slider module
        with latest Drupal 9.3.x dev tools
* Issue [#3106983](https://www.drupal.org/i/3106983)
        by [rjzaar](https://www.drupal.org/u/rjzaar)
       , [RajabNatshah](https://www.drupal.org/u/rajabnatshah)
       : Added a documentation link for Configuring Varbase Media Header
        with more examples after fixing vmh on install does not set
        video (external) on Main Media (field_media)
* Issue [#3128226](https://www.drupal.org/i/3128226):
        Added Automated Testing for the Varbase SEO module
* Issue [#3117658](https://www.drupal.org/i/3117658)
        by [Mohammed J. Razem](https://www.drupal.org/u/mohammed-j-razem)
       : Added automated tests to test the Javascript Snippets functionality
* Issue [#3128228](https://www.drupal.org/i/3128228):
        Added Automated Testing for the Varbase Style Guide module
* Issue [#3076980](https://www.drupal.org/i/3076980):
        Added Automated Testing for the Varbase Total Control Dashboard module
* Issue [#3240880](https://www.drupal.org/i/3240880):
        Added Automated Testing for the Varbase Workflow module
* Added -O option to wget for twig-lint.phar
        [#118](https://github.com/Vardot/varbase-project/pull/118)
        by [Tolga Ozses](https://github.com/kartagis)
        for the default vardot/varbase-project template

### Changed since Varbase 9.0.1:
* Issue [#3170679](https://www.drupal.org/i/3170679):
        Changed JSON:API Resource overrides to disable all by
        default for any entity config in JSON API. Only Enable for entity
        content Content Types, Media, and Taxonomy
* Issue [#3199617](https://www.drupal.org/i/3199617)
        by [zterry95](https://www.drupal.org/u/zterry95)
       : Switched Varbase Core to use Entity Definition Update Manager class
        from vardot/entity-definition-update-manager class library
* Issue [#3232612](https://www.drupal.org/i/3232612):
        Switched Varbase API module to use Entity Definition Update Manager class
        from vardot/entity-definition-update-manager class library
* Issue [#3232617](https://www.drupal.org/i/3232617):
        Switched Varbase Media to use Entity Definition Update Manager class
        from vardot/entity-definition-update-manager class library
* Issue [#3239227](https://www.drupal.org/i/3239227):
        Switched Varbase FAQs to use Entity Definition Update Manager class
        from vardot/entity-definition-update-manager class library
* Issue [#3239282](https://www.drupal.org/i/3239282):
        Switched Varbase Landing Page (Paragraphs) to use Entity Definition Update Manager class
        from vardot/entity-definition-update-manager class library
* Issue [#3232624](https://www.drupal.org/i/3232624):
        Switched Varbase Layout Builder to use Entity Definition Update Manager class
        from vardot/entity-definition-update-manager class library
* Issue [#3239580](https://www.drupal.org/i/3239580):
        Switched Varbase Bootstrap Paragraphs to use Entity Definition Update Manager class
        from vardot/entity-definition-update-manager class library
* Issue [#3239800](https://www.drupal.org/i/3239800):
        Switched Varbase Media Header to use Entity Definition Update Manager class
        from vardot/entity-definition-update-manager class library
* Issue [#3240024](https://www.drupal.org/i/3240024):
        Switched Varbase SEO to use Entity Definition Update Manager class
        from vardot/entity-definition-update-manager class library
* Issue [#3240875](https://www.drupal.org/i/3240875):
        Switched Varbase Workflow to use Entity Definition Update Manager class
        from vardot/entity-definition-update-manager class library
* Issue [#3223249](https://www.drupal.org/i/3223249):
        Changed Varbase API module project Description and images
* Removed phpunit/phpunit from the services appserver build step in the .lando.yml file
        [#117](https://github.com/Vardot/varbase-project/pull/117)
        for the default vardot/varbase-project template
* Removed duplicate line from README.md 
        [#119](https://github.com/Vardot/varbase-project/pull/119)
        by [Tolga Ozses](https://github.com/kartagis)
        for the default vardot/varbase-project template

### Updates since Varbase 9.0.1:
* Issue [#3233381](https://www.drupal.org/i/3233381):
        Updated Entity Embed module from 1.1 to 1.2
* Issue [#3236467](https://www.drupal.org/i/3236467):
        Updated Advanced Text Formatter module
        from 2.1.0 to 2.1.1 ( ~2.0 ) and remove committed patches
* Issue [#3202379](https://www.drupal.org/i/3202379)
        by [jedgar1mx](https://www.drupal.org/u/jedgar1mx)
        : Updated Taxonomy Menu module from 3.x-dev to ~3.0
* Issue [#3238384](https://www.drupal.org/i/3238384)
        : Updated OpenAPI for JSON:API module from 3.0.1 to 3.0.2
* Issue [#3240886](https://www.drupal.org/i/3240886)
        by [thejimbirch](https://www.drupal.org/u/thejimbirch)
        : Updated Tour configurations for changes made to Tour Varbase Core module in Drupal 9.2
* Issue [#3241720](https://www.drupal.org/i/3241720)
        by [thejimbirch](https://www.drupal.org/u/thejimbirch)
        : Updated Tour configurations for changes made to Tour Varbase Media Hero Slider module in Drupal 9.2

### Fixes since Varbase 9.0.1:
* Issue [#3228612](https://www.drupal.org/i/3228612)
        by [qusai taha](https://www.drupal.org/u/qusai-taha)
        : Fixed not working border classes from the Bootstrap Styles module
        in Layout Builder pages for a default Bootstrap Theme
* Issue [#3189326](https://www.drupal.org/i/3189326)
        by [abu-zakham](https://www.drupal.org/u/abu-zakham)
        : Added 2 patches for the OpenAPI for JSON:API module to fix issues with 
        endpoints when JSON:API is configured to be read-only
* Issue [#3232630](https://www.drupal.org/i/3232630):
        Fixed Bootstrap Barrio theme schema for configuration files used in Vartheme BS4
* Issue [#3233388](https://www.drupal.org/i/3233388)
        by [jedgar1mx](https://www.drupal.org/u/jedgar1mx)
        : Fixed not existing method notice for the Advanced Text Formatter
        module and filter html tags in formatter
* Issue [#3233478](https://www.drupal.org/i/3233478)
        by [Odai Atieh](https://www.drupal.org/u/odai-atieh)
       : Fixed Validation error when saving untranslatable media field for node translation
* Issue [#3222166](https://www.drupal.org/i/3222166)
        : Fixed Entity Storage Exception on Column not found: 1054 Unknown column
        field_media_carousel_slide_target_id in field list
* Issue [#3232787](https://www.drupal.org/i/3232787)
        by [Joachim Namyslo](https://www.drupal.org/u/joachim-namyslo)
        , [RajabNatshah](https://www.drupal.org/u/rajabnatshah)
        : Fixed Bootstrap Styles module uses of AOS animation external library only.
        For better performance and GDPR Compliant
* Issue [#3227717](https://www.drupal.org/i/3227717)
        by [YousefAnbar](https://www.drupal.org/u/yousefanbar)
        : Fixed Field field_media_single is unknown error on changing the default media field
* Issue [#3241711](https://www.drupal.org/i/3241711):
        Fixed Varbase install message
* Issue [#3241751](https://www.drupal.org/i/3241751):
        Fixed Varbase Workflow requires drupal/core ~8.9 || ~9.0.0 with ~8.0 || ~9.0
* Issue [#3242196](https://www.drupal.org/i/3242196):
        Fixed to have a better build and test with CircleCI with 4 concurrent jobs
* Issue [#3239668](https://www.drupal.org/i/3239668)
        by [Ahmad Abbad](https://www.drupal.org/u/ahmad-abbad)
        : Fixed by removing config varbase_bootstrap_paragraphs.settings
        from Varbase installation profile

--------------------------------------------------------------------------------

# 9.0.1

### Highlighted important changes since Varbase 9.0.0:
* This is a patch (bugfix) release of Varbase 9 and is ready for use on production sites. Learn more about Varbase 9.

### Added since Varbase 9.0.0:
* Added support for the Varbase Updater ( Auto updater ) to
        auto update Varbase ~8 sites to Varbase ~9.0
        [#40](https://github.com/Vardot/varbase-updater/issues/40)
* Added support for the Varbase Subprofile Generator to use Varbase 9
        to generate Varbase Sub profile Basic template profile 
        [#4](https://github.com/Vardot/varbase-subprofile-generator/issues/4)

### Changed since Varbase 9.0.0:
* Issue [#3222020](https://www.drupal.org/i/3222020)
        by lanetterm
        : Removed not used automated testing asset files, like the English file with
        spaces and CAPITAL Letters.pdf and the other RTL - PDF file
* Issue [#3222735](https://www.drupal.org/i/3222735)
        by mohammad faqeh
        : Removed divider div from node edit Edit a Blog post
* Issue [#3226647](https://www.drupal.org/i/3226647):
        by lanetterm
        Changed composer.json file to let Varbase Blog require
        Varbase Layout Builder ~9.0 or ~10 for easier upgrade process
* Issue [#3226646](https://www.drupal.org/i/3226646):
        by lanetterm
        Changed composer.json file to let Varbase FAQs require
        Varbase Layout Builder ~9.0 or ~10 for easier upgrade process

### Updates since Varbase 9.0.0:
* Issue [#3222222](https://www.drupal.org/i/3222222):
        Updated Block Content Permissions module from 1.x-dev to ~1.0
* Issue [#3222221](https://www.drupal.org/i/3222221):
        Updated Password Policy module from 3.0-beta1 to ~3.0 and remove committed patches
* Issue [#3222234](https://www.drupal.org/i/3222234):
        Updated Simple XML sitemap module from ~3.0 to ~4.0

### Fixes since Varbase 9.0.0:
* Issue [#3223560](https://www.drupal.org/i/3223560)
        by Ahmad Abbad
       : Fixed outdated Nodejs version and the steps for how to create a new sub theme
* Issue [#3222411](https://www.drupal.org/i/3222411):
        Fixed PHP 7.4 Warning: count(): Parameter must be an array or an object that
        implements Countable
* Issue [#3222053](https://www.drupal.org/i/3222053):
        Fixed to allow content editors to use stored selected layouts on the Full content
        display mode with layout builder
* Issue [#3222375](https://www.drupal.org/i/3222375):
        Fixed Notice: Undefined index: background_edgetoedge
* Issue [#3225177](https://www.drupal.org/i/3225177)
        by Joachim Namyslo
       : Fixed Styleguide missing plugin ID. Which does not work in 9.x anymore
* Issue [#3223393](https://www.drupal.org/i/3223393):
        Fixed dependencies enable for Configuration Update Manager module by changing
        drupal:config_update to config_update:config_update

--------------------------------------------------------------------------------

# 9.0.0

### Highlighted important changes since Varbase 9.0.0-rc2:
* Issue [#3218194](https://www.drupal.org/i/3218194):
        Added Vertical and Horizontal alignments to section styling settings for
        Varbase Layout Builder ~10
* Issue [#3210657](https://www.drupal.org/i/3210657):
        Added Boxed options ( Wide, Medium, Narrow, Tiny ) in Varbase Layout Builder ~10
* Issue [#3207154](https://www.drupal.org/i/3207154):
        Changed the style for Social Auth login buttons to go with the new standard branding and trust
* Issue [#3206185](https://www.drupal.org/i/3206185):
        Added Media Bulk Upload module

### Added since Varbase 9.0.0-rc2:
* Issue [#3152887](https://www.drupal.org/i/3152887)
        by [Mohammed J. Razem](https://www.drupal.org/u/mohammed-j-razem)
       : Added an operations link for nodes with Layout Builder enabled
* Issue [#3207105](https://www.drupal.org/i/3207105):
        Added Bootstrap Display headings sizes to CKEditor styles for the Rich editor in Varbase Editor
* Issue [#3206775](https://www.drupal.org/i/3206775):
        Added Editor Advanced link module 
* Issue [#3206322](https://www.drupal.org/i/3206322
        by [Mohammed J. Razem](https://www.drupal.org/u/mohammed-j-razem)
       : Added permissions for Media Bulk Upload config. All roles (Editor and above can upload in bulk)
* Issue [#3206323](https://www.drupal.org/i/3206323)
        by [Mohammed J. Razem](https://www.drupal.org/u/mohammed-j-razem)
       : Added permissions for Media Bulk Upload config for SEO admin user role to be able to upload in bulk
* Issue [#3205085](https://www.drupal.org/i/3205085):
        Added a tag release-varbase workflow job for the CircleCI automated testing pipelines
* Issue [#3210225](https://www.drupal.org/i/3210225)
        by [Omar Alahmed](https://www.drupal.org/u/omar-alahmed)
       : Added more options for pathauto user control. To alter the list of punctuation characters for Pathauto

### Changed since Varbase 9.0.0-rc2:
* Issue [#3217858](https://www.drupal.org/i/3217858):
        Support PHP7.4 for Varbase ~9.0 and all used components with automated testing
* Issue [#3215775](https://www.drupal.org/i/3215775):
        Locked Vartheme BS4 to require Bootstrap Barrio ~5.1.0 versions. Not to let it
        require Bootstrap Barrio ~5.5.0 which using the Bootstrap ~5.0 library
* Issue [#3213179](https://www.drupal.org/i/3213179):
        Changed main js file in package.json from "main": "index.js" to "main": "gulpfile.js"
* Issue [#3209964](https://www.drupal.org/i/3209964):
        Removed VARTHEME_BS4_SUBTHEME/yarn.lock file to let new generated sub themes use latest packages
* Issue [#3173409](https://www.drupal.org/i/3173409):
        Started a 9.0.x branch for Varbase FAQs to work with Varbase ~9.0 and Drupal ~9.0
* Issue [#3185563](https://www.drupal.org/i/3185563):
        Allowed Varbase FAQs module to work with Composer ~2.0
* Issue [#3211900](https://www.drupal.org/i/3211900):
        Switched Varbase FAQs section page to use Varbase Layout Builder ~10
* Issue [#3217842](https://www.drupal.org/i/3217842):
        Dropped support for Bootstrap 3 in Bootstrap Layout Builder general scripts behaviors
* Issue [#3220489](https://www.drupal.org/i/3220489):
        Started a 3.0.x branch for Vartheme Claro admin theme to work with Varbase 9.0.x and Drupal 9
* Issue [#3220899](https://www.drupal.org/i/3220899):
        Updated the Normalizer and Denormalize patch for Layout Builder in the Default Content module
* Issue [#3220904](https://www.drupal.org/i/3220904):
        Updated Default Layout config for Varbase Landing page (Layout Builder)
* Issue [#3220906](https://www.drupal.org/i/3220906):
        Updated Default Layout config and Default Content in Varbase Blog for the Blog section
* Issue [#3220965](https://www.drupal.org/i/3220965):
        Moved block configs from config/install to config/optional for Vartheme Claro
        which used at the time of Varbase install

### Updates since Varbase 9.0.0-rc2:
* Issue [#3220503](https://www.drupal.org/i/3220503):
        Updated Vartheme Claro admin theme from ~2.0 to ~3.0
* Issue [#3207629](https://www.drupal.org/i/3207629):
        Updated Drupal core from 9.1.5 to 9.1.6 ( ~9.1 ) and remove committed patches
* Issue [#3201723](https://www.drupal.org/i/3201723)
        by [jedgar1mx](https://www.drupal.org/u/jedgar1mx)
       : Updated LinkIt module from ~5.0 to ~6.0
* Issue [#3212948](https://www.drupal.org/i/3212948):
        Updated Admin Toolbar module from ~2.0 to ~3.0
* Issue [#3209303](https://www.drupal.org/i/3209303):
        Updated Blazy module from 2.1 to 2.2 ( ~2.0 ) and remove applied patches
* Issue [#3209310](https://www.drupal.org/i/3209310):
        Updated Inline Entity Form module from 1.0-rc8 to 1.0-rc9
* Issue [#3209317](https://www.drupal.org/i/3209317):
        Updated Chaos Tool Suite (ctools) module from 3.4 to 3.5 ( ~3.0 ) and remove committed patches
* Issue [#3219691](https://www.drupal.org/i/3219691):
        Updated Total Control module from ~2.0 to ~3.0
* Issue [#3219699](https://www.drupal.org/i/3219699):
        Updated Editor Advanced Link module from ~1.0 to ~2.0
* Issue [#3219700](https://www.drupal.org/i/3219700):
        Updated OpenAPI for JSON:API module from ~2.0 to ~3.0
* Issue [#3219707](https://www.drupal.org/i/3219707):
        Updated Simple OAuth (OAuth2) & OpenID Connect module from ~4.0 to ~5.0
* Issue [#3219834](https://www.drupal.org/i/3219834):
        Updated Views Bulk Operations (VBO) module from ~3.0 to ~4.0
* Issue [#3219836](https://www.drupal.org/i/3219836):
        Updated Views Bulk Operations (VBO) module from ~3.0 to ~4.0 for Varbase Media
* Issue [#3219841](https://www.drupal.org/i/3219841):
        Updated Tour UI module from 1.x-dev to ~1.0

### Fixes since Varbase 9.0.0-rc2:
* Issue [#3211345](https://www.drupal.org/i/3211345):
        Fixed order of the Language field when creating Landing page (Layout Builder) content on multilingual websites
* Issue [#3207652](https://www.drupal.org/i/3207652):
        Fixed width of fieldgroup after the fix of Off-canvas style resets in Drupal core
* Issue [#3205399](https://www.drupal.org/i/3205399)
        by [mhawwari](https://www.drupal.org/u/mhawwari)
       : Fixed input width inside tables on mobile
* Issue [#3175233](https://www.drupal.org/i/3175233)
        by [Abdelrahman Amer](https://www.drupal.org/u/abdelrahman-amer)
       : Fixed permission Issues on Subqueues
* Issue [#3207137](https://www.drupal.org/i/3207137):
        Fixed Text format style in Edit Inline blocks with layout builder modal
* Issue [#3209730](https://www.drupal.org/i/3209730):
        Fixed code coverage for Node component style on NO node pages
* Issue [#3209746](https://www.drupal.org/i/3209746):
        Fixed code coverage for Comments component style on pages without comments
* Issue [#3209687](https://www.drupal.org/i/3209687):
        Fixed code coverage for Node preview component CSS style loaded for anonymous users
* Issue [#3210581](https://www.drupal.org/i/3210581):
        Fixed code coverage for Alerts component style on pages with no Alerts
* Issue [#3210596](https://www.drupal.org/i/3210596):
        Fixed code coverage for Indented component style for threaded comments on pages without comments
* Issue [#3210583](https://www.drupal.org/i/3210583):
        Fixed code coverage for Affix effect component style when the Affix theme settings is off
* Issue [#3210580](https://www.drupal.org/i/3210580):
        Fixed code coverage for Breadcrumbs component style on pages with no breadcrumbs
* Issue [#3210577](https://www.drupal.org/i/3210577):
        Fixed code coverage for file component style on pages with no files
* Issue [#3210537](https://www.drupal.org/i/3210537):
        Fixed code coverage for Collapsed sidebar styles on pages with no sidebar
* Issue [#3210528](https://www.drupal.org/i/3210528):
        Fixed code coverage for print layout CSS loaded for all medias, which
        should only load for media: print
* Issue [#3210526](https://www.drupal.org/i/3210526):
        Fixed code coverage for Tabs and Vertical tabs components style loaded for anonymous or
        basic authenticated users when no Tabs elements in the page
* Issue [#3210524](https://www.drupal.org/i/3210524):
        Fixed code coverage for Dropbutton component style loaded for anonymous or basic
        authenticated users when no Dropbutton elements in the page
* Issue [#3209928](https://www.drupal.org/i/3209928):
        Fixed code coverage for vbp-colors library of custom Varbase Bootstrap Paragraphs colors
        theme for Vartheme which are loading on a not paragraphs page
* Issue [#3209905](https://www.drupal.org/i/3209905):
        Fixed code coverage for navbar administration component style loaded for anonymous or
        basic authenticated users when no toolbar in the page
* Issue [#3210532](https://www.drupal.org/i/3210532):
        Fixed code coverage for Better Login styling on not register, login, or reset password pages
* Issue [#3210590](https://www.drupal.org/i/3210590):
        Fixed code coverage for Book navigation component style on pages with
        no book navigation elements
* Issue [#3210575](https://www.drupal.org/i/3210575): Fixed code coverage for Form component style or Search form block on pages with no forms
* Issue [#3209970](https://www.drupal.org/i/3209970):
        Fixed code coverage for preloaded remote CDN Font Awesome library to a packaged
        one for better pre-loading of icons
* Issue [#3212956](https://www.drupal.org/i/3212956): Fixed code coverage for preloaded RTL fonts
* Issue [#3216039](https://www.drupal.org/i/3216039)
        by [mhawwari](https://www.drupal.org/u/mhawwari)
       : Fixed modules enabled condition always fails when value is empty
* Issue [#3216704](https://www.drupal.org/i/3216704)
        by [mhawwari](https://www.drupal.org/u/mhawwari)
       : Fixed W3C CSS validation issues
* Issue [#3211878](https://www.drupal.org/i/3211878)
        by [mhawwari](https://www.drupal.org/u/mhawwari)
       , [RajabNatshah](https://www.drupal.org/u/rajabnatshah)
       : Fixed call to non-existent file loading-small.gif by recompiling the scss
        files for new changes in Claro admin theme
* Issue [#3213517](https://www.drupal.org/i/3213517)
        by [earthday47](https://www.drupal.org/u/earthday47)
       : Fixed PHP 7.4 + warnings = cannot add to entity queues
* Issue [#3220082](https://www.drupal.org/i/3220082)
        by [Ahmad Abbad](https://www.drupal.org/u/ahmad-abbad)
       , [RajabNatshah](https://www.drupal.org/u/rajabnatshah)
       : Fixed Draggable tables are not working in Drupal 9.2.x
* Issue [#3220149](https://www.drupal.org/i/3220149):
        Fixed warning Invalid argument in Update Checklist
* Issue [#3220659](https://www.drupal.org/i/3220659)
        by [jedgar1mx](https://www.drupal.org/u/jedgar1mx)
       , [RajabNatshah](https://www.drupal.org/u/rajabnatshah)
       : Fixed missing Swagger-ui library
* Issue [#3219345](https://www.drupal.org/i/3219345):
        Fixed Tour styling after the update to Drupal 9.2.0

--------------------------------------------------------------------------------

# 9.0.0-rc2

### Highlighted important changes since Varbase 9.0.0-rc1:
* Issue [#3196489](https://www.drupal.org/i/3196489):
                Updated Varbase Layout Builder module from ~9.0 to ~10.0
* Issue [#3190716](https://www.drupal.org/i/3190716):
                 Started a 10.0.x branch for Varbase Layout Builder to use Bootstrap
                 Styles and Bootstrap Layout Builder
* Issue [#3204731](https://www.drupal.org/i/3204731):
                 Changed default content for the Homepage to match with the 
                Varbase Layout Builder ~10 config structure
* Issue [#3163199](https://www.drupal.org/i/3163199):
                 Switched Blog site section page, Blog post, Blog categories,
                 and Tags to use Varbase Layout Builder ~10
* Issue [#3202306](https://www.drupal.org/i/3202306):
                 Changed style of Edit Layout page and preview of sections
                 to look like the front end view of the page
* Issue [#3202838](https://www.drupal.org/i/3202838):
                 Changed Varbase Layout Builder default set of breakpoints,
                 layouts, and styles
* Issue [#3202093](https://www.drupal.org/i/3202093):
                 Added a checkbox "Keep gutters between columns" to section layout
                 and Default options for sections
* Issue [#3199210](https://www.drupal.org/i/3199210):
                 Fixed the style of ADD TO LIBRARY and IMPORT FROM LIBRARY
                 for Layout Builder Section Library
* Issue [#3199217](https://www.drupal.org/i/3199217):
                 Made Edge to edge background default checked on
* Issue [#3199224](https://www.drupal.org/i/3199224):
                 Fixed Container type and Gutters layouts rendering

### Added since Varbase 9.0.0-rc1:
* Issue [#3192175](https://www.drupal.org/i/3192175):
                 Added WebP module ~1.0 and enable by default
* Issue [#3197899](https://www.drupal.org/i/3197899):
                 Added Bootstrap 5 Utility aliases for Bootstrap 4
* Issue [#3192508](https://www.drupal.org/i/3192508):
                 Added Preloaded fonts include in Vartheme BS4
* Issue [#3199553](https://www.drupal.org/i/3199553):
                 Added vlb-section not styled CSS class to be used to grep and style all Varbase Layout Builder sections
* Issue [#3195678](https://www.drupal.org/i/3195678)
                 by [yasmeensalah](https://www.drupal.org/u/yasmeensalah)
                : Added lazy-loading for the Remote video iframe
* Issue [#3190047](https://www.drupal.org/i/3190047)
                 by [davyin](https://www.drupal.org/u/davyin)
                : Added Length Indicator dependency in composer.json
* Issue [#3188214](https://www.drupal.org/i/3188214)
                 by [yasmeensalah](https://www.drupal.org/u/yasmeensalah)
                : Added section classes to the section attributes
* Issue [#3202476](https://www.drupal.org/i/3202476):
                 Applied a patch for the Layout Builder Library module on an
                 issue with creating a new layout override for a node from selected
                 Layout Library selection

### Changed since Varbase 9.0.0-rc1:
* Issue [#3194401](https://www.drupal.org/i/3194401):
                 Switched to CircleCI as the default automated testing platform
* Issue [#3188641](https://www.drupal.org/i/3188641):
                 Changed the set front page to "/node" process from using static
                 node id to front page path by the alias
* Issue [#3196988](https://www.drupal.org/i/3196988):
                 Changed Bootstrap Barrio theme version from ~5.0 to ~5.1 for using
                 Bootstrap 4 only
* Issue [#3189275](https://www.drupal.org/i/3189275)
                 by [Omar Alahmed](https://www.drupal.org/u/omar-alahmed)
                 : Removed px-4 and text-center Bootstrap classes from
                 bs-1col--vlb.html.twig template
* Issue [#3192092](https://www.drupal.org/i/3192092)
                 by [yasmeensalah](https://www.drupal.org/u/yasmeensalah)
                : Removed duprecated uriScheme function and use Stream
                 Wrapper Manager Interface getScheme for Drupal 9 compatibility
* Issue [#3188647](https://www.drupal.org/i/3188647):
                 Changed the reset timestamp for all nodes provided by all
                 custom Default Content modules
* Issue [#3204768](https://www.drupal.org/i/3204768):
                 Removed the old vartheme_bs4/vlb-colors library for Vartheme BS4
                 Varbase Layout Builder colors theme.
                 As the varbase_layout_builder/vlb-colors had been removed from Varbase Layout Builder ~10
* Issue [#3201146](https://www.drupal.org/i/3201146):
                 Backported .gx- to Vartheme BS4 from Bootstrap 5 to be used
                 with Bootstrap 4 using the gutter size in px, not in rem to
                 be inline with Bootstrap 4
* Issue [#3201141](https://www.drupal.org/i/3201141):
                 Changed .px-4 to use the right .gx-* CSS class from Bootstrap 5
                 to be used with Bootstrap 4 using the gutter size in px, not in
                 rem to be inline with Bootstrap 4
* Issue [#3201602](https://www.drupal.org/i/3201602):
                 Switched definition class for the Layout Builder provider from
                 Bootstrap Layout class to Varbase Layout Builder Bootstrap Layout class
* Issue [#3202085](https://www.drupal.org/i/3202085):
                 Switched Templates from Bootstrap Layout Builder to Varbase Layout Builder
* Issue [#3197105](https://www.drupal.org/i/3197105):
                 Changed all Default Content in Varbase Core for the Homepage to work
                 with VLB ~10.0
* Issue [#3197106](https://www.drupal.org/i/3197106):
                 Changed Default Layout config and Default Content in Varbase Blog
                 for the Blog site section page to work with VLB ~10.0
* Issue [#3197938](https://www.drupal.org/i/3197938)
                 by [mhawwari](https://www.drupal.org/u/mhawwari)
                : Removed unused use statements for namespaces in .theme
* Issue [#3192092](https://www.drupal.org/i/3192092)
                 by [yasmeensalah](https://www.drupal.org/u/yasmeensalah)
                : Removed duprecated uriScheme function and use Stream Wrapper Manager
                 Interface getScheme for Drupal 9 compatibility

### Updates since Varbase 9.0.0-rc1:
* Issue [#3201685](https://www.drupal.org/i/3201685):
                 Updated Drupal core from 9.1.4 to 9.1.5 ( ~9.1 ) and remove
                 committed patches
* Issue [#3193729](https://www.drupal.org/i/3193729):
                 Updated Bootstrap library from 4.5.3 to 4.6.0
Bootstrap v4.6.0 was released
* Issue [#3193218](https://www.drupal.org/i/3193218):
                 Updated Font Awesome Free library from v5.0.13 to v5.15.2
* Issue [#3193863](https://www.drupal.org/i/3193863):
                 Updated npm-asset/dropzone library from ~4.0 to ~5.0
* Issue [#3188453](https://www.drupal.org/i/3188453)
                 by [Firass Ziedan](https://www.drupal.org/u/firass-ziedan)
                : Updated Media Library Edit module from 1.0-alpha2 to ( ~2.0 ) and removed committed patches
* Issue [#3190301](https://www.drupal.org/i/3190301):
                 Updated Content Planner module from 1.0-beta12 to
                 1.0-beta15 ( ~1.0 ) and removed all committed patches
* Issue [#3204736](https://www.drupal.org/i/3204736):
                 Updated Coffee module from 1.0 to 1.1 ( ~1.0 )
                 and remove applied patches
* Issue [#3191486](https://www.drupal.org/i/3191486):
                 Updated Social Auth module from ~2.0 to ~3.0
* Issue [#3191926](https://www.drupal.org/i/3191926):
                 Updated Social Auth Google module from ~2.0 to ~3.0
* Issue [#3191483](https://www.drupal.org/i/3191483):
                 Updated Social Auth LinkedIn module from 8.x-2.0-beta3 ( ~2.0 ) to ~3.0
* Issue [#3191931](https://www.drupal.org/i/3191931):
                 Updated Social Auth Twitter module from ~2.0 to 2.x-dev to work with Social Auth ~3.0
* Issue [#3191492](https://www.drupal.org/i/3191492):
                 Updated Social Auth Facebook module from ~2.0 to ~3.0

### Fixes since Varbase 9.0.0-rc1:
* Issue [#3200073](https://www.drupal.org/i/3200073)
                 by [Odai Atieh](https://www.drupal.org/u/odai-atieh)
                : Fixed Blazy Blurry performance issues of not exist derivative
                 image and enhance the logic of the encoding of base64 image
* Issue [#3200242](https://www.drupal.org/i/3200242):
                 Fixed creating Blazy Blurry derivatives only if necessary, and the
                 creation of Image style or responsive image style derivatives only
                 if necessary
* Issue [#3194958](https://www.drupal.org/i/3194958):
                 Fixed Drupal core Off-canvas style resets overriding styles
                 issue after updating browsers for a new feature complex :not()
                 CSS selector
* Issue [#3188131](https://www.drupal.org/i/3188131):
                 Fixed Ultimate Cron module issue with Drupal Core 9.1.x on
                 ArgumentCountError: Too few arguments
* Issue [#3190703](https://www.drupal.org/i/3190703)
                 by [jedgar1mx](https://www.drupal.org/u/jedgar1mx)
                : Fixed Composer 2.0 issue for bower-asset/jqueryui-touch-punch
                 library default branch
* Issue [#3192282](https://www.drupal.org/i/3192282)
                 by [alaa abbad](https://www.drupal.org/u/alaa-abbad)
                : Fixed Dropzonejs widget issue of adding _0 on all image file names
* Issue [#3190218](https://www.drupal.org/i/3190218)
                 by [mhawwari](https://www.drupal.org/u/mhawwari)
                : Fixed error when navigating Layout library Trying to access
                 array offset on value of type null in
                VarbaseLayoutBuilderThemeNegotiator->determineActiveTheme()
* Issue [#3194571](https://www.drupal.org/i/3194571)
                 by [Abdelrahman Amer](https://www.drupal.org/u/abdelrahman-amer)
                : Fixed "maximum call stack size exceeded" JavaScript error
* Issue [#3195789](https://www.drupal.org/i/3195789)
                 by [Firass Ziedan](https://www.drupal.org/u/firass-ziedan)
                : Fixed 404 messing images for Claro admin theme in
                 Varbase Layout Builder
* Issue [#3196236](https://www.drupal.org/i/3196236)
                 by [Abdulla Abu Zakham](https://www.drupal.org/u/abu-zakham)
                : Fixed Error when no comment added to content type
* Issue [#3171864](https://www.drupal.org/i/3171864)
                 by [Firass Ziedan](https://www.drupal.org/u/firass-ziedan)
                : Fixed pages URL in google analytics summary view
* Issue [#3115228](https://www.drupal.org/i/3115228)
                 by calmforce
                : Fixed incorrect numbers in My Site Overview block
                 if type_count above 1000
* Issue [#3188457](https://www.drupal.org/i/3188457)
                 by [Firass Ziedan](https://www.drupal.org/u/firass-ziedan)
                : Update Media Library Form API Element module
                 from 2.0.0 to 2.0.3 ( ~2.0 ) and removed committed patches
* Issue [#3187189](https://www.drupal.org/i/3187189):
                 Fixed composer require for Drupal core to ~8.0 || ~9.0
                 to work with latest Drupal 9.1.x versions
* Issue [#3186916](https://www.drupal.org/i/3186916):
                 Fixed install page function and style for Vartheme Claro
                 admin theme to follow with latest Drupal core 9.1.0 Claro changes
* Issue [#3186937](https://www.drupal.org/i/3186937)
                 by [yasmeensalah](https://www.drupal.org/u/yasmeensalah)
                : Fixed PHP Exception for VMI module on escaped characters in
                 sequences/mappings in *.yml files with latest Symfony/yaml
* Issue [#3199598](https://www.drupal.org/i/3199598)
                 by [Firass Ziedan](https://www.drupal.org/u/firass-ziedan)
                : Fixed CKEditor background color in Vartheme base file
* Issue [#3204734](https://www.drupal.org/i/3204734):
                 Fixed default configs and remove leftover section configs
* Issue [#3200994](https://www.drupal.org/i/3200994)
                 by [Abdulla Abu Zakham](https://www.drupal.org/u/abu-zakham)
                : Fixed LogicException & RuntimeException on user login and
                 registration error when the Twitter social button clicked on

---------------------------------------------------------------------------------

# 9.0.0-rc1

### Highlighted important changes since Varbase 9.0.0-beta1:
* Issue [#3186262](https://www.drupal.org/i/3186262):
                 Updated Drupal core from ~9.0 to ~9.1 and change needed patches
* Issue [#3180950](https://www.drupal.org/i/3180950):
                 Allowed Varbase to work with Composer ~2.0

### Added since Varbase 9.0.0-beta1:
* Issue [#3180926](https://www.drupal.org/i/3180926)
                 by [yasmeensalah](https://www.drupal.org/u/yasmeensalah)
                : Added the ability to hide breadcrumbs from the Media Header

### Changed since Varbase 9.0.0-beta1:
* Issue [#3180646](https://www.drupal.org/i/3180646):
                 Enhanced the logic on the creation of contents with layout
                 library selected layout. the system should not redirect to change the layout
* Issue [#3185416](https://www.drupal.org/i/3185416):
                 Removed container-fluid CSS class from container_attributes
                 and only use when needed
* Issue [#3186298](https://www.drupal.org/i/3186298):
                 Changed Vartheme Claro admin them on Drupal core require in
                 composer from ~9.0.0 to ~9.0
* Issue [#3186302](https://www.drupal.org/i/3186302):
                 Changed Varbase Workflow module on Drupal core require in composer from ~9.0.0 to ~9.0
* Issue [#3185544](https://www.drupal.org/i/3185544):
                 Allowed Varbase Core module to work with Composer ~2.0
* Issue [#3185580](https://www.drupal.org/i/3185580):
                 Allowed Varbase Media module to work with Composer ~2.0
* Issue [#3185550](https://www.drupal.org/i/3185550):
                 Allowed Varbase Editor module to work with Composer ~2.0
* Issue [#3185633](https://www.drupal.org/i/3185633):
                 Allowed Varbase SEO module to work with Composer ~2.0
* Issue [#3185641](https://www.drupal.org/i/3185641):
                 Allowed Varbase Total Control Dashboard module to work with Composer ~2.0
* Issue [#3185512](https://www.drupal.org/i/3185512):
                 Allowed Varbase API module to work with Composer ~2.0
* Issue [#3185521](https://www.drupal.org/i/3185521):
                 Allowed Varbase Auth module to work with Composer ~2.0
* Issue [#3185527](https://www.drupal.org/i/3185527):
                 Allowed Varbase Blog module to work with Composer ~2.0
* Issue [#3185529](https://www.drupal.org/i/3185529):
                 Allowed Varbase Bootstrap Paragraphs module to work with Composer ~2.0
* Issue [#3185536](https://www.drupal.org/i/3185536):
                 Allowed Varbase Carousels module to work with Composer ~2.0
* Issue [#3185555](https://www.drupal.org/i/3185555):
                 Allowed Varbase Email module to work with Composer ~2.0
* Issue [#3185570](https://www.drupal.org/i/3185570):
                 Allowed Varbase Media Hero Slider module to work with Composer ~2.0
* Issue [#3185621](https://www.drupal.org/i/3185621):
                 Allowed Varbase Search module to work with Composer ~2.0
* Issue [#3185635](https://www.drupal.org/i/3185635):
                 Allowed Varbase Styleguide module to work with Composer ~2.0
* Issue [#3185650](https://www.drupal.org/i/3185650):
                 Allowed Varbase Workflow module to work with Composer ~2.0
* Issue [#3185679](https://www.drupal.org/i/3185679):
                 Allowed Vartheme BS4 theme to work with Composer ~2.0
* Issue [#3185574](https://www.drupal.org/i/3185574):
                 Allowed Varbase Landing Page (Paragraphs) module to work with Composer ~2.0
* Issue [#3185605](https://www.drupal.org/i/3185605):
                 Allowed Varbase Media Header module to work with Composer ~2.0
* Issue [#3185578](https://www.drupal.org/i/3185578):
                 Allowed Varbase Layout Builder module to work with Composer ~2.0

### Updates since Varbase 9.0.0-beta1:
* Issue [#3186048](https://www.drupal.org/i/3186048):
                 Updated Rabbit Hole module from 1.0-beta7 to 1.0-beta8 ( ~1.0 )
                 and removed committed patches
* Issue [#3184180](https://www.drupal.org/i/3184180):
                 Updated bower-asset/d3 library from ~3.0 to ~5.0
* Issue [#3179226](https://www.drupal.org/i/3179226):
                 Updated Style Guide module from 1.x-dev to ~2.0 and removed applied
                 patches to support Drupal 9 and the 9.0.x branch

### Fixes since Varbase 9.0.0-beta1:
* Issue [#3185637](https://www.drupal.org/i/3185637)
                 by [abedajam](https://www.drupal.org/u/abedajam)
                : Fixed Update Helper throws an exception
                 after updating to Varbase 8.8.x
* Issue [#3185426](https://www.drupal.org/i/3185426)
                : Fixed escaped characters in sequences/mappings in *.yml file
* Issue [#3186937](https://www.drupal.org/i/3186937)
                 by [yasmeensalah](https://www.drupal.org/u/yasmeensalah)
                : Fixed PHP Exception for VMI module on escaped
                 characters in sequences/mappings in *.yml files with latest Symfony/yaml
* Issue [#3186010](https://www.drupal.org/i/3186010):
                 Fixed Value assigned to "section" is not a valid section
* Issue [#3109712](https://www.drupal.org/i/3109712)
                 by [das-peter](https://www.drupal.org/u/das-peter)
                , [Joachim Namyslo](https://www.drupal.org/u/joachim-namyslo)
                , [sameer](https://www.drupal.org/u/sameer)
                : Fixed Fatal Error from 8.7.11 to 8.8.1 by with plain array as returned by composer getConfig getRepositories #35
* Issue [#3184211](https://www.drupal.org/i/3184211)
                 by [arawashdeh](https://www.drupal.org/u/arawashdeh)
                : Fixed the path typo for RTL Tajawal font
* Issue [#3126444](https://www.drupal.org/i/3126444)
                 by [Andrew Answer](https://www.drupal.org/u/andrew-answer)
                , [AHBJCB](https://www.drupal.org/u/ahbjcb)
                , [RajabNatshah](https://www.drupal.org/u/rajabnatshah)
                : Fixed Ajax failure: Drupal.ajax is undefined
* Issue [#3175989](https://www.drupal.org/i/3175989)
                 by [Andrew Answer](https://www.drupal.org/u/andrew-answer)
                : Fixed not visible Media Gallery
* Issue [#3183988](https://www.drupal.org/i/3183988)
                 by [abedajam](https://www.drupal.org/u/abedajam)
                : Fixed Claro admin theme style of gray fieldset on Google Chrome 87
* Issue [#3179426](https://www.drupal.org/i/3179426):
                 Fixed status of Varbase update instructions to 100% on install
                 and on an installation for optional Varbase components or in a Varbase Sub Profile
* Issue [#3186916](https://www.drupal.org/i/3186916):
                 Fixed install page function and style for Vartheme Claro admin theme
                 to follow with latest Drupal core 9.1.0 Claro changes
* Issue [#3187189](https://www.drupal.org/i/3187189):
                 Fixed composer require for Drupal core to ~8.0 || ~9.0 to work
                 with latest Drupal 9.1.x versions


---------------------------------------------------------------------------------

# 9.0.0-beta1

### Highlighted important changes since Varbase 9.0.0-alpha1:
* Issue [#3179132](https://www.drupal.org/i/3179132):
                 Changed Automated Functional Acceptance Testing to be
                 Drupal 9 compatible on the Varbase 9.0.x branch
* Issue [#3180204](https://www.drupal.org/i/3180204):
                 Updated Varbase Theme (Bootstrap 4 - SASS) from ~6.0
                 ( 8.x-6.x-dev ) to ~9.0 ( 9.0.x-dev ) on the 
                Varbase 9.0.x branch and drop legacy support for Bootstrap 3
* Issue [#3179010](https://www.drupal.org/i/3179010):
                 Added support for dropzonejs widget with Media Library in core
* Issue [#3178141](https://www.drupal.org/i/3178141):
                 Updated Bootstrap library from 4.5.2 to 4.5.3

### Added since Varbase 9.0.0-alpha1:
* Issue [#3180094](https://www.drupal.org/i/3180094):
                 Started a 9.0.x branch for [Vartheme BS4] theme to work
                 with Varbase 9.0.x and Drupal 9 and drop legacy support
                 for Bootstrap 3
* Issue [#3180077](https://www.drupal.org/i/3180077):
                 Added [jQuery UI Accordion] module to work with the
                 [Field Group] under Drupal 9

### Changed since Varbase 9.0.0-alpha1:
* Issue [#3178799](https://www.drupal.org/i/3178799):
                 Styled Content Moderation control. At the Draft view to
                 look the same as moderation status in all locations
* Issue [#3178826](https://www.drupal.org/i/3178826):
                 Removed padding for unpublished nodes in editing mode
                 or under the View existing Draft
* Issue [#3178836](https://www.drupal.org/i/3178836):
                 Changed the style of navigation pager, and mini pager display.
                 To flex and justify content pager elements to the center
* Issue [#3178884](https://www.drupal.org/i/3178884):
                 Changed Schema Config to follow with [Bootstrap Barrio]
                 theme ~5.0 and remove applied patches
* Issue [#3178907](https://www.drupal.org/i/3178907)
                 by [Mohammed J. Razem](https://www.drupal.org/u/mohammed-j-razem)
                 Styled the Node View mode preview bar
* Issue [#3179357](https://www.drupal.org/i/3179357):
                 Changed extended libraries to follow with the latest
                 Claro admin theme libraries in Drupal Core 9
* Issue [#3180091](https://www.drupal.org/i/3180091):
                 Changed Form Display configs for all paragraph types to
                 update Field Group configs to work with Drupal 9
* Issue [#3180646](https://www.drupal.org/i/3180646):
                 Enhanced the logic on the creation of contents with layout
                 library selected layout. the system should not redirect
                 to change the layout
* Issue [#3179613](https://www.drupal.org/i/3179613):
                 Switched [CKEditor Media Embed plugin] module back to
                 1.x-dev by drupal/ckeditor_media_embed to work on
                 the 9.0.x branch
* Issue [#3180829](https://www.drupal.org/i/3180829):
                 Changed Varbase Bootstrap Paragraphs to only support
                 Bootstrap 4 classes and droped legacy support for Bootstrap 3
* Issue [#3180712](https://www.drupal.org/i/3180712):
                 Changed the Varbase Bootstrap Elements in Varbase Styleguide
                 to only support Bootstrap 4 elements and drop legacy
                 support for Bootstrap 3

### Updates since Varbase 9.0.0-alpha1:
* Issue [#3176626](https://www.drupal.org/i/3176626):
                 Updated [Media entity Instagram] from ~2.0 to ~3.0
* Issue [#3179226](https://www.drupal.org/i/3179226):
                 Updated [Style Guide] module from 1.x-dev to ~2.0 and
                 removed applied patches to support Drupal 9 and
                 the 9.0.x branch
* Issue [#3180062](https://www.drupal.org/i/3180062):
                 Updated [CKEditor Media Embed plugin] module
                 from 1.x-dev to 1.10 ( ~1.0 )
* Issue [#3180107](https://www.drupal.org/i/3180107):
                 Updated [Charts] module from ~3.0 to ~5.0
* Issue [#3180114](https://www.drupal.org/i/3180114):
                 Updated [Checklist API] module from ~1.0 to ~2.0

### Fixes since Varbase 9.0.0-alpha1:
* Issue [#3179426](https://www.drupal.org/i/3179426):
                 Fixed status of Varbase update instructions to 100% on
                 install and on an installation for optional
                 Varbase components or in a Varbase Sub Profile
* Issue [#3177937](https://www.drupal.org/i/3177937)
                 by [Firass Ziedan](https://www.drupal.org/u/firass-ziedan)
                , [RajabNatshah](https://www.drupal.org/u/rajabnatshah)
                : Fixed Fatal error in layout page after deleting
                 the media from the media library
* Issue [#3179098](https://www.drupal.org/i/3179098)
                 by [yasmeensalah](https://www.drupal.org/u/yasmeensalah)
                : Fixed Drupal 9 compatibility issues for
                 [Varbase Styleguide] and added Drupal 9 compatibility
                 Fix for the [styleguide] module
* Issue [#3177432](https://www.drupal.org/i/3177432)
                 by [Joachim Namyslo](https://www.drupal.org/u/joachim-namyslo)
                : Fixed Drupal 9 compatibility for [Varbase Content Planner]
                 by adding the patch for the Content Planner sub modules
                 to work with Drupal 9
* Issue [#3179173](https://www.drupal.org/i/3179173)
                 by [yasmeensalah](https://www.drupal.org/u/yasmeensalah)
                : Fixed the RTL style for Content Calendar by adding
                 a patch for the [Content Planner] module
* Issue [#3179217](https://www.drupal.org/i/3179217):
                 Fixed an Error on install by changing the default settings
                 for Vartheme BS4 and VARTHEME_BS4_SUBTHEME to follow with
                 the latest Barrio Schema Config
* Issue [#3180121](https://www.drupal.org/i/3180121):
                 Fixed Render #pre_render callbacks for Field group with
                 Paragraphs asymmetric translation widgets and
                 Field Group module
* Issue [#3177725](https://www.drupal.org/i/3177725)
                 by [Joachim Namyslo](https://www.drupal.org/u/joachim-namyslo)
                , [yasmeensalah](https://www.drupal.org/u/yasmeensalah)
                , [akalam](https://www.drupal.org/u/akalam)
                , [RajabNatshah](https://www.drupal.org/u/rajabnatshah)
                 Fixed Drush 10.x works just partly currently
* Issue [#3181298](https://www.drupal.org/i/3181298):
                 Fixed [Menu Position] issue when adding a new rule on
                 Drupal 9 fails with Schema Incomplete Exception

# ------------------------------------------------------------------------------

# 9.0.0-alpha1

### Highlighted important changes since Varbase 8.x-8.7:
* Issue [#3122672](https://www.drupal.org/i/3122672):
                 Started a 9.0.x branch for Varbase and Varbase Project
                 to integrate with Drupal 9
* Issue [#3145606](https://www.drupal.org/i/3145606):
                 Upgraded [Drupal core] from ~8 to ^9 on the 9.0.x branch
* Issue [#3176656](https://www.drupal.org/i/3176656):
                 Updated the patch to allow profiles to define
                 a base/parent profile for Drupal 9

## No Update/Upgrade path at this time yet. An update path will be managed
## when the stable Varbase 9.0.0 goes out.

### Added since Varbase 8.x-8.7:
* Issue [#3172619](https://www.drupal.org/i/3172619):
                 Started a 9.0.x branch for Varbase Social Single Sign-On
                 to work with Varbase ~9.0 and Drupal ~9.0
* Issue [#3172504](https://www.drupal.org/i/3172504):
                 Started a 9.0.x branch for Varbase API to work with
                 Varbase ~9.0 and Drupal ~9.0
* Issue [#3173229](https://www.drupal.org/i/3173229):
                 Started a 9.0.x branch for Varbase Bootstrap Paragraphs to
                 work with Varbase ~9.0 and Drupal ~9.0
* Issue [#3173238](https://www.drupal.org/i/3173238):
                 Started a 9.0.x branch for Varbase Carousels to work with
                 Varbase ~9.0 and Drupal ~9.0
* Issue [#3173264](https://www.drupal.org/i/3173264):
                 Started a 9.0.x branch for Varbase Editor to work with
                 Varbase ~9.0 and Drupal ~9.0
* Issue [#3173390](https://www.drupal.org/i/3173390):
                 Started a 9.0.x branch for Varbase Email to work with
                 Varbase ~9.0 and Drupal ~9.0
* Issue [#3173409](https://www.drupal.org/i/3173409):
                 Started a 9.0.x branch for Varbase FAQs to work with
                 Varbase ~9.0 and Drupal ~9.0
* Issue [#3173425](https://www.drupal.org/i/3173425):
                 Started a 9.0.x branch for Varbase Landing Page (Paragraphs)
                 to work with Varbase ~9.0 and Drupal ~9.0
* Issue [#3174419](https://www.drupal.org/i/3174419):
                 Started a 9.0.x branch for Varbase Layout Builder to work with
                 Varbase ~9.0 and Drupal ~9.0
* Issue [#3175014](https://www.drupal.org/i/3175014):
                 Started a 9.0.x branch for Varbase Media to work with
                 Varbase ~9.0 and Drupal ~9.0
* Issue [#3175276](https://www.drupal.org/i/3175276):
                 Started a 9.0.x branch for Varbase Media Header to work with
                 Varbase ~9.0 and Drupal ~9.0
* Issue [#3175414](https://www.drupal.org/i/3175414):
                 Started a 9.0.x branch for Varbase Reports to work with
                 Varbase ~9.0 and Drupal ~9.0
* Issue [#3175427](https://www.drupal.org/i/3175427):
                 Started a 9.0.x branch for Varbase Search to work with
                 Varbase ~9.0 and Drupal ~9.0
* Issue [#3175444](https://www.drupal.org/i/3175444):
                 Started a 9.0.x branch for Varbase SEO to work with
                 Varbase ~9.0 and Drupal ~9.0
* Issue [#3175481](https://www.drupal.org/i/3175481):
                 Started a 9.0.x branch for Varbase Styleguide to work
                 with Varbase ~9.0 and Drupal ~9.0

### Changed since Varbase 8.x-8.7:
* Issue [#3175819](https://www.drupal.org/i/3175819):
                 Switched [Layout Builder UX] module to 1.x-dev in
                 the composer to cover Drupal 9 compatibility on
                 the 9.0.x branch
* Issue [#3176598](https://www.drupal.org/i/3176598):
                 Switched [CKEditor Media Embed plugin] from
                 drupal/ckeditor_media_embed to a forked project
                 vardot/ckeditor_media_embed ~2.0 to work on the 9.0.x branch
* Issue [#3145726](https://www.drupal.org/i/3145726):
                 Removed [Varbase Theme (Bootstrap 3 - LESS)] theme from
                 the 9.0.x branch
* Issue [#3145720](https://www.drupal.org/i/3145720):
                 Removed [Vartheme Admin] theme from the 9.0.x branch
* Issue [#3145709](https://www.drupal.org/i/3145709):
                 Removed [Adminimal Admin Toolbar] module from the 9.0.x branch
* Issue [#3170653](https://www.drupal.org/i/3170653):
                 Removed [Libraries API] module as much of its functionality
                 had been moved to Drupal 9 core
* Issue [#3168664](https://www.drupal.org/i/3168664):
                 Removed [Libraries UI] module from [Varbase Development]
                 dev tools module on the 9.0.x Drupal 9 branch
* Issue [#3143148](https://www.drupal.org/i/3143148):
                 Removed [Smtp] module from the 9.0.x branch
* Issue [#3174423](https://www.drupal.org/i/3174423):
                 Removed [Media Library Theme Reset] module from
                 the 9.0.x branch
* Issue [#3145800](https://www.drupal.org/i/3145800):
                 Removed [Masonry API] module and its related configuration
                 from the 9.0.x branch
* Issue [#3145737](https://www.drupal.org/i/3145737):
                 Removed [Color Field] module from the 9.0.x branch
* Issue [#3145744](https://www.drupal.org/i/3145744):
                 Removed [Features] module from the 9.0.x branch
* Issue [#3145752](https://www.drupal.org/i/3145752):
                 Removed [Localization client] module from the 9.0.x branch
* Issue [#3176580](https://www.drupal.org/i/3176580):
                 [TEMP] Removed [Tour Builder] module from the composer
                 on the 9.0.x branch
* Issue [#3175839](https://www.drupal.org/i/3175839):
                 [TEMP] Removed [Webform Analysis] module from the composer
                 on the 9.0.x branch
* Issue [#3168674](https://www.drupal.org/i/3168674):
                 [TEMP] Removed [Mail Editor] module from [Varbase Core]
                 on the 9.0.x Drupal 9 branch

### Updates since Varbase 8.x-8.7:
* Issue [#3145625](https://www.drupal.org/i/3145625):
                 Upgraded [Varbase Core] from ~8 to ^9 on the 9.0.x branch for Varbase Blog
* Issue [#3173235](https://www.drupal.org/i/3173235):
                 Upgraded [Varbase Media and Varbase SEO] from ~8 to ^9 on the 9.0.x branch for Varbase Blog after starting new 9.0.x branches
* Issue [#3170658](https://www.drupal.org/i/3170658):
                 Upgraded [Bootstrap Barrio] base theme from ~4.0 to ~5.0
* Issue [#3160150](https://www.drupal.org/i/3160150):
                 Updated [Default Content] module from ~1.0 to ~2.0
* Issue [#3149567](https://www.drupal.org/i/3149567):
                 Updated [Tour UI] module to latest on the 9.0.x branch
* Issue [#3168494](https://www.drupal.org/i/3168494):
                 Updated [Fast 404] module to latest on the 9.0.x branch
* Issue [#3168739](https://www.drupal.org/i/3168739):
                 Updated [Webform] module from ~5.0 to ~6.0
* Issue [#3168753](https://www.drupal.org/i/3168753):
                 Updated [Webform] module from ~5.0 to ~6.0 in the
                 Varbase Bootstrap Paragraphs module
* Issue [#3150934](https://www.drupal.org/i/3150934):
                 Updated [Linkit] module from ~4.0 to ~5.0
* Issue [#3168693](https://www.drupal.org/i/3168693):
                 Updated [Taxonomy access fix] module from ~2.0 to ~3.0
* Issue [#3145760](https://www.drupal.org/i/3145760):
                 Updated [Taxonomy menu] module to latest and removed
                 committed patch
* Issue [#3145784](https://www.drupal.org/i/3145784):
                 Updated [Flood Unblock] module from ~1.0 to ~3.0
* Issue [#3149564](https://www.drupal.org/i/3149564):
                 Updated [Security Review] module to latest on the 9.0.x branch
* Issue [#3151899](https://www.drupal.org/i/3151899):
                 Updated [Update helper] module from 1.3 to 2.0.0
* Issue [#3150934](https://www.drupal.org/i/3150934):
                 Updated [Linkit] module from ~4.0 to ~5.0

### Fixes since Varbase 8.x-8.7:
* Issue [#3175792](https://www.drupal.org/i/3175792):
                 Fixed deprecated function getCurrentUserId replaced by
                 getDefaultEntityOwner for all content types and media types
* Issue [#3175810](https://www.drupal.org/i/3175810):
                 Fixed deprecated function getCurrentUserId replaced by
                 getDefaultEntityOwner in
                 core.base_field_override.node.varbase_heroslider_media.uid
                 config for Drupal 9 compatibility
* Issue [#3175756](https://www.drupal.org/i/3175756):
                 Fixed deprecated function getCurrentUserId replaced by
                 getDefaultEntityOwner in
                 core.base_field_override.node.landing_page_lb.uid config
* Issue [#3175817](https://www.drupal.org/i/3175817):
                 Fixed deprecated function getCurrentUserId replaced by
                 getDefaultEntityOwner in
                 core.base_field_override.node.landing_page.uid
                 config for Drupal 9 compatibility

--------------------------------------------------------------------------------

# 8.8.8

### Highlighted important changes since Varbase 8.x-8.7:
* Issue [#3180950](https://www.drupal.org/i/3180950):
                 Allowed Varbase to work with Composer ~2.0

### Added since Varbase 8.x-8.7:
* Issue [#3179010](https://www.drupal.org/i/3179010):
                 Added support for dropzonejs widget with Media Library in core
* Issue [#3180926](https://www.drupal.org/i/3180926)
                 by [yasmeensalah](https://www.drupal.org/u/yasmeensalah)
                : Added the ability to hide breadcrumbs from the Media Header

### Changed since Varbase 8.x-8.7:
* Issue [#3178907](https://www.drupal.org/i/3178907)
                 by Mohammed J. Razem
                : Styled the Node View mode preview bar
* Issue [#3178799](https://www.drupal.org/i/3178799)
                : Styled Content Moderation control. At the Draft view to look the same as moderation 
                status in all locations
* Issue [#3178836](https://www.drupal.org/i/3178836):
                 Changed the style of navigation pager, and mini pager display.
                 To flex and justify content pager elements to the center
* Issue [#3178826](https://www.drupal.org/i/3178826)
                : Removed padding for unpublished nodes in editing mode or under the View existing Draft
* Issue [#3180646](https://www.drupal.org/i/3180646)
                : Enhanced the logic on the creation of contents with layout library selected layout.
                 the system should not redirect to change the layout
* Issue [#3185416](https://www.drupal.org/i/3185416):
                 Removed container-fluid CSS class from container_attributes and only use when needed
* Issue [#3179357](https://www.drupal.org/i/3179357):
                 Changed extended libraries to follow with the latest Claro admin theme libraries in Drupal Core
* Issue [#3178884](https://www.drupal.org/i/3178884):
                 Changed Schema Config to follow with Bootstrap Barrio theme ~5.0 and remove applied patches
* Issue [#3186298](https://www.drupal.org/i/3186298):
                 Changed Vartheme Claro admin them on Drupal core require in composer from ~9.0.0 to ~9.0
* Issue [#3186302](https://www.drupal.org/i/3186302):
                 Changed Varbase Workflow module on Drupal core require in composer from ~9.0.0 to ~9.0
* Issue [#3185544](https://www.drupal.org/i/3185544):
                 Allowed Varbase Core module to work with Composer ~2.0
* Issue [#3185580](https://www.drupal.org/i/3185580):
                 Allowed Varbase Media module to work with Composer ~2.0
* Issue [#3185550](https://www.drupal.org/i/3185550):
                 Allowed Varbase Editor module to work with Composer ~2.0
* Issue [#3185633](https://www.drupal.org/i/3185633):
                 Allowed Varbase SEO module to work with Composer ~2.0
* Issue [#3185641](https://www.drupal.org/i/3185641):
                 Allowed Varbase Total Control Dashboard module to work with Composer ~2.0
* Issue [#3185512](https://www.drupal.org/i/3185512):
                 Allowed Varbase API module to work with Composer ~2.0
* Issue [#3185521](https://www.drupal.org/i/3185521):
                 Allowed Varbase Auth module to work with Composer ~2.0
* Issue [#3185527](https://www.drupal.org/i/3185527):
                 Allowed Varbase Blog module to work with Composer ~2.0
* Issue [#3185529](https://www.drupal.org/i/3185529):
                 Allowed Varbase Bootstrap Paragraphs module to work with Composer ~2.0
* Issue [#3185536](https://www.drupal.org/i/3185536):
                 Allowed Varbase Carousels module to work with Composer ~2.0
* Issue [#3185555](https://www.drupal.org/i/3185555):
                 Allowed Varbase Email module to work with Composer ~2.0
* Issue [#3185563](https://www.drupal.org/i/3185563):
                 Allowed Varbase FAQs module to work with Composer ~2.0
* Issue [#3185570](https://www.drupal.org/i/3185570):
                 Allowed Varbase Media Hero Slider module to work with Composer ~2.0
* Issue [#3185609](https://www.drupal.org/i/3185609):
                 Allowed Varbase Reports module to work with Composer ~2.0
* Issue [#3185621](https://www.drupal.org/i/3185621):
                 Allowed Varbase Search module to work with Composer ~2.0
* Issue [#3185635](https://www.drupal.org/i/3185635):
                 Allowed Varbase Styleguide module to work with Composer ~2.0
* Issue [#3185650](https://www.drupal.org/i/3185650):
                 Allowed Varbase Workflow module to work with Composer ~2.0
* Issue [#3185679](https://www.drupal.org/i/3185679):
                 Allowed Vartheme BS4 theme to work with Composer ~2.0
* Issue [#3185763](https://www.drupal.org/i/3185763):
                 Allowed Varbase Theme (Bootstrap 3 - LESS) theme to work with Composer ~2.0
* Issue [#3185765](https://www.drupal.org/i/3185765):
                 Allowed Vartheme Admin theme to work with Composer ~2.0
* Issue [#3185574](https://www.drupal.org/i/3185574):
                 Allowed Varbase Landing Page (Paragraphs) module to work with Composer ~2.0
* Issue [#3185605](https://www.drupal.org/i/3185605):
                 Allowed Varbase Media Header module to work with Composer ~2.0
* Issue [#3185578](https://www.drupal.org/i/3185578):
                 Allowed Varbase Layout Builder module to work with Composer ~2.0

### Updates since Varbase 8.x-8.7:
* Issue [#3178141](https://www.drupal.org/i/3178141):
                 Updated Bootstrap library from 4.5.2 to 4.5.3
* Issue [#3186048](https://www.drupal.org/i/3186048):
                 Updated Rabbit Hole module from 1.0-beta7 to 1.0-beta8 ( ~1.0 ) and removed
                 committed patches
* Issue [#3184180](https://www.drupal.org/i/3184180):
                 Updated bower-asset/d3 library from ~3.0 to ~5.0
* Issue [#3177618](https://www.drupal.org/i/3177618):
                 Updated yarn dependencies to match with Drupal 9
* Issue [#3179226](https://www.drupal.org/i/3179226):
                 Updated Style Guide module from 1.x-dev to ~2.0 and removed applied patches
* Issue [#3179226](https://www.drupal.org/i/3179226):
                 Updated Media entity Instagram module from ~2.0 to ~3.0
* Issue [#3176795](https://www.drupal.org/i/3176795):
                 Updated the patch for Page Manager on the fix of variants take entity label,
                 not the variant title

### Fixes since Varbase 8.x-8.7:
* Issue [#3179426](https://www.drupal.org/i/3179426):
                 Fixed status of Varbase update instructions to 100% on install and on an installation
                 for optional Varbase components or in a Varbase Sub Profile
* Issue [#3185637](https://www.drupal.org/i/3185637)
                by [abedajam](https://www.drupal.org/u/abedajam)
                : Fixed Update Helper throws an 
                exception after updating to Varbase 8.8.x
* Issue [#3186010](https://www.drupal.org/i/3186010): Fixed Value assigned to "section" is not a
                 valid section
* Issue [#3109712](https://www.drupal.org/i/3109712)
                 by [das-peter](https://www.drupal.org/u/das-peter)
                , [Joachim Namyslo](https://www.drupal.org/u/joachim-namyslo)
                , [sameer](https://www.drupal.org/u/sameer)
                : Fixed Fatal Error from 8.7.11 to 8.8.1 by with plain array as returned by
                 composer getConfig getRepositories #35
* Issue [#3184211](https://www.drupal.org/i/3184211)
                 by [arawashdeh](https://www.drupal.org/u/arawashdeh)
                : Fixed the path typo for RTL Tajawal font
* Issue [#3126444](https://www.drupal.org/i/3126444)
                 by [Andrew Answer](https://www.drupal.org/u/andrew-answer)
                , [AHBJCB](https://www.drupal.org/u/ahbjcb)
                , [RajabNatshah](https://www.drupal.org/u/rajabnatshah)
                : Fixed Ajax failure: Drupal.ajax is undefined
* Issue [#3175989](https://www.drupal.org/i/3175989)
                 by [Andrew Answer](https://www.drupal.org/u/andrew-answer)
                : Fixed not visible Media Gallery
* Issue [#3183988](https://www.drupal.org/i/3183988)
                 by [abedajam](https://www.drupal.org/u/abedajam)
                : Fixed Claro admin theme style of gray fieldset on Google Chrome 87
* Issue [#3179426](https://www.drupal.org/i/3179426):
                 Fixed status of Varbase update instructions to 100% on install and
                 on an installation for optional Varbase components or in a Varbase Sub Profile
* Issue [#3179217](https://www.drupal.org/i/3179217):
                 Fixed an Error on install by changing the default settings for Vartheme BS4 and
                 VARTHEME_BS4_SUBTHEME to follow with the latest Barrio Schema Config
* Issue [#3177432](https://www.drupal.org/i/3177432)
                 by [Joachim Namyslo](https://www.drupal.org/u/joachim-namyslo)
                : Fixed Drupal 9 compatibility for Varbase Content Planner 
                module by adding the patch
                 for the Content Planner sub modules to work with Drupal 9
* Issue [#3179173](https://www.drupal.org/i/3179173)
                 by [yasmeensalah](https://www.drupal.org/u/yasmeensalah)
                : Fixed the RTL style for Content Calendar by adding a patch
                 for the Content Planner module
* Issue [#3177937](https://www.drupal.org/i/3177937)
                 by Firass Ziedan
                : Fixed Fatal error in layout page after deleting the 
                media from media library
* Issue [#3176813](https://www.drupal.org/i/3176813)
                : Fixed Chaos Tool Suite (ctools) issue by adding the patch
                 for Entity BundleCondition Plugin does not work in all situations

--------------------------------------------------------------------------------

# 8.8.7

### Highlighted important changes since Varbase 8.x-8.6:
* Issue [#3169416](https://www.drupal.org/i/3169416):
                 Themed Layout Builder Modal and Media Library to look like
                 Claro admin theme
* Issue [#3170980](https://www.drupal.org/i/3170980):
                 Added Layout Builder Component Attributes module and support
                 for Layout Builder Component Attributes extension integration
                 with Layout Builder UX
* Issue [#3151514](https://www.drupal.org/i/3151514):
                 Styled the Moderation state control at the layout editing page
* Issue [#3170682](https://www.drupal.org/i/3170682):
                 Converted to use REM and EM instead of PX
* Issue [#3170658](https://www.drupal.org/i/3170658):
                 Upgraded [Bootstrap Barrio] base theme from ~4.0 to ~5.0
* Issue [#3171962](https://www.drupal.org/i/3171962):
                 Updated RFS from ~8.0 to ~9.0 for Vartheme BS4
                 and VARTHEME_BS4_SUBTHEME


### Added since Varbase 8.x-8.6:
* Issue [#3170687](https://www.drupal.org/i/3170687):
                 Added class "mt-n5" to the Media Hero Slider section
                 in homepage Layout Builder
* Issue [#3167692](https://www.drupal.org/i/3167692)
                 by [josebc](https://www.drupal.org/u/josebc)
                : Added [Stage File Proxy] module as a dependency
* Issue [#3171126](https://www.drupal.org/i/3171126)
                 by [josebc](https://www.drupal.org/u/josebc)
                : Added yarn script commands for Drupal coding standard and
                 Drupal Practice for Vartheme BS4 and VARTHEME_BS4_SUBTHEME
* Issue [#3170255](https://www.drupal.org/i/3170255)
                 by [josebc](https://www.drupal.org/u/josebc)
                : Change .csscomb.json for better compliance with
                 core eslint standards for Vartheme BS4
* Issue [#3171951](https://www.drupal.org/i/3171951)
                 by [abu-zakham](https://www.drupal.org/u/abu-zakham)
                : Added missing sort-order in .csscomb.jsonfor Vartheme BS4
* Issue [#3172415](https://www.drupal.org/i/3172415):
                 Added yarn script commands for Drupal coding standard and
                 Drupal Practice for Vartheme Claro
* Issue [#3176371](https://www.drupal.org/i/3176371):
                 Added yarn script commands for Drupal coding standard and
                 Drupal Practice for Varbase Installation profile
* Issue [#3173247](https://www.drupal.org/i/3173247):
                 Added yarn script commands for Drupal coding standard and
                 Drupal Practice for Varbase Core
* Issue [#3174431](https://www.drupal.org/i/3174431):
                 Added yarn script commands for Drupal coding standard and
                 Drupal Practice for Varbase Media
* Issue [#3173258](https://www.drupal.org/i/3173258):
                 Added yarn script commands for Drupal coding standard and
                 Drupal Practice for Varbase Editor
* Issue [#3172649](https://www.drupal.org/i/3172649):
                 Added yarn script commands for Drupal coding standard and
                 Drupal Practice for Varbase Blog
* Issue [#3173443](https://www.drupal.org/i/3173443):
                 Added yarn script commands for Drupal coding standard and
                 Drupal Practice for Varbase Layout Builder
* Issue [#3171132](https://www.drupal.org/i/3171132):
                 Added yarn script commands for Drupal coding standard and
                 Drupal Practice for Varbase Media Hero Slider
* Issue [#3175492](https://www.drupal.org/i/3175492):
                 Added yarn script commands for Drupal coding standard and
                 Drupal Practice for Varbase Total Control Dashboard
* Issue [#3173236](https://www.drupal.org/i/3173236):
                 Added yarn script commands for Drupal coding standard and
                 Drupal Practice for Varbase Carousels
* Issue [#3172875](https://www.drupal.org/i/3172875):
                 Added yarn script commands for Drupal coding standard and
                 Drupal Practice for Varbase Bootstrap Paragraphs
* Issue [#3173376](https://www.drupal.org/i/3173394):
                 Added yarn script commands for Drupal coding standard and
                 Drupal Practice for Varbase Email
* Issue [#3173394](https://www.drupal.org/i/3173394):
                 Added yarn script commands for Drupal coding standard and
                 Drupal Practice for Varbase FAQs
* Issue [#3173424](https://www.drupal.org/i/3173424):
                 Added yarn script commands for Drupal coding standard and
                 Drupal Practice for Varbase Landing Page (Paragraphs)
* Issue [#3172491](https://www.drupal.org/i/3172491):
                 Added yarn script commands for Drupal coding standard and
                 Drupal Practice for Varbase API
* Issue [#3175093](https://www.drupal.org/i/3175093):
                 Added yarn script commands for Drupal coding standard and
                 Drupal Practice for Varbase Media Header
* Issue [#3172609](https://www.drupal.org/i/3172609):
                 Added yarn script commands for Drupal coding standard and
                 Drupal Practice for Varbase Social Single Sign-On
* Issue [#3175409](https://www.drupal.org/i/3175409):
                 Added yarn script commands for Drupal coding standard and
                 Drupal Practice for Varbase Reports
* Issue [#3175421](https://www.drupal.org/i/3175421):
                 Added yarn script commands for Drupal coding standard and
                 Drupal Practice for Varbase Search
* Issue [#3175432](https://www.drupal.org/i/3175432):
                 Added yarn script commands for Drupal coding standard and
                 Drupal Practice for Varbase SEO
* Issue [#3175461](https://www.drupal.org/i/3175461):
                 Added yarn script commands for Drupal coding standard and
                 Drupal Practice for Varbase Styleguide
* Issue [#3175526](https://www.drupal.org/i/3175526):
                 Added yarn script commands for Drupal coding standard
                 and Drupal Practice for Varbase Workflow
* Issue [#3175554](https://www.drupal.org/i/3175554):
                 Added yarn script commands for Drupal coding standard and
                 Drupal Practice for View Modes Inventory ( VMI )
* Issue [#3173731](https://www.drupal.org/i/3173731):
                 Added the 3173730-2.patch for [Layout Builder UX] module
                 to Remove the change of default for auto-submit
                 controller on the existing route to have a better
                 behavior when adding a new section
* Issue [#3170788](https://www.drupal.org/i/3170788):
                 Added a patch to fix an issue for Paragraphs Features
                 module after the update to 1.10

### Changed since Varbase 8.x-8.6:
* Issue [#3167441](https://www.drupal.org/i/3167441):
                 Changed permission to Access admin audit trail for the Editor,
                 Content Admin, and Site Admin user roles
* Issue [#3167442](https://www.drupal.org/i/3167442):
                 Changed permission to Access admin audit trail for
                 the SEO Admin user role
* Issue [#3170153](https://www.drupal.org/i/3170153):
                 Changed default Help region settings to have a Clean
                 wrapper for Help region and remove the row class
* Issue [#3170890](https://www.drupal.org/i/3170890):
                 Changed [Welcome to Varbase] block format: full_html
                 to format: code_html to show SVG Images
* Issue [#3170170](https://www.drupal.org/i/3170170)
                 by [mhawwari](https://www.drupal.org/u/mhawwari)
                : Disable the checkbox to delete the referenced
                 entity from entityqueues
* Issue [#3176100](https://www.drupal.org/i/3176100)
                 by [qusai taha](https://www.drupal.org/u/qusai-taha)
                : Change to have a better logic to check if the remote
                 video ended or not
* Issue [#3170836](https://www.drupal.org/i/3170836):
                 Changed deprecated path.alias_storage to revisionable entities
* Issue [#3171094](https://www.drupal.org/i/3171094):
                 Changed the view empty style values for Media Hero Slider
* Issue [#3170678](https://www.drupal.org/i/3170678):
                 Enabled [JSON API Defaults] module to have extra functionality
* Issue [#3171299](https://www.drupal.org/i/3171299)
                 by [abu-zakham](https://www.drupal.org/u/abu-zakham)
                , [RajabNatshah](https://www.drupal.org/u/rajabnatshah)
                : Override Entity type / Group Mapping will be reflected
                 on Metatags General form
* Issue [#3172883](https://www.drupal.org/i/3172883)
                 by [akalam](https://www.drupal.org/u/akalam)
                , [RajabNatshah](https://www.drupal.org/u/rajabnatshah)
                : Have a better logic for merging layout builder style options
                 instead of overriding them
* Issue [#3170149](https://www.drupal.org/i/3170149):
                 Removed strict ui-dialog button style support for Bartik
                 and Saven. So that Vartheme BS4 work better with
                 Claro admin theme
* Issue [#3167618](https://www.drupal.org/i/3167618):
                 Remove [Events Log Track] module from the composer for
                 step 2 to switch to [Admin Audit Trail] maintained module
* Issue [#3176240](https://www.drupal.org/i/3176240):
                 Changed default content for the Homepage to use the Bootstrap
                 Layout layout_id: bs_1col for the section content
                 moderation control, not Drupal core layout layout_id:
                 layout_onecol
* Issue [#3176242](https://www.drupal.org/i/3176242):
                 Changed the default layout for Varbase Landing page
                 (Layout Builder) to use Bootstrap Layout layout_id: bs_1col
                 for the section content moderation control, not Drupal
                 core layout layout_id: layout_onecol

### Updates since Varbase 8.x-8.6:
* Issue [#3172876](https://www.drupal.org/i/3172876):
                 Updated RFS from ~8.0 to ~9.0 for Varbase Bootstrap Paragraphs
* Issue [#3171963](https://www.drupal.org/i/3171963):
                 Updated RFS from ~8.0 to ~9.0 for Varbase Media Hero Slider
* Issue [#3175123](https://www.drupal.org/i/3175123):
                 Updated RFS from ~8.0 to ~9.0 for Varbase Media Header
* Issue [#3173395](https://www.drupal.org/i/3173395):
                 Updated RFS from ~8.0 to ~9.0 for Varbase FAQs
* Issue [#3171504](https://www.drupal.org/i/3171504):
                 Updated [Paragraphs Features] module from 1.10 to 1.11
                 ( ~1.0 ) and remove applied patches
* Issue [#3170826](https://www.drupal.org/i/3170826):
                 Upgraded [Schema.org Metatag] module from ~1.0 to ~2.0
* Issue [#3170830](https://www.drupal.org/i/3170830):
                 Upgraded [Schema.org Metatag] module from ~1.0 to ~2.0 for
                 the [Varbase API] module needed default configs
* Issue [#3168753](https://www.drupal.org/i/3168753):
                 Updated [Webform] module from ~5.0 to ~6.0 in the Varbase
                 Bootstrap Paragraphs module
* Issue [#3168693](https://www.drupal.org/i/3168693):
                 Updated [Taxonomy access fix] module from ~2.0 to ~3.0
* Issue [#3168076](https://www.drupal.org/i/3168076):
                 Updated [Focal Point] module from 1.4 to 1.5 ( ~1.0 ) and
                 removed applied patches
* Issue [#3176226](https://www.drupal.org/i/3176226):
                 Updated [Inline Entity Form] module from 1.0-rc7 to 1.0-rc8

### Fixes since Varbase 8.x-8.6:
* Issue [#3169350](https://www.drupal.org/i/3169350):
                 Fixed media modal does not respond after selecting
                 a background for a section
* Issue [#3175710](https://www.drupal.org/i/3175710):
                 Fixed to make sure that we do have a list of config values
                 in the style options
* Issue [#3171237](https://www.drupal.org/i/3171237)
                 by [akalam](https://www.drupal.org/u/akalam)
                : Fixed deprecated function getCurrentUserId replaced by
                 getDefaultEntityOwner
                 in core.base_field_override.media.*.uid configs for
                 Drupal 9 compatibility
* Issue [#3175792](https://www.drupal.org/i/3175792):
                 Fixed deprecated function getCurrentUserId replaced by
                 getDefaultEntityOwner for all content types and media types
* Issue [#3175810](https://www.drupal.org/i/3175810):
                 Fixed deprecated function getCurrentUserId replaced by
                 getDefaultEntityOwner in
                 core.base_field_override.node.varbase_heroslider_media.uid
                 config for Drupal 9 compatibility
* Issue [#3175817](https://www.drupal.org/i/3175817):
                 Fixed deprecated function getCurrentUserId replaced by
                 getDefaultEntityOwner in
                 core.base_field_override.node.landing_page.uid config
                 for Drupal 9 compatibility
* Issue [#3175756](https://www.drupal.org/i/3175756):
                 Fixed deprecated function getCurrentUserId replaced by 
                getDefaultEntityOwner in
                 core.base_field_override.node.landing_page_lb.uid config
* Issue [#3149234](https://www.drupal.org/i/3149234)
                 by Project Update Bot
                , [akalam](https://www.drupal.org/u/akalam)
                , [RajabNatshah](https://www.drupal.org/u/rajabnatshah)
                : Automated Drupal 9 compatibility fixes for Varbase Media
* Issue [#3090778](https://www.drupal.org/i/3090778)
                 by [RajabNatshah](https://www.drupal.org/u/rajabnatshah)
                , [Odai Atieh](https://www.drupal.org/u/odai-atieh)
                : Fixed background media supports in [Varbase Media Header]
                 for IE 9+, iOS 7-, and Android 4.4
                 (Image, Video, Video, YouTube, Vimeo) Object-fit
* Issue [#3136486](https://www.drupal.org/i/3136486)
                 by alaa abbad
                , [mhawwari](https://www.drupal.org/u/mhawwari)
                : Fixed autoplay not working if the slider has one item
* Issue [#3172235](https://www.drupal.org/i/3172235)
                 by [mhawwari](https://www.drupal.org/u/mhawwari)
                : Fixed First local video is not being called correctly
* Issue [#3174660](https://www.drupal.org/i/3174660)
                by [qusai taha](https://www.drupal.org/u/qusai-taha)
                : Fixed Notice: undefined index ratio in Blazy when try to
                 adding images from Gallery media type in WYSIWYG
* Issue [#3170882](https://www.drupal.org/i/3170882)
                 by [akalam](https://www.drupal.org/u/akalam)
                : Fixed fatal error on media block when media entity
                 is not found
* Issue [#3173547](https://www.drupal.org/i/3173547):
                 Fixed drupal-off-canvas input type text and text area style
* Issue [#3170292](https://www.drupal.org/i/3170292):
                 Fixed the Moderation state control box with a better default
                 style and fix a missing .css in the
                 vartheme_bs4/moderation-state library
* Issue [#3158746](https://www.drupal.org/i/3158746)
                by [Joachim Namyslo](https://www.drupal.org/u/joachim-namyslo)
                : Fixed password policy forced to enter a new password when the
                 role been changed for a user and try to save the profile
* Issue [#3168965](https://www.drupal.org/i/3168965)
                 by [abu-zakham](https://www.drupal.org/u/abu-zakham)
                : Fixed issue of user profile cant be edited because password
                 policy validates even when password unchanged
* Issue [#3168971](https://www.drupal.org/i/3168971)
                 by [mhawwari](https://www.drupal.org/u/mhawwari)
                : Fixed Varbase update helper hook implementations do not
                 check the checklist id issue

--------------------------------------------------------------------------------

# 8.8.6

### Highlighted important changes since Varbase 8.x-8.5:
* Issue [#3159243](https://www.drupal.org/i/3159243):
                  Switched to Homepage node with Layout Builder
* Issue [#3150223](https://www.drupal.org/i/3150223):
                  Added [Varbase Workflow] new module
* Issue [#3151550](https://www.drupal.org/i/3151550):
                  Changed default workflow starter config for Simple
                  and Editorial workflows
* Issue [#3155922](https://www.drupal.org/i/3155922):
                  Changed default entityqueue form display for the
                  [Media Hero Slider] entity queue
* Issue [#3153614](https://www.drupal.org/i/3153614):
                  Implemented a way to offer default config templates using
                  Varbase’s ConfigBit to unify admin experience
* Issue [#3153018](https://www.drupal.org/i/3153018):
                  Added Varbase Landing Page (Layout builder) in the default
                  Varbase components and moved Varbase Landing Page
                  (Paragraphs) to the Extra components installation step
* Issue [#3120212](https://www.drupal.org/i/3120212):
                  Replaced the current embed media template with the
                  Drupal core Media Library Embed media system
* Issue [#3120214](https://www.drupal.org/i/3120214):
                  Replaced the current CKEditor entity browser embed media
                  button with the new Drupal core Media Library Embed
                  media command button
* Issue [#3163433](https://www.drupal.org/i/3163433):
                  Update [Bootstrap 4] library from 4.5.0 to 4.5.1
* Issue [#3163787](https://www.drupal.org/i/3163787):
                  Changed hiding the Local Task block and use the
                  moderation sidebar tasks menu in view page for all content
* Issue [#3163245](https://www.drupal.org/i/3163245):
                  Styled media library grid item in the node secondary
                  region layout

### Added since Varbase 8.x-8.5:
* Issue [#3161550](https://www.drupal.org/i/3161550):
                  Have more options for the Homepage node with Layout Builder
                  to work when Varbase Media Hero slider is enabled or
                  disabled on install
* Issue [#3159255](https://www.drupal.org/i/3159255):
                  Added [Prevent Homepage Deletion] module and enable
                  under [Varbase Admin] module
* Issue [#3159256](https://www.drupal.org/i/3159256):
                  Added permissions for [Prevent Homepage Deletion] module
* Issue [#3151759](https://www.drupal.org/i/3151759):
                  Enabled Simple Workflow for all content types on 
                  new Varbase Installations by Varbase Workflow and update
                 Automated Functional Acceptance Testing
* Issue [#3152475](https://www.drupal.org/i/3152475):
                  Added number of custom permissions in optional configurations
* Issue [#3152119](https://www.drupal.org/i/3152119):
                  Added ( Access metatag plugins report ) custom permission
                 in optional configurations
* Issue [#3157145](https://www.drupal.org/i/3157145):
                  Provided more useful "Moderated content" view in backend
* Issue [#3157225](https://www.drupal.org/i/3157225):
                  Added the patch for [Moderation Sidebar] module to
                  fix RTL styling
* Issue [#3145615](https://www.drupal.org/i/3145615):
                  Added Media library enhancements behavior on the
                  [Insert selected] button, which had no attributes that
                  automated testing could not press on
* Issue [#3151585](https://www.drupal.org/i/3151585):
                  Added an automated content moderation workflow config
                  on creation of new content types
* Issue [#3151784](https://www.drupal.org/i/3151784):
                  Added [OpenAPI for REST] module ( ~2.0 ) after
                  OpenAPI had been updated to ~2.0
* Issue [#3151781](https://www.drupal.org/i/3151781):
                  Added [OpenAPI for JSON:API] module ( ~2.0 ) after
                  OpenAPI had been updated to ~2.0
* Issue [#3151545](https://www.drupal.org/i/3151545):
                  Added "Scheduler content moderation integration" module
                  to support scheduling revisions
* Issue [#3155887](https://www.drupal.org/i/3155887):
                  Have default options on the creation of content types
* Issue [#3156138](https://www.drupal.org/i/3156138):
                  Added patch for [Inline Entity Form] module to allow to
                  hide the Edit button in Complex widget
* Issue [#3156974](https://www.drupal.org/i/3156974):
                  Added a patch for [Rabbit Hole] module to fix the issue
                  of Rabbit Hole bundle settings is not created on content
                  type creation, only on editing content type
* Issue [#3163490](https://www.drupal.org/i/3163490):
                  Added [Media Revisions UI] module ~2.0
* Issue [#3165781](https://www.drupal.org/i/3165781):
                  Added permissions for [Media Revisions UI] module
* Issue [#3165824](https://www.drupal.org/i/3165824):
                  Added permissions for SEO Admins to View all media revisions
* Issue [#3163292](https://www.drupal.org/i/3163292):
                  Have revisionable media entities in Varbase by default
* Issue [#3163581](https://www.drupal.org/i/3163581):
                  Added [Entity Usage] module ~2.0 and default entity
                  usage settings
* Issue [#3161957](https://www.drupal.org/i/3161957):
                  Added [Media Library Edit] module
* Issue [#3153878](https://www.drupal.org/i/3153878):
                  Added field User Picture ( the picture for the user entity )
                  from the Drupal core - Standard profile in [Varbase Core]
                  module
* Issue [#3164228](https://www.drupal.org/i/3164228):
                  Added the [JQuery UI Touch Punch] library which needed
                  for the [Better Exposed Filters] module ~5.0
* Issue [#3166782](https://www.drupal.org/i/3166782):
                  Added the figure-caption Bootstrap 4 CSS class
                  for the filter caption template

### Changed since Varbase 8.x-8.5:
* Issue [#3159562](https://www.drupal.org/i/3159562):
                  Deleted Homepage which was built by Page Manager
* Issue [#3152921](https://www.drupal.org/i/3152921):
                  Changed default permissions for (Authenticated user,
                  Editor, Content Admin, Site Admin) default user roles
* Issue [#3152116](https://www.drupal.org/i/3152116):
                  Changed default permissions for (SEO Admin) user role
* Issue [#3152698](https://www.drupal.org/i/3152698):
                  Switched from [Event Log Track] to [Admin Audit Trail]
                  maintained module
* Issue [#3161691](https://www.drupal.org/i/3161691):
                  Switched from [Events Log Track Workflows] module to
                  [Admin Audit Trail Workflows] module
* Issue [#3152487](https://www.drupal.org/i/3152487):
                  Changed selected actions for Views Bulk Operations (VBO)
                  in Content and People view pages
* Issue [#3152489](https://www.drupal.org/i/3152489):
                  Changed selected actions for Views Bulk Operations (VBO)
                  in Media and Media Library view pages
* Issue [#3163608](https://www.drupal.org/i/3163608):
                  Changed Media Table page view: add a created column and
                  remove sort by and sort order filters
* Issue [#3143570](https://www.drupal.org/i/3143570):
                  Optimized backend speed by providing default config for
                  Metatags on all entities to show only Basic
* Issue [#3151898](https://www.drupal.org/i/3151898):
                  Removed [Slick Media] module dependencies from
                  [Varbase Media] module and replace it with the main
                  module Slick and uninstall
* Issue [#3153481](https://www.drupal.org/i/3153481):
                  Removed [Slick Media] module dependencies from
                  [Varbase Carousels] module and configs
* Issue [#3151674](https://www.drupal.org/i/3151674):
                  Changed [Varbase Workflow] dependencies on install: enable
                  or dependencies: enable of modules in the .info.yml
* Issue [#3151548](https://www.drupal.org/i/3151548):
                  Removed dependency for Varbase Landing module
* Issue [#3151558](https://www.drupal.org/i/3151558):
                  Set the scheduling options published/unpublished to
                  default values
* Issue [#3151557](https://www.drupal.org/i/3151557):
                  Provided different default config for Content Planner to
                  fit with Varbase Workflow
* Issue [#3151549](https://www.drupal.org/i/3151549):
                  Removed contrib [Workflow] module. as the module is using
                  Workflow from Drupal core
* Issue [#3151544](https://www.drupal.org/i/3151544):
                  Updated description of [Varbase Workflow] module
* Issue [#3156093](https://www.drupal.org/i/3156093):
                  Made the overall elements smaller for Varbase admin
* Issue [#3134364](https://www.drupal.org/i/3134364):
                  Enhancements for [Vartheme Claro] on autocomplete deluxe
                  field styles and media library styles
* Issue [#3163706](https://www.drupal.org/i/3163706):
                  Changed [Varbase Layout Builder] Entity Browser media
                  form widget to Drupal core Media Library
* Issue [#3163528](https://www.drupal.org/i/3163528):
                  Changed to Hide the revision information fields without
                  setting the #access to FALSE
* Issue [#3163458](https://www.drupal.org/i/3163458):
                  Change [Varbase Carousels] block type from Entity Browser
                  media form widget to Drupal core Media Library
* Issue [#3153621](https://www.drupal.org/i/3153621):
                  Changed [Varbase Media Header] Entity Browser media form
                  widget to Drupal core Media Library
* Issue [#3163195](https://www.drupal.org/i/3163195):
                  Changed [Varbase Media Hero Slider] Entity Browser media
                  form widget to Drupal core Media Library
* Issue [#3153620](https://www.drupal.org/i/3153620):
                  Changed [Varbase Blog] Entity Browser media form widget
                  to Drupal core Media Library
* Issue [#3163213](https://www.drupal.org/i/3163213):
                  Changed [Varbase Bootstrap Paragraphs] types from
                  Entity Browser media form widget to Drupal core Media Library
* Issue [#3164148](https://www.drupal.org/i/3164148):
                  Changed [Gallery] media type form display from using Entity
                  Browser media form widget to Drupal core Media Library
* Issue [#3165654](https://www.drupal.org/i/3165654):
                  Changed [Varbase Gallery Block] back to use inline entity
                  form simple and entity browser
* Issue [#3159252](https://www.drupal.org/i/3159252):
                  Removed the region "Media Hero Slider" from Vartheme BS4
* Issue [#3159290](https://www.drupal.org/i/3159290):
                  Changed the script generator to create new Vartheme BS4
                  sub theme ( Bootstrap 4 ) SASS
* Issue [#3159295](https://www.drupal.org/i/3159295):
                  Changed ( npm install ) to ( yarn install ) in the Script
                  generator for a new Vartheme BS4 sub theme
* Issue [#3158756](https://www.drupal.org/i/3158756):
                  Changed the Drupal service module installer to install
                  only one module for all list of modules in the install
                  info data
* Issue [#3159078](https://www.drupal.org/i/3159078):
                  Changed the Drupal service module installer for
                  [Varbase Layout Builder] to install only one module
                  for all list of modules in the install info data
* Issue [#3158662](https://www.drupal.org/i/3158662):
                  Changed Automated Functional Acceptance Testing after
                  having a default template for Entityqueue form display
* Issue [#3159108](https://www.drupal.org/i/3159108):
                  Change the name of content type from "Landing page"
                  to "Landing page (Paragraphs)"
* Issue [#3165857](https://www.drupal.org/i/3165857):
                  Enabled Drupal core Seven admin theme on install for a
                  better look on a number of contrib modules

### Updates since Varbase 8.x-8.5:
* Issue [#3145364](https://www.drupal.org/i/3145364):
                  Updated [Drupal core] to be open for any Drupal core 8.x
                  version ( ^8.9 || ~9.0.0 )
* Issue [#3145784](https://www.drupal.org/i/3145784):
                  Updated [Flood Unblock] module from ~1.0 to ~3.0
* Issue [#3149582](https://www.drupal.org/i/3149582):
                  Updated [Bootstrap Layouts] module from 5.1 to 5.2
* Issue [#3149563](https://www.drupal.org/i/3149563):
                  Updated [Autocomplete Deluxe] module from ~1.0 to ~2.0
* Issue [#3152838](https://www.drupal.org/i/3152838):
                  Updated [Entityqueue Form Widget] module from ~1.0 to ~2.0
* Issue [#3153015](https://www.drupal.org/i/3153015):
                  Updated [Devel] module from ~3.0 to ~4.0
* Issue [#3153467](https://www.drupal.org/i/3153467):
                  Updated [reCAPTCHA] module from ~2.0 to ~3.0
* Issue [#3153471](https://www.drupal.org/i/3153471):
                  Updated [Security Kit] module from ~1.0 to ~2.0
* Issue [#3153504](https://www.drupal.org/i/3153504):
                  Updated [Media Library Form API Element] module from ~1.0 to ~2.0
* Issue [#3145344](https://www.drupal.org/i/3145344):
                  Updated [Panels] module from 8.4.4 to 8.4.6 (~4.0)
* Issue [#3152462](https://www.drupal.org/i/3152462):
                  Updated [CKEditor BiDi Buttons] module from ~2.0 to ~3.0
* Issue [#3151892](https://www.drupal.org/i/3151892):
                  Updated [Persistent Login] module from 1.2 to 1.3
* Issue [#3150944](https://www.drupal.org/i/3150944):
                  Updated [OpenAPI] module from ~1.0 to ~2.0
* Issue [#3143157](https://www.drupal.org/i/3143157):
                  Updated [Swift Mailer] module from ( ~1.0 ) to ( ~2.0 )
* Issue [#3150739](https://www.drupal.org/i/3150739):
                  Updated [Fast 404] module from ~1.0 to ~2.0
* Issue [#3150844](https://www.drupal.org/i/3150844):
                  Updated [CSV Serialization] module from ~1.0 to ~2.0
* Issue [#3163835](https://www.drupal.org/i/3163835):
                  Updated [Better Exposed Filters] module from ~4.0 to ~5.0
                  in [Varbase Media] module
* Issue [#3163832](https://www.drupal.org/i/3163832):
                  Updated [Better Exposed Filters] module from ~4.0 to ~5.0
                  in [Varbase Core] module
* Issue [#3164221](https://www.drupal.org/i/3164221):
                  Updated [Better Exposed Filters] module from ~4.0 to ~5.0 
                  in [Varbase Reports] module
* Issue [#3159831](https://www.drupal.org/i/3159831):
                  Updated [Content Planner] from 1.0-beta11 to 1.0-beta12
* Issue [#3160150](https://www.drupal.org/i/3160150):
                  Updated [Default Content] module from ~1.0 to ~2.0
* Issue [#3151899](https://www.drupal.org/i/3151899):
                  Updated [Update helper] module from 1.3 to 2.0.0
* Issue [#3165462](https://www.drupal.org/i/3165462):
                  Updated [Inline Entity Form] module from 1.0-rc6 to 1.0-rc7

### Fixes since Varbase 8.x-8.5:
* Issue [#3152518](https://www.drupal.org/i/3152518):
                  Fixed media library form field default value and cardinality
                  for the Background Media in latest Drupal core Layout
                  Builder and Media defaults
* Issue [#3150648](https://www.drupal.org/i/3150648)
                  by jedgar1mx
                 : Fixed The "n" entity type does not exist issue for
                  Page Manager on the patch for Variants take entity
                  label not the variant title
* Issue [#3152572](https://www.drupal.org/i/3152572):
                  Fixed issues after Entityqueue had changed schema
                  config for [Entityqueue Form Widget] testing config
* Issue [#3152533](https://www.drupal.org/i/3152533):
                  Fixed composer file Entityqueue Form Widget to
                  work with Drupal 9
* Issue [#3151689](https://www.drupal.org/i/3151689):
                  Fixed default none selected (Content moderation
                  workflow) display value when editing content types
* Issue [#3152002](https://www.drupal.org/i/3152002):
                  Fixed unexpected alert in Automated Functional
                  Acceptance Testing to Accept Alerts or Dismiss Alerts
                  Before or After going to the next step
* Issue [#3153635](https://www.drupal.org/i/3153635):
                  Fixed [Coffee] module on issue of Could not
                  load data for internal links
* Issue [#3155903](https://www.drupal.org/i/3155903):
                  Fixed Drupal coding standard and Drupal Practice
                  warnings on yml files
* Issue [#3162103](https://www.drupal.org/i/3162103):
                  Fixed Focal point style of Focal point "Preview"
                  link cover image for a Video
* Issue [#3162227](https://www.drupal.org/i/3162227):
                  Fixed Images preview style when we click on the
                  "preview" link
* Issue [#3161970](https://www.drupal.org/i/3161970):
                  Fixed Focal point behaviors with Media Library
                  and Claro admin theme
* Issue [#3162133](https://www.drupal.org/i/3162133):
                  Fixed issue of opening a modal from a modal closes
                  the original
* Issue [#3157982](https://www.drupal.org/i/3157982):
                  Fixed RFS SCSS library located in Bootstrap 4.5.0 vendor
                  which causing code standard notice for every font-size
                  use in Vartheme BS4 and generated Sub-theme
* Issue [#3152604](https://www.drupal.org/i/3152604):
                  Fixed issues after Entityqueue had changed schema config for
                  [Varbase Media Hero Slider] simple queue
* Issue [#3157689](https://www.drupal.org/i/3157689):
                  Fixed default revision value for [ In review ] state to fals
                 e for the Editorial workflow
* Issue [#3164237](https://www.drupal.org/i/3164237):
                  Fixed Varbase Welcome message not showing up after install
                  compilation after adding and enabling moderation sidebar on
                  the homepage
* Issue [#3164225](https://www.drupal.org/i/3164225)
                  by Firass Ziedan
                 : Fixed not appearing Page Breadcrumb in
                  standard option
* Issue [#3165419](https://www.drupal.org/i/3165419):
                  Fixed Install Failure by Removing the English file with
                  spaces and CAPITAL Letters.pdf and the other
                  RTL - PDF file with other languages

--------------------------------------------------------------------------------

# 8.8.5

### Highlighted important changes since Varbase 8.x-8.4:
* Issue [#3124385](https://www.drupal.org/node/3124385):
                 Added [Vartheme Claro] admin theme and use it as the default
                 installation and administration theme
* Issue [#3137769](https://www.drupal.org/node/3137769):
                 Styled Content title field with bigger font size under Claro.
                 Allocate the length indicator inline and to the edge with the bottom of the title field
* Issue [#3137834](https://www.drupal.org/node/3137834):
                 Updated [Bootstrap 4] library from 4.4.1 to 4.5.0
* Issue [#3139103](https://www.drupal.org/node/3139103):
                 Changed drupal/core-recommended to drupal/core and updated
                 [Drupal core] from 8.8.4 to 8.8.6 ( ~8.8.0 ) and removed committed patches
* Issue [#3127464](https://www.drupal.org/node/3127464):
                 Included a drupal/core requirement for [Varbase] profile
                 compatible with Drupal 9
* Issue [#3128164](https://www.drupal.org/node/3128164):
                 Required all asset libraries in [Varbase] profiles.
                 As they were moved to suggest in Varbase components
* Issue [#3132536](https://www.drupal.org/node/3132536):
                 Switched RTL default font for [Vartheme Claro]
                 admin theme from Droid to Tajawal

### Added since Varbase 8.x-8.4:
* Issue [#3126968](https://www.drupal.org/node/3126968):
                 Initialized [Vartheme Claro] admin theme
* Issue [#3125415](https://www.drupal.org/node/3125415):
                 Added support for [Claro] admin theme for [Varbase Bootstrap
                 Paragraph] admin styling options
* Issue [#3143759](https://www.drupal.org/node/3143759):
                 Added Default CSSLint, ESLint, Stylelint , and Yarn files
                 in Vartheme BS4 and Vartheme Sub-theme
* Issue [#3128227](https://www.drupal.org/node/3128227):
                 Added Automated Testing for the [Varbase Social Single
                 Sign-On] module
* Issue [#3128214](https://www.drupal.org/node/3128214):
                 Added Automated Testing for the [Varbase API] module
* Issue [#3130834](https://www.drupal.org/node/3130834):
                 Added Automated Testing for the [Vartheme Claro] admin theme
* Issue [#3137881](https://www.drupal.org/node/3137881):
                 Added Automated Testing for the [Varbase Theme (Bootstrap 4 
                - SASS)] front-end theme
* Issue [#3072082](https://www.drupal.org/node/3072082):
                 Added Automated Testing for the [Varbase Bootstrap
                 Paragraphs] module
* Issue [#3128213](https://www.drupal.org/node/3128213):
                 Added Automated Testing for the [Varbase Media] module
* Issue [#3130971](https://www.drupal.org/node/3130971)
                 by [Odai Atieh](https://www.drupal.org/u/odai-atieh)
                : Added a missing class for the accordion panel title in
                 the [Varbase Bootstrap Paragraphs] module
* Issue [#3121642](https://www.drupal.org/node/3121642)
                 by Neslee Canil Pinto
                : Added Configure button for [Varbase Layout Builder
                 Settings] in module list page
* Issue [#3127342](https://www.drupal.org/node/3127342):
                 Included a drupal/core requirement for [Varbase Core]
                 compatible with Drupal 9
* Issue [#3127311](https://www.drupal.org/node/3127311):
                 Included a drupal/core requirement for [Varbase API]
                 compatible with Drupal 9
* Issue [#3127310](https://www.drupal.org/node/3127310):
                 Included a drupal/core requirement for [Varbase Media]
                 compatible with Drupal 9
* Issue [#3127312](https://www.drupal.org/node/3127312):
                 Included a drupal/core requirement for [Varbase Editor]
                 compatible with Drupal 9
* Issue [#3127326](https://www.drupal.org/node/3127326):
                 Included a drupal/core requirement for [Varbase Total Control
                 Dashboard] compatible with Drupal 9
* Issue [#3127323](https://www.drupal.org/node/3127323):
                 Included a drupal/core requirement for [Varbase Media
                 Header] compatible with Drupal 9
* Issue [#3127313](https://www.drupal.org/node/3127313):
                 Included a drupal/core requirement for [Varbase Bootstrap
                 Paragraphs] compatible with Drupal 9
* Issue [#3127321](https://www.drupal.org/node/3127321):
                 Included a drupal/core requirement for [Varbase Layout
                 Builder] compatible with Drupal 9
* Issue [#3127335](https://www.drupal.org/node/3127335):
                 Included a drupal/core requirement for [Varbase Theme
                 (Bootstrap 4 - SASS)] compatible with Drupal 9
* Issue [#3127329](https://www.drupal.org/node/3127329):
                 Included a drupal/core requirement for [Varbase Theme
                 (Bootstrap 3 - LESS)] compatible with Drupal 9
* Issue [#3128191](https://www.drupal.org/node/3128191):
                 Included a drupal/core requirement for [Vartheme admin]
                 compatible with Drupal 9
* Issue [#3127315](https://www.drupal.org/node/3127315):
                 Included a drupal/core requirement for [Varbase Landing]
                 compatible with Drupal 9
* Issue [#3127316](https://www.drupal.org/node/3127316):
                 Included a drupal/core requirement for [Varbase Blog
                 (Corporate Blog)] compatible with Drupal 9
* Issue [#3127332](https://www.drupal.org/node/3127332):
                 Included a drupal/core requirement for [Varbase SEO]
                 compatible with Drupal 9
* Issue [#3127317](https://www.drupal.org/node/3127317):
                 Included a drupal/core requirement for [Varbase Media Hero
                 Slider] compatible with Drupal 9
* Issue [#3127333](https://www.drupal.org/node/3127333):
                 Included a drupal/core requirement for [Varbase Social Single
                 Sign-On] compatible with Drupal 9
* Issue [#3127318](https://www.drupal.org/node/3127318):
                 Included a drupal/core requirement for [Varbase Carousels]
                 compatible with Drupal 9
* Issue [#3127334](https://www.drupal.org/node/3127334):
                 Included a drupal/core requirement for [Varbase Styleguide]
                 compatible with Drupal 9
* Issue [#3127319](https://www.drupal.org/node/3127319):
                 Included a drupal/core requirement for [Varbase Email]
                 compatible with Drupal 9
* Issue [#3127320](https://www.drupal.org/node/3127320):
                 Included a drupal/core requirement for [Varbase FAQs]
                 compatible with Drupal 9
* Issue [#3127322](https://www.drupal.org/node/3127322):
                 Included a drupal/core requirement for [Varbase Reports]
                 compatible with Drupal 9
* Issue [#3130848](https://www.drupal.org/node/3130848):
                 Included a drupal/core requirement for [View Modes Inventory
                 - Bootstrap Ready] compatible with Drupal 9

### Changed since Varbase 8.x-8.4:
* Issue [#3125048](https://www.drupal.org/node/3125048):
                 Disabled [Adminimal Admin Toolbar] module in by removing
                 it from [Varbase admin] install module
* Issue [#3138249](https://www.drupal.org/node/3138249):
                 Changed Vartheme BS4 default config settings to follow
                 with changed Bootstrap Barrio schema
* Issue [#3128135](https://www.drupal.org/node/3128135):
                 Moved asset libraries in [Varbase Core] from require to
                 suggest
* Issue [#3128353](https://www.drupal.org/node/3128353):
                 Moved asset libraries in [Varbase API] from require to suggest
* Issue [#3127868](https://www.drupal.org/node/3127868):
                 Moved asset libraries in [Varbase Media] from require
                 to suggest
* Issue [#3128129](https://www.drupal.org/node/3128129):
                 Moved asset libraries in [Varbase Editor] from require
                 to suggest
* Issue [#3128149](https://www.drupal.org/node/3128149):
                 Moved asset libraries in [Varbase Total Control Dashboard]
                 from require to suggest
* Issue [#3124904](https://www.drupal.org/node/3124904):
                 Changed [Panels] module to a static selected version 8.4.4
                 not to fetch and enable 2 new modules for the deprecated
                 JQuery UI libraries
* Issue [#3125023](https://www.drupal.org/node/3125023):
                 Changed Automated Functional Acceptance Testing after a new
                 release for Entityqueue module with change of UI configs
* Issue [#3124849](https://www.drupal.org/node/3124849)
                 by [Joachim Namyslo](https://www.drupal.org/u/joachim-namyslo)
                : Removed the 3118087-67.8_8_x.patch for [Drupal core] 8.8.5
                 as it was committed
* Issue [#3144392](https://www.drupal.org/node/3144392):
                 Changed new Barrio [Use Bootstrap icons] config to not to use
* Issue [#3145037](https://www.drupal.org/node/3145037):
                 Changed Vartheme Claro from 8.1.x to 2.x branch

### Updates since Varbase 8.x-8.4:
* Issue [#3144981](https://www.drupal.org/node/3144981):
                 Updated [Page Manager] module from 8.4.0-beta5 to 8.4.0-beta6
                 so that we are able to create a layout builder variant
                 and updated the patch for variants to take entity label
                 not the title
* Issue [#3128965](https://www.drupal.org/node/3128965):
                 Updated [Security Review] module from 8.1.x-dev to
                 8.1.0-alpha1 ( ~1.0 )
* Issue [#3127785](https://www.drupal.org/node/3127785):
                 Updated [Coffee] module from 8.1.0-beta2 to 8.1.0 ( ~8.1.0 )
                 stable and remove applied patches
* Issue [#3125694](https://www.drupal.org/node/3125694):
                 Updated [Metatag] module to ^1.12 for a strict update
* Issue [#3123567](https://www.drupal.org/node/3123567):
                 Updated [Metatag] module from 8.1.11 to 8.1.12 ( ~1.0 )
                 and removed applied patches
* Issue [#3123567](https://www.drupal.org/node/3123567):
                 Updated [CTools] module from 8.3.2 to 8.3.4 ( ~3.0 )
                 and remove committed patches
* Issue [#3124891](https://www.drupal.org/node/3124891):
                 Updated [Page Manager] module from 8.4.0-beta4 to 8.4.0-beta5
* Issue [#3139479](https://www.drupal.org/node/3139479):
                 Updated [Default Content] module from 8.1.0-alpha8
                 to 8.1.0-alpha9
* Issue [#3143157](https://www.drupal.org/node/3143157):
                 Updated [Swift Mailer] module from ( ~1.0 ) to ( ~2.0 )
* Issue [#3138124](https://www.drupal.org/node/3138124)
                 by mitchellwillocks
                : Updated [External Links] module from 8.1.2 to 8.1.3
                 ( ~1.0 ) along with removal of the committed patch
* Issue [#3144822](https://www.drupal.org/node/3144822):
                 Updated [Paragraphs Previewer] module from 8.1.4 to 8.1.5
* Issue [#3144812](https://www.drupal.org/node/3144812):
                 Updated [Paragraphs] module from 8.1.11 to 8.1.12 and
                 add a patch for Field Group module support broken when
                 we update paragraphs to 8.1.12
* Issue [#3144808](https://www.drupal.org/node/3144808):
                 Updated [Media Library Form API Element] module from
                 8.1.0-alpha7 to 8.x-1.0-beta2 ( ~1.0 ) and removed
                 committed patches
* Issue [#3144802](https://www.drupal.org/node/3144802):
                 Updated [Login Destination] module from ( ~1.0 ) to ( ~2.0 )
* Issue [#3144798](https://www.drupal.org/node/3144798):
                 Updated [Honeypot] from ( ~1.0 ) to ( ~2.0 )
* Issue [#3144681](https://www.drupal.org/node/3144681):
                 Updated [Advanced Text Formatter] from ( ~1.0 ) to ( ~2.0 )
* Issue [#3144735](https://www.drupal.org/node/3144735):
                 Updated [Advanced Text Formatter] from ( ~1.0 ) to ( ~2.0 )
                 in Varbase Landing
* Issue [#3144728](https://www.drupal.org/node/3144728):
                 Updated [Advanced Text Formatter] from ( ~1.0 ) to ( ~2.0 )
                 in Varbase Bootstrap Paragraphs
* Issue [#3144747](https://www.drupal.org/node/3144747):
                 Updated [Advanced Text Formatter] from ( ~1.0 ) to ( ~2.0 )
                 in Varbase FAQs
* Issue [#3144746](https://www.drupal.org/node/3144746):
                 Updated [Advanced Text Formatter] from ( ~1.0 ) to ( ~2.0 )
                 in Varbase Blog (Corporate Blog)
* Issue [#3144743](https://www.drupal.org/node/3144743):
                 Updated [Advanced Text Formatter] from ( ~1.0 ) to ( ~2.0 )
                 in Varbase Media Hero Slider
* Issue [#3134679](https://www.drupal.org/node/3134679):
                 Varbase 8.8.5: Updated [CHANGELOG.md, README.md,
                 drupal-org.make] files and filtered the code for
                 Drupal 8 Coding Standard

### Fixes since Varbase 8.x-8.4:
* Issue [#3122537](https://www.drupal.org/node/3122537)
                 by yasmeensalah
                , [RajabNatshah](https://www.drupal.org/u/rajabnatshah)
                , Mohammed J. Razem
                : Fixed CKEditor text-fields issue of not clickable texts due
                 to interaction with core/drupal.dialog in the [Varbase
                 Layout Builder] module
* Issue [#3125800](https://www.drupal.org/node/3125800):
                 Fixed [Layout Builder UX] position of alert message over
                 the layout editor to manage sections
* Issue [#3126331](https://www.drupal.org/node/3126331)
                 by [RajabNatshah](https://www.drupal.org/u/rajabnatshah)
                , jjwfcd
                : Fixed entity schema update for the entity_subqueue entity
                 type requires a data migration with Recall for Varbase Media
                 updates as they had changed as they introduced issues on
                 update with [entityqueue] latest release
* Issue [#3125946](https://www.drupal.org/node/3125946)
                 by [Odai Atieh](https://www.drupal.org/u/odai-atieh)
                : Fixed missing varbase media entity presave hook for remote
                 videos with fullback options
* Issue [#3129510](https://www.drupal.org/node/3129510):
                 Fixed Schema configs for number of default configs
* Issue [#3125727](https://www.drupal.org/node/3125727):
                 Fixed the object-fit-polyfill library is depending on
                 a deprecated library
* Issue [#3120499](https://www.drupal.org/node/3120499)
                 by yasmeensalah
                : Fixed lost default settings in Ajax context for the remove
                 button action for the [Background Media] styling option
* Issue [#3137756](https://www.drupal.org/node/3137756):
                 Fixed details style by using the default details
                 template and Claro changes over libraries only by Claro theme
* Issue [#3138096](https://www.drupal.org/node/3138096)
                 by [RajabNatshah](https://www.drupal.org/u/rajabnatshah)
                , Abdelrahman Amer
                : Fixed not loaded Claro libraries and overrides,
                 which the Drupal core bug still remain on sub themes
                 from Drupal back-end core themes
* Issue [#3138171](https://www.drupal.org/node/3138171)
                 by [RajabNatshah](https://www.drupal.org/u/rajabnatshah)
                , mitchellwillocks
                : Fixed Core Version Requirement Key ^8.8 || ^9 -
                 Uncaught PHP Exception by lowering requirements
                 and no core config
* Issue [#3143228](https://www.drupal.org/node/3143228)
                 by Firass Ziedan
                : Fixed js error appear when the theme request
                 quickedit.css file form core theme
* Issue [#3143270](https://www.drupal.org/node/3143270)
                 by abu-zakham
                : Fixed minor code standard on generated Vartheme BS4 Sub-theme
* Issue [#3142973](https://www.drupal.org/node/3142973)
                 by yasmeensalah
                : Fixed CSSLint errors on generated Vartheme BS4 Sub-theme
* Issue [#3138611](https://www.drupal.org/node/3138611):
                 Fixed Notice: Undefined index: NOT_EXISTED_USER in
                 VarbaseContext by replacing the captured notice with
                 an exception lookup message for better automated testing
                 reports
* Issue [#3104461](https://www.drupal.org/node/3104461)
                 by Abdelrahman Amer
                , yasmeensalah
                : Fixed duplicate paragraph Id for two uneven and three
                 uneven columns
* Issue [#3144404](https://www.drupal.org/node/3144404):
                 Fixed styling issue with Layout Builder UX on the alert
                 message of ( You are editing the layout .. ) over the
                 first Add section
* Issue [#3143257](https://www.drupal.org/node/3143257):
                 Fixed config for Background Media on (image, video, and
                 remote video) with new media config schema
* Issue [#3143227](https://www.drupal.org/node/3143227)
                 by Firass Ziedan
                : Fixed settings icon overlap with the section title
* Issue [#3143263](https://www.drupal.org/node/3143263):
                 Fixed config for Varbase Media Hero Slider media view mode
                 on (image, video, and remote video) with new media config
                 schema
* Issue [#3137483](https://www.drupal.org/node/3137483):
                 Fixed Composer and update [error] Varbase Media Header
                 requires this module and version. Currently using Varbase
                 Media version (Currently using Unresolved dependency Varbase
                 Media (Version >= 6.6 required))
* Issue [#3137482](https://www.drupal.org/node/3137482):
                 Fixed Composer and update [error] Varbase Media Hero Slider
                 requires this module and version. Currently using Varbase
                 Media version (Currently using Unresolved dependency Varbase
                 Media (Version >= 6.6 required))


--------------------------------------------------------------------------------

# 8.8.4

### Highlighted important changes since Varbase 8.x-8.3:
* Issue [#3120794](https://www.drupal.org/node/3120794):
                 Updated [Drupal core] from 8.8.2 to 8.8.4 ( ~8.8.0 ) and
                 Updated VarbaseContext for the Automated Functional
                 Acceptance Testing groups
                 Drupal core - Moderately critical - Third-party libraries -
                 [SA-CORE-2020-001](https://www.drupal.org/sa-core-2020-001)
* Issue [#3113113](https://www.drupal.org/node/3113113):
                 Drupal 9 readiness for [Varbase distribution] installation
                 profile with Drupal coding standard and practice
* Issue [#3113066](https://www.drupal.org/node/3113066):
                 Integrated with advanced Layout Builder UX behaviours
* Issue [#3116225](https://www.drupal.org/node/3116225)
                 by [yasmeensalah](https://www.drupal.org/u/yasmeensalah)
                : Added and render a [Section title] field for configured
                 sections layouts

### Added since Varbase 8.x-8.3:
* Issue [#3118906](https://www.drupal.org/node/3118906)
                by [Abdelrahman_Amer](https://www.drupal.org/u/abdelrahman_amer)
                : Added [List String] Field type with multiple or single
                 select option to layout builder styling options form widgets
* Issue [#3116206](https://www.drupal.org/node/3116206)
                by [Mohammad Fayoumi](https://www.drupal.org/u/mohammad-fayoumi)
                : Added Pathauto pattern for Landing page (Layout Builder)
                 content type
* Issue [#3119108](https://www.drupal.org/node/3119108)
                 by [yasmeensalah](https://www.drupal.org/u/yasmeensalah)
                : Add textarea Field type to layout builder styling options
                 form widgets
* Issue [#3116173](https://www.drupal.org/node/3116173):
                 Added [gulp-csscomb, with gulp-postcss] Gulp-SASS plugins
                 and CSScomb settings in [Varbase Media] for Drupal
                 (CSS formatting and sort tool)
* Issue [#3118091](https://www.drupal.org/node/3118091):
                 Added [gulp-csscomb, with gulp-postcss] Gulp-SASS plugins
                 and CSScomb settings in [Varbase Bootstrap Paragraphs] for Drupal (CSS formatting and sort tool)
* Issue [#3094123](https://www.drupal.org/node/3094123)
                by [Mohammad Fayoumi](https://www.drupal.org/u/mohammad-fayoumi)
                : Added paragraphs reusability to [varbase bootstrap
                 paragraphs] module
* Issue [#3101143](https://www.drupal.org/node/3101143)
                by [Mohammad Fayoumi](https://www.drupal.org/u/mohammad-fayoumi)
                : Added a basic config for paragraphs library in
                 [Varbase Landing] module
* Issue [#3099560](https://www.drupal.org/node/3099560)
                by [Firass Ziedan](https://www.drupal.org/u/firass-ziedan)
                 : Added template to 'from library'
                 paragraph and edit paragraphs css
* Issue [#3115836](https://www.drupal.org/node/3115836):
                 Added [gulp-csscomb, with gulp-postcss] Gulp-SASS
                 plugins and CSScomb settings in [Varbase Media Hero
                 Slider] for Drupal (CSS formatting and sort tool)
* Issue [#3115895](https://www.drupal.org/node/3115895):
                 Provided support for Popper.js ^2.0.0 core/popperjs
                 library and Drupal 9
* Issue [#3121629](https://www.drupal.org/node/3121629)
           by [Neslee Canil Pinto](https://www.drupal.org/u/neslee-canil-pinto)
                 : Added Configure button for [Varbase Media Settings]
                 in module list page

### Changed since Varbase 8.x-8.3:
* Issue [#3113167](https://www.drupal.org/node/3113167):
                 Drupal 9 Readiness for [Varbase Core] with Drupal
                 coding standard and practice
* Issue [#3117184](https://www.drupal.org/node/3117184):
                 Changed default config for admin [Content, and People]
                 views to work with the latest schema change in VBO 8.3.5
* Issue [#3115899](https://www.drupal.org/node/3115899)
                 by [Odai Atieh](https://www.drupal.org/u/odai-atieh)
                : Removed the 2646744-34.patch for [Drupal core] which Drupal
                 Core Url does not accept root-relative (file) URLs as
                 its producing regression issues on files with special
                 characters
* Issue [#3113149](https://www.drupal.org/node/3113149):
                 Disabled [Configuration inspector] on install of
                 [Varbase Development] module to fix status issues of many
                 schema errors shown by configuration inspector
* Issue [#3098320](https://www.drupal.org/node/3098320):
                 Drupal 9 Readiness for [Varbase Media] with Drupal coding
                 standard and practice
* Issue [#3117182](https://www.drupal.org/node/3117182):
                 Changed default config for [Media, and Media Library] views
                 to work with the latest schema change in VBO 8.3.5
* Issue [#3113161](https://www.drupal.org/node/3113161):
                 Drupal 9 Readiness for [Varbase API] with Drupal coding
                 standard and practice
* Issue [#3112185](https://www.drupal.org/node/3112185):
                 Drupal 9 Readiness for [Varbase Editor] with Drupal coding
                 standard and practice
* Issue [#3110785](https://www.drupal.org/node/3110785)
                by [Firass Ziedan](https://www.drupal.org/u/firass-ziedan)
                : Removed h1 from Editor formats in the Full HTML
                 (Rich editor) Text format
* Issue [#3113164](https://www.drupal.org/node/3113164):
                 Drupal 9 Readiness for [Varbase Bootstrap Paragraphs]
                 with Drupal coding standard and practice
* Issue [#3113176](https://www.drupal.org/node/3113176):
                 Drupal 9 Readiness for [Varbase Landing] with Drupal
                 coding standard and practice
* Issue [#3097903](https://www.drupal.org/node/3097903)
                 by [abu-zakham](https://www.drupal.org/u/abu-zakham)
                : Made [Varbase Landing] content type page with
                 field_description default page og:description
* Issue [#3113162](https://www.drupal.org/node/3113162):
                 Drupal 9 Readiness for [Varbase Blog (Corporate Blog)]
                 with Drupal coding standard and practice
* Issue [#3112390](https://www.drupal.org/node/3112390)
                by [Odai Atieh](https://www.drupal.org/u/odai-atieh)
                : Moved [statistics] module from dependencies to install
                 as an optional module
* Issue [#3113214](https://www.drupal.org/node/3113214):
                 Drupal 9 Readiness for [Varbse Media Hero Slider] with
                 Drupal coding standard and practice
* Issue [#3112172](https://www.drupal.org/node/3112172):
                 Drupal 9 Readiness for [Varbase Carousels] with Drupal
                 coding standard and practice
* Issue [#3113172](https://www.drupal.org/node/3113172):
                 Drupal 9 Readiness for [Varbase Email] with Drupal
                 coding standard and practice
* Issue [#3113175](https://www.drupal.org/node/3113175):
                 Drupal 9 Readiness for [Varbase FAQs] with Drupal coding
                 standard and practice
* Issue [#3102163](https://www.drupal.org/node/3102163)
                by [YousefAnbar](https://www.drupal.org/u/yousefanbar)
                : Changed FAQ Cache tags based on node_list tag
* Issue [#3113179](https://www.drupal.org/node/3113179):
                 Drupal 9 Readiness for [Varbase Layout Builder] with Drupal
                 coding standard and practice
* Issue [#3118007](https://www.drupal.org/node/3118007)
                by [Abdelrahman_Amer](https://www.drupal.org/u/abdelrahman_amer)
                : Removed none option from field media view mode in varbase
                 media block
* Issue [#3113184](https://www.drupal.org/node/3113184):
                 Drupal 9 Readiness for [Varbase Reports] with Drupal coding
                 standard and practice
* Issue [#3110031](https://www.drupal.org/node/3110031):
                 Drupal 9 Readiness for [Varbase Media Header] with Drupal
                 coding standard and practice
* Issue [#3113188](https://www.drupal.org/node/3113188):
                 Drupal 9 Readiness for [Varbase Search] with Drupal
                 coding standard and practice
* Issue [#3113189](https://www.drupal.org/node/3113189):
                 Drupal 9 Readiness for [Varbase SEO] with Drupal coding
                 standard and practice
* Issue [#3113191](https://www.drupal.org/node/3113191):
                 Drupal 9 Readiness for [Varbase Social Single Sign-On]
                 with Drupal coding standard and practice
* Issue [#3113192](https://www.drupal.org/node/3113192):
                 Drupal 9 Readiness for [Varbase Styleguide] with Drupal
                 coding standard and practice
* Issue [#3112166](https://www.drupal.org/node/3112166):
                 Drupal 9 Readiness for [Varbase Total Control Dashboard]
                 with Drupal coding standard and practice
* Issue [#3113196](https://www.drupal.org/node/3113196):
                 Drupal 9 Readiness for [Vartheme BS4 (Bootstrap 4 - SASS)]
                 with Drupal coding standard and practice
* Issue [#3113193](https://www.drupal.org/node/3113193):
                 Drupal 9 Readiness for [Vartheme (Bootstrap 3 - LESS)]
                 with Drupal coding standard and practice
* Issue [#3075974](https://www.drupal.org/node/3075974):
                 Drupal 9 Readiness for [Vartheme Admin] with Drupal coding
                 standard and practice
* Issue [#3113200](https://www.drupal.org/node/3113200):
                 Drupal 9 Readiness for [VMI] with Drupal coding standard
                 and practice
* Issue [#3087583](https://www.drupal.org/node/3087583):
                 Drupal 9 Readiness for [CKEditor Anchor Link] with
                 Drupal coding standard and practice
* Issue [#3113206](https://www.drupal.org/node/3113206):
                 Drupal 9 Readiness for [Entity Browser Enhance(d|r)]
                 with Drupal coding standard and practice
* Issue [#3113209](https://www.drupal.org/node/3113209):
                 Drupal 9 Readiness for [Entityqueue Form Widget] with
                 Drupal coding standard and practice

### Updates since Varbase 8.x-8.3:
* Issue [#3118547](https://www.drupal.org/node/3118547):
                 Updated [Update helper] module from 8.1.2 to 8.1.3 and
                 changed the [PATCH] Enhancements to work with 8.1.3
* Issue [#3117970](https://www.drupal.org/node/3117970):
                 Updated [Paragraphs] module from 8.1.10 to 8.1.11
* Issue [#3123199](https://www.drupal.org/node/3123199):
                 Updated [Entity Embed] module from 8.1.0 to 8.1.1
* Issue [#3123192](https://www.drupal.org/node/3123192):
                 Updated [Bootstrap Barrio] theme to ~4.0 and removed
                 applied patches
* Issue [#3119879](https://www.drupal.org/node/3117970):
                 Varbase 8.8.4: Updated [CHANGELOG.md, README.md,
                 drupal-org.make] files and filtered the code for
                 Drupal 8 Coding Standard
* - Updated [Admin Toolbar] module from 8.2.0 to 8.2.2
* - Updated [Blazy] module from 8.2.0-rc6 to 8.2.0
* - Updated [CAPTCHA] module from 8.1.0-beta4 to 8.1.0
* - Updated [CKEditor Anchor Link] module from 8.1.6 to 8.1.7
* - Updated [Crop API] module from 8.2.0 to 8.2.1
* - Updated [Entity API] module from 8.1.0-rc3 to 8.1.0
* - Updated [Entity Browser Enhance(d|r)] module from 8.1.0-rc5 to 8.1.0
* - Updated [Entity Embed] module from 8.1.0 to 8.1.1
* - Updated [Entity Reference Revisions] module from 8.1.7 to 8.1.8
* - Updated [Entityqueue Form Widget] module from 8.1.0 to 8.1.1
* - Updated [Fast 404] module from 8.1.0-alpha4 to 8.1.0-alpha5
* - Updated [Focal Point] module from 8.1.2 to 8.1.3
* - Updated [Image Optimize (or ImageAPI Optimize)] module
            from 8.2.0-alpha4 to 8.2.0-beta1
* - Updated [ImageMagick] module from 8.3.0 to 8.3.1
* - Updated [Inline Entity Form] module from 8.1.0-rc2 to 8.1.0-rc3
* - Updated [JSON:API Extras] module from 8.3.13 to 8.3.14
* - Updated [Layout builder library] module from 8.1.0-beta1 to 8.1.0-beta2
* - Updated [Login Destination] module from 8.1.0-alpha2 to 8.1.0-beta1
* - Updated [Media Library Theme Reset] module from 8.1.0-beta1 to 8.1.0-beta2
* - Updated [Paragraphs] module from 8.1.10 to 8.1.11
* - Updated [Paragraphs Features] module from 8.1.7 to 8.1.8
* - Updated [Revision Log Default] module from 8.1.0 to 8.1.1
* - Updated [RoleAssign] module from 8.1.0-alpha2 to 8.1.0-beta1
* - Updated [Simple OAuth] module from 8.4.3 to 8.4.4
* - Updated [Slick Carousel] module from 8.2.0 to 8.2.1
* - Updated [Slick Views] module from 8.2.1 to 8.2.2
* - Updated [SMTP Authentication Support] module from 8.1.0-beta6 to 8.1.0-beta7
* - Updated [Total Control Admin Dashboard] module from 8.2.0-beta2 to 8.2.0
* - Updated [Update helper] module from 8.1.2 to 8.1.3
* - Updated [View Modes Inventory - Bootstrap Ready] module from 8.2.4 to 8.2.5
* - Updated [Views Bulk Operations (VBO)] module from 8.3.4 to 8.3.6
* - Updated [Views Infinite Scroll] module from 8.1.6 to 8.1.7
* - Updated [Webform] module from 8.5.8 to 8.5.9
* - Updated [Barrio] theme from 8.4.22 to 8.4.23
* - Updated [Varbase Core] module from 8.8.4 to 8.8.7
* - Updated [Varbase API] module from 8.7.8 to 8.7.9
* - Updated [Varbase Media] module from 8.7.14 to 8.7.19
* - Updated [Varbase Editor] module from 8.7.5 to 8.7.7
* - Updated [Varbase Media Hero Slider] module from 8.7.6 to 8.7.8
* - Updated [Varbase Blog (Corporate Blog)] module from 8.8.0 to 8.8.1
* - Updated [Varbase Bootstrap Paragraphs] module from 8.7.8 to 8.7.9
* - Updated [Varbase Carousels] module from 8.7.1 to 8.7.2
* - Updated [Varbase Email] module from 8.6.1 to 8.6.2
* - Updated [Varbase Landing] module from 8.7.1 to 8.7.2
* - Updated [Varbase Layout Builder] module from 8.1.0-alpha6 to 8.1.0-alpha9
* - Updated [Varbase Search] module from 8.6.4 to 8.6.5
* - Updated [Varbase SEO] module from 8.6.9 to 8.6.10
* - Updated [Varbase Social Single Sign-On] module from 8.6.7 to 8.6.8
* - Updated [Varbase Styleguide] module from 8.6.3 to 8.6.4
* - Updated [Varbase Total Control Dashboard] module from 8.6.9 to 8.6.10
* - Updated [Vartheme (Bootstrap 3 - LESS)] theme from 8.6.6 to 8.6.7
* - Updated [Vartheme (Bootstrap 4 - SASS)] theme from 8.6.7 to 8.6.9
* - Updated [Vartheme Admin] module from 8.6.7 to 8.6.9

### Fixes since Varbase 8.x-8.3:
* Issue [#3115391](https://www.drupal.org/node/3115391)
                by [abu-zakham](https://www.drupal.org/u/abu-zakham)
                : Fixed performance issue on page load for calling provider
                 name for each remote video
* Issue [#3116474](https://www.drupal.org/node/3116474)
                by [abu-zakham](https://www.drupal.org/u/abu-zakham)
                : Fixed performance issue on page load in
                 [Varbase Media Hero Slider] for calling provider name
                 for each remote video
* Issue [#3120994](https://www.drupal.org/node/3120994):
                 Fixed performance issue on page load in [Varbase Layout
                 Builder] for calling provider name for each remote video
* Issue [#3121003](https://www.drupal.org/node/3121003):
                 Fixed performance issue on page load in [Varbase Media Header]
                 for calling provider name for each remote video
* Issue [#3116196](https://www.drupal.org/node/3116196):
                 Fixed Warning: fread(): Length parameter must
                 be greater than 0
* Issue [#3117325](https://www.drupal.org/node/3117325)
                by [Firass Ziedan](https://www.drupal.org/u/firass-ziedan)
                : Fixed custom classes function in Varbase Layout Builder,
                 which was setting the same classes value more than once
* Issue [#3120062](https://www.drupal.org/node/3120062)
                by [Mohammad Fayoumi](https://www.drupal.org/u/mohammad-fayoumi)
                : Fixed Media Library Modal positioning
* Issue [#3117412](https://www.drupal.org/node/3117412)
                by [Firass Ziedan](https://www.drupal.org/u/firass-ziedan)
                : Fixed [Drupal core] issue on save issue with layout builder
* Issue [#3121532](https://www.drupal.org/node/3121532):
                 Fixed [Drupal core] 8.8.4 Error: Call to a member
                 function getLabel() after enabling layout_builder
* Issue [#3121628](https://www.drupal.org/node/3121628):
                 Fixed [Drupal core] Notice on missing or invalid version
                 in extensions, which Update manager throws errors and is
                 confused about site update status
* Issue [#3121487](https://www.drupal.org/node/3121487)
                by [Mohammad Fayoumi](https://www.drupal.org/u/mohammad-fayoumi)
                 : Fixed support of select expand in IE11/Edge
* Issue [#3121491](https://www.drupal.org/node/3121491)
                by [Mohammad Fayoumi](https://www.drupal.org/u/mohammad-fayoumi)
                 : Fixed support of clear button in IE11/Edge

--------------------------------------------------------------------------------

# 8.8.3

### Highlighted important changes since Varbase 8.x-8.2:
* Updated [Views Bulk Operations (VBO)] module to 8.3.4 in the drupal-org.make
file to clear the security flag for Drupal.org packaging 
* Views Bulk Operations (VBO) - Moderately critical - Access bypass -
 [SA-CONTRIB-2020-003](https://www.drupal.org/sa-contrib-2020-003)
--
* Composer users, a basic composer update will update the module.

### Added since Varbase 8.x-8.2:
* N/A

### Changed since Varbase 8.x-8.2:
* N/A

### Updates since Varbase 8.x-8.2:
* Issue [#3111633](https://www.drupal.org/node/3111633):
                  Updated [ImageMagick] module from 8.2.6 to 8.3.0
* Issue [#3111636](https://www.drupal.org/node/3111636):
                  Varbase 8.8.3: Updated [CHANGELOG.md, README.md,
                  drupal-org.make] files and filter the code for Drupal 8
                  Coding Standard
* - Updated [Layout Builder UX] module from 8.1.0-beta1 to 8.1.0-beta2
* - Updated [ImageMagick] module from 8.2.6 to 8.3.0
* - Updated [Admin Toolbar] module from 8.1.27 to 8.2.0
* - Updated [Views Bulk Operations (VBO)] module from 8.2.5 to 8.3.4
* - Updated [Content locking (anti-concurrent editing)] module
            from 8.1.0-alpha8 to 8.2.0
* - Updated [Better Exposed Filters] module from 8.3.0-alpha6 to 8.4.0-alpha1
* - Updated [Google Analytics] module from 8.2.4 to 8.3.0
* - Updated [Varbase Media] module from 8.7.12 to 8.7.13

### Fixes since Varbase 8.x-8.2:
* Issue [#3112241](https://www.drupal.org/node/3112241)
                  by [mhawwari](https://www.drupal.org/u/mhawwari)
                  : Fixed oEmbed issue of not recognizing Vimeo arguments

--------------------------------------------------------------------------------

# 8.8.2

### Highlighted important changes since Varbase 8.x-8.1:
* Issue [#3104773](https://www.drupal.org/node/3104773):
                 Added [Varbase Layout Builder settings] for options source
                 config to feed [Background color] styling option
* Issue [#3107973](https://www.drupal.org/node/3107973):
                 Added support for [Varbase Layout Builder] colors theme
                 vlb-colors library in Vartheme BS4 and VARTHEME_BS4_SUBTHEME
                 with gulp-csscomb
* Issue [#3106854](https://www.drupal.org/node/3106854):
                 Added a redirect to the layout editing page after creating a
                 new entity with a View mode Layout Builder enabled on the
                 default or full content display mode
* Issue [#3105983](https://www.drupal.org/node/3105983):
                 Added [Media and Gallery Block types] to be used with the
                 [Varbase Landing Page (Layout Builder)] content type

### Added since Varbase 8.x-8.1:
* Issue [#3090764](https://www.drupal.org/node/3090764)
                 by [Odai Atieh](https://www.drupal.org/u/odai-atieh)
                : Added [object-fit-polyfill] library in [Varbase Core] to
                 support IE 9+, iOS 7-, and Android 4.4  (Image, Video,
                 YouTube, Vimeo) Object-fit
* Issue [#3105908](https://www.drupal.org/node/3105908):
                 Added [Text formats Block types] to be used with the
                 [Varbase Landing Page (Layout Builder)] content type
* Issue [#3107731](https://www.drupal.org/node/3107731):
                 Added [Block Form Alter] module ( ~1.0 )
* Issue [#3104761](https://www.drupal.org/node/3104761):
                 Added and enable [Entity Blocks] module ( ~1.0 ) and
                 configured restriction for Varbase Landing Page
                 (Layout Builder) content type
* Issue [#3105920](https://www.drupal.org/node/3105920):
                 Added [Block Content Permissions] module ( ~1.0 )
* Issue [#3105911](https://www.drupal.org/node/3105911):
                 Added [Allowed Formats] module ( ~1.0 )
* Issue [#3106590](https://www.drupal.org/node/3106590):
                 Added [Configuration inspector] module to [Varbase Development]
                 for development usage only
* Issue [#3104059](https://www.drupal.org/node/3104059)
                by [Mohammad Fayoumi](https://www.drupal.org/u/mohammad-fayoumi)
                : Added alternative text to the logo print image in
                 [Varbase Theme (Bootstrap 4 - SASS)]
* Issue [#3079231](https://www.drupal.org/node/3079231)
                 by [metalbote](https://www.drupal.org/u/metalbote)
                : Added code quality tests and analysis

### Changed since Varbase 8.x-8.1:
* Issue [#3106793](https://www.drupal.org/node/3106793)
               by [Mohammed J. Razem](https://www.drupal.org/u/mohammed-j-razem)
                : Provided a new token for the site origin URL (protocol
                 and domain name) without language prefix
* Issue [#3082722](https://www.drupal.org/node/3082722)
                 by [firassziedan](https://www.drupal.org/u/firass-ziedan)
                , [RajabNatshah](https://www.drupal.org/u/rajabnatshah)
                , [Mohammed J. Razem](https://www.drupal.org/u/mohammed-j-razem)
                : Changed default metatag configs to use Origin URL
                 [site:origin-url] token for the site (protocol and
                 domain name) without language prefix
* Issue [#3106862](https://www.drupal.org/node/3106862)
                 by [Mohammed J. Razem](https://www.drupal.org/u/mohammed-j-razem)
                : Changed the redirect_404 view to show full pager and sort by
                 last accessed
* Issue [#3109736](https://www.drupal.org/node/3109736):
                 Changed alternatives gulp-csscombx with gulp-csscomb
* Issue [#3074961](https://www.drupal.org/node/3074961)
                 by [metalbote](https://www.drupal.org/u/metalbote)
                : Changed web-root logic as drupal-root should not be
                 hard-coded in Script handler

### Updates since Varbase 8.x-8.1:
* Issue [#3111086](https://www.drupal.org/node/3111086):
                 Updated [Update helper] module from 8.1.1 to 8.1.2
* Issue [#3108245](https://www.drupal.org/node/3108245):
                 Updated [Views Bootstrap] module from 8.4.1 to 8.4.2 ( ~4.0 )
                 and removed committed patches
* Issue [#3106252](https://www.drupal.org/node/3106252):
                 Updated [Entity Browser] module from 8.2.2 to 8.2.3 ( ~2.0 )
                 and remove committed patches
* Issue [#3104881](https://www.drupal.org/node/3104881):
                 Updated [Better Login] module from 8.1.3 to 8.1.4 ( ~1.0 )
                 and removed committed patches
* Issue [#3106477](https://www.drupal.org/node/3106477):
                 Updated [Layout Builder Modal] from 8.1.0-alpha2 to 8.1.0
                 ( ~1.0 ) and removed committed patches
* Issue [#3108121](https://www.drupal.org/node/3108121):
                 Updated [Popper.js] library to v2.0.0 stable
* Issue [#3110640](https://www.drupal.org/node/3110640):
                 Varbase 8.8.2: Updated [CHANGELOG.md, README.md,
                 drupal-org.make] files and filtered the code for Drupal
                 8 Coding Standard
* - Updated [Better Login] module from 8.1.3 to 8.1.4
* - Updated [Color Field] module from 8.2.0 to 8.2.2
* - Updated [Crop API] module from 8.2.0-rc1 to 8.2.0
* - Updated [Diff] module from 8.1.0-rc2 to 8.1.0
* - Updated [DRD Agent] module from 8.3.12 to 8.3.13
* - Updated [dropzonejs] module from 8.2.0-alpha4 to 8.2.0
* - Updated [Entity Browser] module from 8.2.2 to 8.2.4
* - Updated [External Links] module from 8.1.1 to 8.1.2
* - Updated [Field Group] module from 8.3.0-rc2 to 8.3.0
* - Updated [Layout Builder Modal] module from 8.1.0-alpha2 to 8.1.0
* - Updated [Length Indicator] module from 8.1.0 to 8.1.1
* - Updated [Link Attributes widget] module from 8.1.9 to 8.1.10
* - Updated [Masquerade] module from 8.2.0-beta2 to 8.2.0-beta3
* - Updated [Maxlength] module from 8.1.0-beta4 to 8.1.0-beta5
* - Updated [Media entity Twitter] module from 8.2.1 to 8.2.3
* - Updated [Media Library Form API Element] module from 8.1.0-alpha4 to 8.1.0-alpha7
* - Updated [Menu position] module from 8.1.0-alpha1 to 8.1.0-alpha2
* - Updated [reCAPTCHA] module from 8.2.4 to 8.2.5
* - Updated [Slick Carousel] module from 8.2.0-rc4 to 8.2.0
* - Updated [Slick Views] module from 8.2.0 to 8.2.1
* - Updated [Update helper] module from 8.1.1 to 8.1.2
* - Updated [User protect] module from 8.1.0 to 8.1.1
* - Updated [Views Bootstrap] module from 8.4.1 to 8.4.2
* - Updated [Webform] module from 8.5.6 to 8.5.8
* - Updated [Varbase Core] module from 8.8.0 to 8.8.4
* - Updated [Varbase Editor] module from 8.7.4 to 8.7.5
* - Updated [Varbase Layout Builder] module from 8.1.0-alpha3 to 8.1.0-alpha6
* - Updated [Varbase Media] module from 8.7.11 to 8.7.12
* - Updated [Varbase SEO] module from 8.6.7 to 8.6.9
* - Updated [Varbase Theme (Bootstrap 4 - SASS)] theme from 8.6.5 to 8.6.7

### Fixes since Varbase 8.x-8.1:
* Issue [#3109040](https://www.drupal.org/node/3109040):
                 Fixed background media supports in [Varbase Layout Builder]
                 for IE 9+, iOS 7-, and Android 4.4 (Image, Video,
                 YouTube, Vimeo) Object-fit
* Issue [#3106640](https://www.drupal.org/node/3106640)
                 by [mhawwari](https://www.drupal.org/u/mhawwari)
                : Fixed deprecated override file for [Varbase Media Hero Slider]
                 theming in Vartheme BS4 Sub-themes
* Issue [#3106321](https://www.drupal.org/node/3106321):
                 Fixed regression for overridden media types with other
                 Varbase components like Varbase Blog and Varbase Media Header
* Issue [#3104904](https://www.drupal.org/node/3104904)
                 by [josebc](https://www.drupal.org/u/josebc)
                : Fixed upgrading [Config Filter] to 2.x breaks old
                 [config splits] configs
* Issue [#3103868](https://www.drupal.org/node/3103868)
                 by [RajabNatshah](https://www.drupal.org/u/rajabnatshah)
                , [Joachim Namyslo](https://www.drupal.org/u/joachim-namyslo)
                : Fixed update-varbase.sh should invoke composer update
                 whenever possible
* Issue [#3109848](https://www.drupal.org/node/3109848):
                 Fixed Cache Tags on node revision preview timestamp
                 for a node content page
* Issue [#3106537](https://www.drupal.org/node/3106537):
                 Fixed Warning: for misnamed Plugin Alternate Hand held
                 in [metatag] module
* Issue [#3110723](https://www.drupal.org/node/3110723):
                 Fixed notice error messages from [External Links]
                 module for not having a default config values
* Issue [#3111112](https://www.drupal.org/node/3111112)
                  by [Omar Alahmed](https://www.drupal.org/u/omar-alahmed)
                  : Fixed Autocomplete Deluxe issue of no auto suggestion

--------------------------------------------------------------------------------

# 8.8.1

### Highlighted important changes since Varbase 8.x-8.0:
* Issue [#3103717](https://www.drupal.org/node/3103717):
                  Fixed replace drupal-composer/drupal-scaffold with
                  drupal/core-composer-scaffold and remove post install cmd scripts
* [Vardot/varbase-project](https://github.com/Vardot/varbase-project)
                  template : Fixed replace
                  drupal-composer/drupal-scaffold with
                  drupal/core-composer-scaffold
                  [#70](https://github.com/Vardot/varbase-project/issues/70)
* [Vardot/varbase-updater](https://github.com/Vardot/varbase-updater)
                  : Changed the update config rules for 8.7.* to 8.8.1 and
                  from 8.8.* to 8.8.* latest
                  [#24](https://github.com/Vardot/varbase-updater/issues/24)

### Added since Varbase 8.x-8.0:
* No new features. Have a look at Varbase 8.x-8.0

### Changed since Varbase 8.x-8.0:
* No changes. Have a look at Varbase 8.x-8.0

### Updates since Varbase 8.x-8.0:
* Issue [#3103730](https://www.drupal.org/node/3103730):
                  Varbase 8.8.1: Update [CHANGELOG.md, README.md,
                  drupal-org.make] files and filter the code for
                  Drupal 8 Coding Standard
* - Updated [Token] module from 8.1.5 to 8.1.6
* - Updated [Varbase Layout Builder] module from 8.1.0-alpha2 to 8.1.0-alpha3
* - Updated [Varbase Media] module from 8.7.9 to 8.7.10
* - Updated [Varbase Media Hero Slider] module from 8.7.5 to 8.7.6
* - Updated [Varbase Media Header] module from 8.7.3 to 8.7.4

### Fixes since Varbase 8.x-8.0:
* Issue [#3103229](https://www.drupal.org/node/3103229)
                by [RajabNatshah](https://www.drupal.org/u/rajabnatshah)
                , [jedgar1mx](https://www.drupal.org/u/jedgar1mx)
                : Fixed [Embed buttons] icons for the CKEditor after the change
                of Embed API as they had dropped icon_uuid and change of config
                schema in case for optional updates or buttons were deleted
* Issue [#3102935](https://www.drupal.org/node/3102935)
                by [mhawwari](https://www.drupal.org/u/mhawwari)
                : Fixed console error. Vimeo player fires twice for [Varbase
                Media Hero Slider]
* Issue [#3103554](https://www.drupal.org/node/3103554)
                by [Abdelrahman_Amer](https://www.drupal.org/u/abdelrahman_amer)
                : Fixed notice for [Varbase Media] oembed iframe on an
                Undefined index: render element in
                drupal_find_theme_templates()
* Issue [#3103566](https://www.drupal.org/node/3103566)
                by [Abdelrahman_Amer](https://www.drupal.org/u/abdelrahman_amer)
                : Fixed notice for [Varbase Media Hero Slider] oembed iframe
                on an Undefined index: render element in
                drupal_find_theme_templates()
* Issue [#3103565](https://www.drupal.org/node/3103565)
                by [Abdelrahman_Amer](https://www.drupal.org/u/abdelrahman_amer)
                : Fixed notice for [Varbase Media Header] oembed iframe on
                an Undefined index: render element in
                drupal_find_theme_templates()
* Issue [#3103564](https://www.drupal.org/node/3103564)
                by [Abdelrahman_Amer](https://www.drupal.org/u/abdelrahman_amer)
                : Fixed notice for [Varbase Layout Builder] oembed iframe on
                an Undefined index: render element in
                drupal_find_theme_templates()

--------------------------------------------------------------------------------

# 8.8.0

### Highlighted important changes since Varbase 8.x-7.4:
* Updated [Drupal] core from ~8.7.0 to ~8.8.0
* Issue [#3093406](https://www.drupal.org/node/3093406):
                  Started an 8.x-8.x new branch for [Varbase] version:
                  8.x-8.x-dev and extra branch-alias with
                  dev-8.x-8.x to 8.8.x-dev
* Issue [#3100016](https://www.drupal.org/node/3100016):
                  Switched from drupal/core ~8.8.0 to drupal/core-recommended
                  ~8.8.0 in Varbase Core 8.8.0
* Issue [#3099991](https://www.drupal.org/node/3099991):
                  Switched from drupal-composer/drupal-scaffold ~2.0
                  to drupal/core-composer-scaffold ^8.8.0
* Issue [#3082049](https://www.drupal.org/node/3082049):
                  Initialized [Varbase Layout Builder] with a starter set
                  of layouts and styling options for sections

### Added since Varbase 8.x-7.4:
* Issue [#3099007](https://www.drupal.org/node/3099007):
                  Added [Varbase Layout Builder] component module
* Issue [#3102723](https://www.drupal.org/node/3102723):
                  Added the 3101791-8.patch for [Layout Builder Modal] module
                  to fix an integration issue with [Layout Builder UX]
                  to configure shortcut link to open with modal
* Issue [#3102559](https://www.drupal.org/node/3102559):
                 Added the 3102555-3.patch for [Better Login] module to fix
                 the remove all blocks in content region
* Issue [#3102065](https://www.drupal.org/node/3102065):
                 Added a necessary initialization for the entire system to
                 account for changed config by the end of the installation 

### Changed since Varbase 8.x-7.4:
* Issue [#3093405](https://www.drupal.org/node/3093405):
                  Started an 8.x-8.x branch for [Varbase Core] module
* Issue [#3093424](https://www.drupal.org/node/3093424):
                  Started an 8.x-8.x branch for [Varbase Blog] module
* Issue [#3095593](https://www.drupal.org/node/3095593):
                  Changed Feature: User Management - Standard User Management
                  - Admins can create users and assign a role to them - to work
                  with Drupal 8.7.10 and Drupal 8.8.x
* Issue [#3102415](https://www.drupal.org/node/3102415)
                  by [jedgar1mx](https://www.drupal.org/u/jedgar1mx)
                 : Removed the 3034353-2.patch for [Social Auth Google] as it
                  was committed in 8.x-2.0 stable
* Issue [#3098737](https://www.drupal.org/node/3098737):
                   Remove the 3096956-17 patch for [Views Reference Field] as
                   it was committed and 8.x-2.0-alpha6 was released

### Updates since Varbase 8.x-7.4:
* Updated [Drupal] core from 8.7.11 ( ~8.7.0 ) to 8.8.1 ( ~8.8.0 )
* Issue [#3101570](https://www.drupal.org/node/3101257):
                  Update [Update helper] module from 8.1.0 to 8.1.1 and update
                  the [PATCH] Enhancements
* Issue [#3101257](https://www.drupal.org/node/3101257):
                  Updated [Config Filter] from ~1.0 to ~2.0
* Issue [#3101261](https://www.drupal.org/node/3101261):
                  Updated [Content locking (anti-concurrent editing)]
                  module from ~1.0 to ~2.0
* Issue [#3102032](https://www.drupal.org/node/3102032):
                  Updated [Devel] module from * ( ~2.0 ) to  ~3.0
* Issue [#3095576](https://www.drupal.org/node/3095576):
                  Varbase 8.8.0: Update [CHANGELOG.md, README.md,
                  drupal-org.make] files and filter the code for Drupal
                  8 Coding Standard
* - Updated [Drupal] core from 8.7.11 ( ~8.7.0 ) to 8.8.1 ( ~8.8.0 )
* - Updated [DRD Agent] module from 8.1.10 to 8.1.12
* - Updated [Metatag] module from 8.1.10 to 8.1.11
* - Updated [Paragraphs] module from 8.1.9 to 8.1.10
* - Updated [Social API] module from 8.2.0-rc1 to 8.2.0-rc2
* - Updated [Social Auth] module from 8.2.0-rc1 to 8.2.0-rc2
* - Updated [Social Auth Google] module from 8.2.0-beta4 to 8.2.0
* - Updated [Blazy] module from 8.2.0-rc5 to 8.2.0-rc6
* - Updated [Social Auth Facebook] module from 8.2.0-beta4 to 8.2.0

### Fixes since Varbase 8.x-7.4:
* Issue [#3098789](https://www.drupal.org/node/3098789):
                  Fixed [Media Library] and the [Media Grid and
                  Media Table] admin pages
* Issue [#3098750](https://www.drupal.org/node/3098750):
                  Fixed the Automated Functional Acceptance Testing group:
                  03 admin management for [Media Library] and the
                  [Media Grid and Media Table] admin pages
* Issue [#3101234](https://www.drupal.org/node/3101234):
                  Fixed Drupal core multilingual site's layout edit
                  context issue
* Issue [#3101310](https://www.drupal.org/node/3101310):
                  Fixed argument 2 passed to Drupal jsonapi Routing closure
                  must be an instance of ResourceType, NULL given
* Issue [#3096606](https://www.drupal.org/node/3096606):
                  Fixed drag and drop of blocks incompatible issue for
                  [Bootstrap Layouts] with [Layout Builder]
* Issue [#3096607](https://www.drupal.org/node/3096607):
                  Fixed unsupported operand types for [Bootstrap Layouts]
                  in set configuration
* Issue [#3103229](https://www.drupal.org/node/3103229):
                  Fixed [Embed buttons] icons for the CKEditor after the
                  change of Embed API as they had dropped icon_uuid and
                  change of config schema

--------------------------------------------------------------------------------

# 8.7.2

### Highlighted important changes since Varbase 8.x-7.1:

* Issue [#3085390](https://www.drupal.org/node/3085390):
                 Updated [Drupal core] from 8.7.7 to 8.7.8 (~8.7.0 )
                 and remove applied patches

## Switched CSS management for all Varbase Components from LESS to SCSS with
Gulp as the task manager and made use of the (RFS) Responsive Font Size SCSS
library as we had shifted our responsive media breakpoints to the Bootstrap 4
breakpoints

## So it's the same number for the breakpoint but under the new name for the
breakpoint.

* Issue [#3077909](https://www.drupal.org/node/3077909):
                 Switched CSS management for [Varbase Media Hero Slider]
                 from LESS to SCSS with Gulp as the task manager and make use
                 of the (RFS) Responsive Font Size SCSS library
* Issue [#3080019](https://www.drupal.org/node/3080019):
                 Switched CSS management for [Varbase Bootstrap Paragraphs]
                 from LESS to SCSS with Gulp as the task manager and make use
                 of the (RFS) Responsive Font Size SCSS library, which comes
                 with Bootstrap 4

### Added since Varbase 8.x-7.1:
* Issue [#3085537](https://www.drupal.org/node/3085537):
                 Added [Token Filter] module 8.1.1 ( ~1.0 )
* Issue [#3085555](https://www.drupal.org/node/3085555):
                 Had the [Replaces global and entity tokens with their values]
                 filter only for HTML Editor (code filter) text format
* Issue [#3085199](https://www.drupal.org/node/3085199):
                 Added support for [drupal off canvas editor] and the
                 [layout builder] settings try to [Vartheme BS4] theme with
                 vbp_color and vbp_colors mixins
* Issue [#3085292](https://www.drupal.org/node/3085292):
                 Added support for [drupal off canvas editor] and the
                 [layout builder] settings try to [Varbase Bootstrap Paragraphs]
                 module with vbp_color and vbp_colors mixins
* Issue [#3085141](https://www.drupal.org/node/3085141)
                 by [Muath Khraisat](https://www.drupal.org/u/muath-khraisat)
                 : Added the 3049311-9.patch for [Views Bootstrap] module to fix
                 missing col-lg and col-xl in bootstrap grid format settings
                 and grids should not be split into multiple rows
* Issue [#3077926](https://www.drupal.org/node/3077926):
                 Added an optional config update to [Varbase Update Helper]
                 for the new Gallery media type, changes in the entity browsers,
                 Displays and form Displays

### Changed since Varbase 8.x-7.1:
* Issue [#3086223](https://www.drupal.org/node/3086223):
                 Changed [Varbase Blog] views for blog listing to work with
                 the better logic for Bootstrap 4
* Issue [#3086262](https://www.drupal.org/node/3086262):
                 Changed [Vartheme BS4] theme hook to work with
                 [Views Bootstrap] ~4.0 grid new better logic and template
                 for Bootstrap 
* Issue [#3076272](https://www.drupal.org/node/3076272)
                 by [metalbote](https://www.drupal.org/u/metalbote)
                , [RajabNatshah](https://www.drupal.org/u/rajabnatshah)
                : Switched CSS management for [Vartheme Admin]
                 from LESS to SCSS with Gulp as the task manager
* Issue [#3080023](https://www.drupal.org/node/3080023):
                 Switched CSS management for [Varbase Total Control Dashboard]
                 from LESS to SCSS with Gulp as the task manager and make use
                 of the (RFS) Responsive Font Size SCSS library
* Issue [#3077911](https://www.drupal.org/node/3077911):
                 Switched CSS management for [Varbase Media Header]
                 from LESS to SCSS with Gulp as the task manager and make use
                 of the (RFS) Responsive Font Size SCSS library
* Issue [#3080020](https://www.drupal.org/node/3080020):
                 Switched CSS management for [Varbase FAQs]
                 from LESS to SCSS with Gulp as the task manager and make use
                 of the (RFS) Responsive Font Size SCSS library
* Issue [#3080022](https://www.drupal.org/node/3080022):
                 Switched CSS management for [Varbase Styleguide] from LESS to SCSS with Gulp as the task manager and make use of the (RFS) Responsive Font Size SCSS library
* Issue [#3085333](https://www.drupal.org/node/3085333)
                 by [philltran](https://www.drupal.org/u/philltran)
                : Removed [Drupal core] patch for issue 2885441 from
                 drupal-org-core.make

### Updates since Varbase 8.x-7.1:
* Issue [#3085104](https://www.drupal.org/node/3085104):
                  Varbase 8.7.2: Updated [CHANGELOG.md, README.md,
                  drupal-org.make] files and filter the code for
                  Drupal 8 Coding Standard
* - Updated [Blazy] module from 8.2.0-rc3 to 8.2.0-rc5
* - Updated [CAPTCHA] module from 8.1.0-beta1 to 1.0-beta3
* - Updated [CKEditor Media Embed Plugin] module from 8.1.6 to 8.1.7
* - Updated [DRD Agent] module from 8.3.8 to 8.3.9
* - Updated [Entity Reference Revisions] module from 8.1.6 to 8.1.7
* - Updated [Focal Point] module from 8.1.0 to 8.1.2
* - Updated [Inline Entity Form] module from 8.1.0-rc1 to 8.1.0-rc2
* - Updated [JSON:API Extras] module from 8.3.10 to 8.3.12
* - Updated [Media entity Instagram] module from 8.2.0-alpha2 to 8.2.0
* - Updated [Media entity Twitter] module from 8.2.0-alpha3 to 8.2.1
* - Updated [Metatag] module from 8.1.9 to 8.1.10
* - Updated [Slick Carousel] module from 8.2.0-rc3 to 8.2.0-rc4
* - Updated [SMTP Authentication Support] module from 8.1.0-beta4 to 8.1.0-beta5
* - Updated [Views Bulk Edit] module from 8.2.3 to 8.2.4
* - Updated [Simple OAuth] from 8.3.16 to 8.4.2
* - Updated [Simple XML sitemap from 8.3.3 to 8.3.4
* - Updated [Maxlength] from 8.1.0-beta2 to 8.1.0-beta4
* Issue [#3085506](https://www.drupal.org/node/3085506):
                 Updated [ChromeDriver, standalone selenium server] for
                 the travis-ci Automated Functional Acceptance Testing and
                 updated emuse/behat-html-formatter to ^0.2.0
* Issue [#3078550](https://www.drupal.org/node/3078550):
                 Updated [Display Suite] module from 8.3.3 to 8.3.4 ( ~3.0 )
                 and removed committed patches
* Issue [#3080789](https://www.drupal.org/node/3080789):
                 Updated [Focal Point] module from 1.0 to 1.1 ( ~1.0 )
                 and removed committed patches
* Issue [#3079468](https://www.drupal.org/node/3079468)
                 by [jedgar1mx](https://www.drupal.org/u/jedgar1mx)
                 , [RajabNatshah](https://www.drupal.org/u/rajabnatshah)
                 : Updated [Simple OAuth]
                 from ~3.0 to ~4.0

### Fixes since Varbase 8.x-7.1:
* Issue [#3082815](https://www.drupal.org/node/3082815)
                 by [Firass Ziedan](https://www.drupal.org/u/firass-ziedan)
                : Fixed the slider in [RTL] display half of the vimeo and
                 youtube video in [Varbase Media Hero Slider].
* Issue [#3080137](https://www.drupal.org/node/3080137)
                 by [yasmeensalah](https://www.drupal.org/u/yasmeensalah)
                : Fixed hook preprocess name for [Varbase Media Header]
                 from [Varbase Media Hero Slider] module
* Issue [#3084824](https://www.drupal.org/node/3084824)
                 by [abedajam](https://www.drupal.org/u/abedajam)
                : Fixed missing character in paragraphs previewer
                 hook_field_widget_WIDGET_TYPE_form_alter in [Varbase Bootstrap
                 Paragraphs] modules
* Issue [#3081350](https://www.drupal.org/node/3081350)
                 by [Odai Atieh](https://www.drupal.org/u/odai-atieh)
                : Fixed [Varbase Theme (Bootstrap 4 - SASS)]
                 theme sub-theme bash script generator on MAC OS X
* Issue [#3081351](https://www.drupal.org/node/3081351)
                 by [Odai Atieh](https://www.drupal.org/u/odai-atieh)
                : Fixed [Vartheme BS3] theme sub-theme bash script generator
                 on MAC OS X
* Issue [#3081361](https://www.drupal.org/node/3081361)
                 by [Odai Atieh](https://www.drupal.org/u/odai-atieh)
                : Fixed [Vartheme BS4] theme sub-theme bash script generator
                 on MAC OS X
* Issue [#3078546](https://www.drupal.org/node/3078546)
                 by [Firass Ziedan](https://www.drupal.org/u/firass-ziedan)
                : Fixed Vartheme BS4 RTL generation script for a new
                 sub-theme not create {theme}-rtl base file
* Issue [#3078545](https://www.drupal.org/node/3078545)
                 by [Firass Ziedan](https://www.drupal.org/u/firass-ziedan)
                : Fixed RTL generation in create-new-vartheme-bs4 script not 
                create {theme}-rtl base file
* Issue [#3071221](https://www.drupal.org/node/3071221)
                 by [marioangulo](https://www.drupal.org/u/marioangulo)
                : Fixed Top Pages Panel Urls in [Varbase Total Control
                 Dashboard] module
* Issue [#3085671](https://www.drupal.org/node/3085671):
                 Fixed the update process to uninstall the Simple Oauth Extras
                 module as it was merged into Simple Oauth to make it work
                 without conditions
* Issue [#3086751](https://www.drupal.org/node/3086751)
                 by [Firass Ziedan](https://www.drupal.org/u/firass-ziedan)
                 : Fixed paragraphs styling regression issue by removing
                 make-row() mixin call from scss base file

--------------------------------------------------------------------------------

# 8.7.1

### Highlighted important changes since Varbase 8.x-7.0:
* Issue [#3073370](https://www.drupal.org/node/3073370):
                 Updated [Drupal core] from 8.7.4 to 8.7.6 ( ~8.7.0 ) by
                 removing already applied or committed patches in drupal/core
* Issue [#3075805](https://www.drupal.org/node/3075805):
                 Updated [Metatag] module from 8.1.8 to 8.1.9
* Issue [#3075628](https://www.drupal.org/node/3075628):
                 Added [Gallery] media type

### Added since Varbase 8.x-7.0:
* Issue [#3075633](https://www.drupal.org/node/3075633):
                 Added SASS/SCSS compile options in [Vartheme BS4] for output
                 Style as expanded, indent Type as space, and indent Width
                 of 2 spaces
* Issue [#3011500](https://www.drupal.org/node/3011500)
                 by
                 [lexsoft](https://www.drupal.org/u/lexsoft)
                , [RajabNatshah](https://www.drupal.org/u/rajabnatshah)
                : Added Icons in [Varbase Media] for Entity Embed CKEditor
                 Media Library and Gallery buttons

### Changed since Varbase 8.x-7.0:
* Issue [#3075624](https://www.drupal.org/node/3075624):
                 Switched CSS management for [Varbase Media] from LESS
                 to SCSS with gulp
* Issue [#3075795](https://www.drupal.org/node/3075795):
                 Changed configure widgets for Entity Browser Enhanced
                 behaviors using the new schema format
* Issue [#2998934](https://www.drupal.org/node/2998934)
                 by
                 [Pasqualle](https://www.drupal.org/u/pasqualle)
                , [RajabNatshah](https://www.drupal.org/u/rajabnatshah)
                , [Mohammed J. Razem](https://www.drupal.org/u/mohammed-j-razem)
                : Split up config with schema refactor to have Enhancer for
                 each given entity browser widget separately per entity browser
* Issue [#3074888](https://www.drupal.org/node/3074888):
                 Switched CSS management in the [VMI] module from LESS
                 to SCSS with gulp and make use of the (RFS) Responsive
                 Font Size SCSS library
* Issue [#3075753](https://www.drupal.org/node/3075753):
                 Removed CKEditor embed button style icon as we are using
                 the Varbase Media Embed Button icons
* Issue [#3076031](https://www.drupal.org/node/3076031):
                 Changed [Varbase Admin] with a follow up issue to change
                 after a new release of Responsive Theme Preview module
                 with an update for list of devices to pass the Feature:
                 Preview the site in a number of responsive devices
* Issue [#3076057](https://www.drupal.org/node/3076057):
                 Changed [Feature: Preview the site in a number of
                 responsive devices] automated functional testing to
                 follow with new updated list of devices in the
                 Responsive Theme Preview module
* Issue [#3077303](https://www.drupal.org/node/3077303):
                 Switched all CKEditor Embed Media (Image, Video, Remote Video)
                 view modes from Blazy to Responsive image styles
                 [ Default, Original, Large (Full width),
                 Medium (1/2 of width), Small (1/4 of width) ]

### Updates since Varbase 8.x-7.0:
* Issue [#3075851](https://www.drupal.org/node/3075851):
                 Updated [Paragraphs] module from 8.1.8 to 8.1.9
* Issue [#3067764](https://www.drupal.org/node/3067764):
                 Updated [Layout Builder Restrictions] from ~1.0 to ~2.0
* Issue [#3076079](https://www.drupal.org/node/3076079):
                 Updated [OpenAPI] module from 8.1.0-beta4 to 8.1.0-beta6
                 ( ~1.0 )
* Issue [#3075801](https://www.drupal.org/node/3075801):
                 Updated drupal-org.make files and filter the code for
                 Drupal 8 Coding Standard
* - Updated [Entity Browser Enhance(d|r)] module from 8.1.0-rc4 to 8.1.0-rc5
* - Updated [Entityqueue Form Widget] module from 8.1.0-rc1 to 8.1.0
* - Updated [JSON:API Extras] module from 8.3.8 to 8.3.10
* - Updated [Link Attributes widget] module from 8.1.8 to 8.1.9
* - Updated [Paragraphs] module from 8.1.8 to 8.1.9
* - Updated [Paragraphs Features] module from 8.1.4 to 8.1.6
* - Updated [Responsive Theme Preview] module from 8.1.0-alpha7 to 8.1.0-beta1
* - Updated [Schema.org Metatag] module from 8.1.3 to 8.1.4
* - Updated [Search API] module from 8.1.13 to 8.1.14
* - Updated [Simple XML sitemap] module from 8.3.2 to 8.3.3
* - Updated [Social API] module from 8.2.0-beta5 to 8.2.0-rc1
* - Updated [Social Auth] module from 8.2.0-beta6 to 8.2.0-rc1
* - Updated [View Modes Inventory - Bootstrap Ready] module from 8.2.2 to 8.2.3
* - Updated [Webform] module from 8.5.2 to 8.5.4
* - Updated [Charts] module from 8.3.0-beta3 to 8.3.0
* - Updated [Image Magick] module from 8.2.5 to 8.2.6

### Fixes since Varbase 8.x-7.0:
* Issue [#3067853](https://www.drupal.org/node/3067853)
                 by
                 [Mohammed J. Razem](https://www.drupal.org/u/mohammed-j-razem)
                : Fixed issue in a custom token used in two places in
                 the metatag config
* Issue [#3075638](https://www.drupal.org/node/3075638):
                 Fixed [Vartheme BS4] Drupal coding standard and Drupal Practice
* Issue [#3067836](https://www.drupal.org/node/3067836):
                 Fixed [Varbase Email] uses of deprecated Drupal core APIs
                 and standard Drupal Practice
* Issue [#3067834](https://www.drupal.org/node/3067834):
                 Fixed [Varbase API] uses of deprecated Drupal core APIs and
                 standard Drupal Practice
* Issue [#3067841](https://www.drupal.org/node/3067841)
                 by [joy29](https://www.drupal.org/u/joy29)
                , [RajabNatshah](https://www.drupal.org/u/rajabnatshah)
                : Fixed [Varbase Bootstrap Paragraphs]
                 uses of deprecated Drupal core APIs and standard Drupal Practice
* Issue [#3067829](https://www.drupal.org/node/3067829)
                 by [joy29](https://www.drupal.org/u/joy29)
                , [RajabNatshah](https://www.drupal.org/u/rajabnatshah)
                : Fixed [Varbase Media Hero Slider]
                 uses of deprecated Drupal core APIs and standard Drupal Practice
* Issue [#3067832](https://www.drupal.org/node/3067832)
                 by [joy29](https://www.drupal.org/u/joy29)
                , [RajabNatshah](https://www.drupal.org/u/rajabnatshah)
                : Fixed [Varbase Editor] uses of
                 deprecated Drupal core APIs and standard Drupal Practice
* Issue [#3068329](https://www.drupal.org/node/3068329)
                 by [a.qala](https://www.drupal.org/u/aqala)
                : Fixed Hero slider content wrapper is affecting the
                 administration menu
* Issue [#3067840](https://www.drupal.org/node/3067840)
                 by [joy29](https://www.drupal.org/u/joy29)
                , [RajabNatshah](https://www.drupal.org/u/rajabnatshah)
                : Fixed [Varbase Carousels] uses
                 of deprecated Drupal core APIs and standard Drupal Practice
* Issue [#3067828](https://www.drupal.org/node/3067828)
                 by
                 [Mohammad Fayoumi](https://www.drupal.org/u/mohammad-fayoumi)
                , [RajabNatshah](https://www.drupal.org/u/rajabnatshah)
                : Fixed [Varbase Media] uses
                 of deprecated Drupal core APIs and standard Drupal Practice
* Issue [#3067824](https://www.drupal.org/node/3067824):
                 Fixed [Varbase Total Control Dashboard] uses of deprecated
                 Drupal core APIs and standard Drupal Practice
* Issue [#3076284](https://www.drupal.org/node/3076284):
                 Fixed project: varbase_search in .info.yml for the Drupal
                 project usage statistics report and update counter
* Issue [#3067843](https://www.drupal.org/node/3067843):
                 Fixed project: varbase_blog in .info.yml for the Drupal
                 project usage statistics report and update counter
* Issue [#3076291](https://www.drupal.org/node/3076291):
                 Fixed project: varbase_auth in .info.yml for the Drupal
                 project usage statistics report and update counter

--------------------------------------------------------------------------------

# 8.7.0


### Highlighted important changes since Varbase 8.6.12:

* Issue [#3057183](https://www.drupal.org/node/3057183):
                 Added [Varbase API] module and have it as an
                 (optional component) at the varbase install steps
* Issue [#3057152](https://www.drupal.org/node/3057152):
                 Enabled [Varbase Bootstrap Paragraphs Text and Image] in
                 [Varbase Landing] module
* Issue [#3057161](https://www.drupal.org/node/3057161):
                 Added and enable [Paragraphs edit] in [Varbase Bootstrap
                 Paragraphs ] with the hook for styling in the single paragraph edit page
* Issue [#3061425](https://www.drupal.org/node/3061425):
                 Upgraded [Views Bulk Operations (VBO)] from ~2.0 to ~3.0

### Added since Varbase 8.6.12:
* Issue [#3057533](https://www.drupal.org/node/3057533):
                 Added and enabled [Events log track] module in the
                 [Varbase admin] module and enabled all Events log track
                 modules except Workflows
* Issue [#3063924](https://www.drupal.org/node/3063924):
                 Added the Masonry, Images Loaded asset libraries
* Issue [#3057151](https://www.drupal.org/node/3057151):
                 Enabled [Redirect domain] module in the [Varbase seo] module
* Issue [#3060110](https://www.drupal.org/node/3060110)
                 by
                 alonaoneill
                : Added Hook Help following module documentation guidelines
* Issue [#3056572](https://www.drupal.org/node/3056572):
                 Enabled [Inline Form Errors] in [Varbase core] module
* Issue [#3056574](https://www.drupal.org/node/3056574):
                 Enabled [Admin toolbar links access filter] in
                 [Varbase admin] module

### Changed since Varbase 8.6.12:
* Issue [#3056256](https://www.drupal.org/node/3056256):
                 Started an 8.x-7.x new branch for [Varbase] version:
                 8.x-7.x-dev and extra branch-alias with
                 dev-8.x-7.x to 8.7.x-dev
* Issue [#3052174](https://www.drupal.org/node/3052174):
                 Started an 8.x-7.x branch for [Varbase Core] module
* Issue [#3052181](https://www.drupal.org/node/3052181):
                 Started an 8.x-7.x branch for [Varbase Media] module
* Issue [#3052171](https://www.drupal.org/node/3052171):
                 Started an 8.x-7.x branch for [Varbase Bootstrap Paragraphs] module
* Issue [#3052180](https://www.drupal.org/node/3052180):
                 Started an 8.x-7.x branch for [Varbase Landing] module
* Issue [#3052176](https://www.drupal.org/node/3052176):
                 Started an 8.x-7.x branch for [Varbase Editor] module
* Issue [#3052172](https://www.drupal.org/node/3052172):
                 Started an 8.x-7.x branch for [Varbase Carousels] module
* Issue [#3052169](https://www.drupal.org/node/3052169):
                 Started an 8.x-7.x branch for [Varbase Blog
                 (Corporate Blog)] module
* Issue [#3062741](https://www.drupal.org/node/3062741):
                 Added two new responsive preview devices
                 iPhone XS and iPhone XS Max
* Issue [#3063538](https://www.drupal.org/node/3063538):
                 Changed default password policy with no expiry for the
                 password and better Policy Constraints
* Issue [#3062092](https://www.drupal.org/node/3062092):
                 Have [Varbase Update Helper] module as a dependency with
                 [Varbase Core] module
* Issue [#3062094](https://www.drupal.org/node/3062094):
                 Removed the [Search] menu link and box from the toolbar
                 as we use Coffee
* Issue [#3062296](https://www.drupal.org/node/3062296):
                 Removed password policy fields from the user form
* Issue [#3061425](https://www.drupal.org/node/3061425):
                 Have Forced configs import after the entity and
                 definitions updates
* Issue [#3062267](https://www.drupal.org/node/3062267):
                 Have default config settings for Content Lock
* Issue [#3062276](https://www.drupal.org/node/3062276):
                 Have default general settings for Diff
* Issue [#3059093](https://www.drupal.org/node/3059093):
                 Changed the patch for The Media library^s View and
                 View Mode should be configurable in the UI and removed
                 the Drupal core patch which allows the user to choose
                 a different view or view mode for the Media Library,
                 and removed the 2990664-24-option-b.patch as it was
                 applied in Drupal 8.7.4
* Issue [#3062083](https://www.drupal.org/node/3062083):
                 Changed the display and filters for Media and Media Table
                 pages to integrate with the new Media Library,
                 and changed the Media Widget for Media Library and
                 Media Entity Browsers
* Issue [#3060892](https://www.drupal.org/node/3060892):
                 Changed image form view mode to use Image (Focal Point),
                 and manage the media library view mode for image and cover
                 image for videos
* Issue [#3062083](https://www.drupal.org/node/3062083):
                 Changed the display and filters for Media and Media Table
                 pages to integrate with the new Media Library, and changed
                 the Media Widget for Media Library and Media Entity Browsers
* Issue [#3059098](https://www.drupal.org/node/3059098):
                 Changed [Save to Library] checkbox label to
                 [Show in media library]
* Issue [#3062258](https://www.drupal.org/node/3062258):
                 Changed Varbase Dashboard to work with C3 Charts and without
                 warning
* Issue [#3060823](https://www.drupal.org/node/3060823):
                 Changed the Automated Functional Acceptance Testing to work
                 with changes in the 8.x-7.x branch
* Issue [#3062105](https://www.drupal.org/node/3062105):
                 Have the Files tab in the content and media admin menu
                 and page
* Issue [#3062094](https://www.drupal.org/node/3062094):
                 Remove the [Search] menu link and box from the toolbar
                 as we use Coffee
* Issue [#3062296](https://www.drupal.org/node/3062296):
                 Removed password policy fields from the user form
* Issue [#3062276](https://www.drupal.org/node/3062276):
                 Have default general settings for Diff
* Issue [#3062267](https://www.drupal.org/node/3062267):
                 Have default config settings for Content Lock
* Issue [#3062235](https://www.drupal.org/node/3062235):
                 Optimized permissions for default user roles
* Issue [#3062233](https://www.drupal.org/node/3062233):
                 Optimized for permissions for the SEO Admin user role
* Issue [#3013288](https://www.drupal.org/node/3013288)
                 by
                 [volkswagenchick](https://www.drupal.org/u/volkswagenchick)
                 : Changed [Varbase Media] README - formatting, configs
                 and useful links
* Issue [#3063917](https://www.drupal.org/node/3063917):
                 Removed all patches for the [Total Control] module and
                 keep using the ( ~2.0 ) in the composer
* Issue [#3056342](https://www.drupal.org/node/3056342):
                 Changed required for Varbase Media to let ~6.6 or ~7.0

### Updates since Varbase 8.6.12:
* Issue [#3056587](https://www.drupal.org/node/3056587):
                 Updated [Drupal core] from 8.7.1 to ( ~8.7.0 ) and
                 removed all patches for 8.7.1
* Issue [#3057149](https://www.drupal.org/node/3057149):
                 Updated [Field Group] module from 8.3.0-beta1
                 to ( ~8.0 ) 8.3.0-rc1
* Issue [#3060637](https://www.drupal.org/node/3060637):
                 Updated [Password Policy] from 8.3.0-alpha4
                 to 8.3.0-alpha5 (~3.0 )
* Issue [#3060682](https://www.drupal.org/node/3060682):
                 Updated [Page Manager] module from 8.4.0-beta3 to 8.4.0-beta4
* Issue [#3056717](https://www.drupal.org/node/3056717):
                 Updated [Views Bootstrap] from ( ~3.0 ) to ( ~4.0 )
* Issue [#3063632](https://www.drupal.org/node/3063632):
                 Updated [OpenAPI] from 8.1.0-beta2 to 8.1.0-beta3
* Issue [#3060661](https://www.drupal.org/node/3060661):
                 Updated [Entity Embed] module from 8.1.0-beta3
                 to 8.1.0-rc1 ( ~1.0 )
* Issue [#3061434](https://www.drupal.org/node/3061434):
                 Upgraded [Views Bulk Operations (VBO)] module from ~2.0 to ~3.0

### Fixes since Varbase 8.x-6.12:
* Issue [#3057533](https://www.drupal.org/node/3057533):
                 Fixed fatal error when we request password with non-existing
                 users/emails on the Events Log Track User Authentication
* Issue [#3061128](https://www.drupal.org/node/3061128):
                 Fixed the issue of oembed link does not pass the URL
                 parameter to the provider
* Issue [#3066186](https://www.drupal.org/node/3066186):
                 Fixed Drupal coding standard and practice
* Issue [#3061159](https://www.drupal.org/node/3061159):
                 Fixed Varbase API .info.yml for dev tracking
* Issue [#3059043](https://www.drupal.org/node/3059043):
                 Fixed paragraphs module to have it work with
                 field group version 3
* Issue [#3063701](https://www.drupal.org/node/3063701):
                 Fixed issue of route openapi.docs does not exist. as it was
                 changed to openapi.documentation in OpenAPI module
* Issue [#3063703](https://www.drupal.org/node/3063703):
                 Fixed issue of NOT respecting disabled JSON:API resources by JSON:API Extras
* Issue [#3056662](https://www.drupal.org/node/3056662)
                 by 
                 [YousefAnbar](https://www.drupal.org/u/yousefanbar)
                 , 
                 [RajabNatshah](https://www.drupal.org/u/rajabnatshah)
                 : Fixed RTL style in Vartheme BS4 for the better login page
* Issue [#3065344](https://www.drupal.org/node/3065344)
                 by
                 [m.alhawwari](https://www.drupal.org/u/malhawwari)
                 ,
                 [RajabNatshah](https://www.drupal.org/u/rajabnatshah)
                : Fixed issue of swagger-ui package should be moved from
                 vendor to libraries
* Issue [#3058511](https://www.drupal.org/node/3058511)
                 by 
                 [jedgar1mx](https://www.drupal.org/u/jedgar1mx)
                 : Fixed Uncaught TypeError: Cannot read property
                 'querySelectorAll' of null
* Issue [#3059083](https://www.drupal.org/node/3059083)
                 by
                 [Omar Alahmed](https://www.drupal.org/u/omar-alahmed)
                 : Fixed fatal error when trying to translate a node
                 with accordion paragraph type
* Issue [#3048170](https://www.drupal.org/node/3048170)
                 by
                 [stefan.korn](https://www.drupal.org/u/stefankorn)
                 : Fixed issue of drush varbase-up not working with Drush 9.x

-----------------

# 9.0.3

### Highlighted important changes since Varbase 9.0.2:
* This is a **patch (bugfix) release of Varbase 9** and is ready for use
 on production sites.
  [Learn more about Varbase 9](https://docs.varbase.vardot.com/developers/understanding-varbase/basic-concepts).
* Updated Drupal core to 9.2.10 for new builds. which is
 a **patch (bugfix) release of Drupal 9** and is ready for use on production sites.
  [Learn more about Drupal 9](https://www.drupal.org/about/9).
* Issue [#3251062](https://www.drupal.org/i/3251062):
        Updated Bootstrap library from 4.6.0 to 4.6.1

### Added since Varbase 9.0.2:
* Issue [#3227277](https://www.drupal.org/i/3227277):
        Added "Authored by" filter to admin content views in Varbase Admin
* Issue [#3249476](https://www.drupal.org/i/3249476):
        Added "Authored by" filter to Media Table and Media Grid views in Varbase Media
* Issue [#3248635](https://www.drupal.org/i/3248635):
        Added Reroute Email ~2.0 module and enable with default config to
         Varbase Development module
* Issue [#3248644](https://www.drupal.org/i/3248644):
        Added a formbit on install to setup the rerouting email address configs
        for the Reroute Email module with default config checked for Varbase Development
* Issue [#3187308](https://www.drupal.org/i/3187308):
        Added Flood Control module to Varbase Security for login attempt limiting

* Issue [#3245156](https://www.drupal.org/i/3245156):
        Added the Block Library module ( ~1.0 ) with basic config for available block types
* Issue [#3244846](https://www.drupal.org/i/3244846)
        by [Ahmad Abbad](https://www.drupal.org/u/ahmad-abbad)
       : Added Bootstrap Border Color (side) variations to Bootstrap
        Base Utilities list in Vartheme BS4
* Issue [#3244910](https://www.drupal.org/i/3244910)
        by [Ahmad Abbad](https://www.drupal.org/u/ahmad-abbad)
       , [n.ghunaim](https://www.drupal.org/u/nghunaim)
       : Added a specific class when having background bg-color, bg-image, bg-video options
* Issue [#3233072](https://www.drupal.org/i/3233072):
        Added lint:yaml and update the package.json for Varbase Media
        module with latest Drupal 9.3.x dev tools

### Changed since Varbase 9.0.2:
* Issue [#3250823](https://www.drupal.org/i/3250823):
        Removed the Flood Unblock module as it will be discontinued by its maintainers
        in favour of using the Flood Control module instead, which
        now contains the functionality
* Issue [#3249434](https://www.drupal.org/i/3249434):
        Changed default width for selected admin exposed filters
* Issue [#3248270](https://www.drupal.org/i/3248270):
        Removed the Hero Slider region TWIG template file from Vartheme BS4
* Issue [#3245803](https://www.drupal.org/i/3245803):
        Allowed Varbase YouTube Import module to work with Composer ~2.0

### Updates since Varbase 9.0.2:
* Issue [#3246789](https://www.drupal.org/i/3246789):
        Updated Fast 404 module from 2.x-dev to 2.0-alpha6 ( ~2.0 )
* Issue [#3246778](https://www.drupal.org/i/3246778):
        Updated Layout Builder Library module from 1.0-beta2 to 1.0-beta3 ( ~1.0 )
        and remove committed patches
* Issue [#3246796](https://www.drupal.org/i/3246796):
        Updated Maxlength module from ~1.0 to ~2.0
* Issue [#3246802](https://www.drupal.org/i/3246802):
        Updated Maxlength module from ~1.0 to ~2.0 for the Varbase Landing Page (Paragraphs) module
* Issue [#3246803](https://www.drupal.org/i/3246803):
        Updated Maxlength module from ~1.0 to ~2.0 for the Varbase Media Hero Slider module
* Issue [#3246800](https://www.drupal.org/i/3246800):
        Updated Maxlength module from ~1.0 to ~2.0 for the Varbase FAQs module
* Issue [#3246801](https://www.drupal.org/i/3246801):
        Updated Maxlength module from ~1.0 to ~2.0 for the Varbase Bootstrap Paragraph module

### Fixes since Varbase 9.0.2:
* Issue [#3247625](https://www.drupal.org/i/3247625)
        by [Ahmad Abbad](https://www.drupal.org/u/ahmad-abbad)
       : Fixed admin Content and User Admin People view old config
        after change of schema config by the Views Bulk Operation module
* Issue [#3218138](https://www.drupal.org/i/3218138)
        by [RajabNatshah](https://www.drupal.org/u/rajabnatshah)
       , [ahillio](https://www.drupal.org/u/ahillio)
       , [alexpott](https://www.drupal.org/u/alexpott)
       : Fixed Invalid argument supplied for foreach() UpdateChecklist.php
* Issue [#3249335](https://www.drupal.org/i/3249335)
       : Fixed Media Table and Media Grid view old config after change
        of schema config by the Views Bulk Operation module
* Issue [#3244168](https://www.drupal.org/i/3244168)
        by mohammad faqeh
       : Fixed style for inline entity table inside layout builder modal
* Issue [#3244849](https://www.drupal.org/i/3244849)
        by [Ahmad Abbad](https://www.drupal.org/u/ahmad-abbad)
       : Fixed border color (side) variation classes in Bootstrap
        Styles for Varbase Layout Builder default configs
* Issue [#3214993](https://www.drupal.org/i/3214993)
        by [solanas](https://www.drupal.org/u/solanas)
       , [Joachim Namyslo](https://www.drupal.org/u/joachim-namyslo)
       : Fix not working Gallery media type display mode with Slick Carousel
        in text formatted with the CKEditor
* Issue [#3245763](https://www.drupal.org/i/3245763)
        by [Alaa Jwiehan](https://www.drupal.org/u/alaa-jwiehan)
       : Fixed missing CircleCI commit branch filter
* Issue [#3245889](https://www.drupal.org/i/3245889)
        by [Qusai Taha](https://www.drupal.org/u/qusai-taha)
       : Fixed broken Pager when items been selected by the views bulk operation
* Issue [#3246182](https://www.drupal.org/i/3246182)
        by [RajabNatshah](https://www.drupal.org/u/rajabnatshah)
       , [Delana_Alkurdi](https://www.drupal.org/u/delana_alkurdi)
       : Fixed Media library from Drupal core on user can add more than
        one image if he swipe to add them from the next page from the media library window
* Issue [#3245768](https://www.drupal.org/i/3245768)
        by [Odai Atieh](https://www.drupal.org/u/odai-atieh)
       : Fixed IEF complex widget: Re-ordering issue

--------------------------------------------------------------------------------

# 9.0.2

### Highlighted important changes since Varbase 9.0.1:
This is a patch (bugfix) release of Varbase 9 and is ready for
 use on production sites. Learn more about Varbase 9.

* Issue [#3160148](https://www.drupal.org/i/3160148):
        Added access permission check to "View JSON" operation link
* Issue [#3160149](https://www.drupal.org/i/3160149):
        Fixed "View API Documentation" link in entity operations
* Issue [#3243594](https://www.drupal.org/i/3243594):
        Added new permissions to Site Admin user role to access "View JSON"
        and "View API Docs" entity operations
* Issue [#3232568](https://www.drupal.org/i/3232568):
        Switched Varbase Entity Definition Update Manager class to extend
        the vardot/entity-definition-update-manager class library
* Issue [#3236754](https://www.drupal.org/i/3236754):
        Removed the Quick Edit module from Varbase install
* Added drush ~10 to require-dev only for development workflow
        [#115](https://github.com/Vardot/varbase-project/pull/115)
        for the default vardot/varbase-project template
* Added drupal/core-dev ~9 to require-dev only for development workflow
        [#116](https://github.com/Vardot/varbase-project/pull/116)
        for the default vardot/varbase-project template
* Issue [#3243512](https://www.drupal.org/i/3243512):
        Added lint:yaml and update the package.json for Varbase Installation
        profile with latest Drupal 9.3.x dev tools


### Added since Varbase 9.0.1:
* Issue [#3233071](https://www.drupal.org/i/3233071):
        Added lint:yaml and update the package.json for Varbase Core module
        with latest Drupal 9.3.x dev tools
* Issue [#3238527](https://www.drupal.org/i/3238527):
        Added lint:yaml and update the package.json for Varbase Editor module
        with latest Drupal 9.3.x dev tools
* Issue [#3230811](https://www.drupal.org/i/3230811):
        Added lint:yaml and update the package.json for Varbase Layout Builder module
        with latest Drupal 9.3.x dev tools
* Issue [#3230881](https://www.drupal.org/i/3230881):
        Added lint:yaml and update the package.json for Varbase API module
        with latest Drupal 9.3.x dev tools
* Issue [#3232675](https://www.drupal.org/i/3232675):
        Added lint:yaml and update the package.json for Vartheme BS4
        with latest Drupal 9.3.x dev tools
* Issue [#3233072](https://www.drupal.org/i/3233072):
        Added lint:yaml and update the package.json for Varbase Media module
        with latest Drupal 9.3.x dev tools
* Issue [#3236760](https://www.drupal.org/i/3236760):
        Added lint:yaml and update the package.json for Varbase Carousels module
        with latest Drupal 9.3.x dev tools
* Issue [#3232518](https://www.drupal.org/i/3232518):
        Added lint:yaml and update the package.json for Varbase Blog (Corporate Blog) module
        with latest Drupal 9.3.x dev tools
* Issue [#3239224](https://www.drupal.org/i/3239224):
        Added lint:yaml and update the package.json for Varbase FAQs module
        with latest Drupal 9.3.x dev tools
* Issue [#3239275](https://www.drupal.org/i/3239275):
        Added lint:yaml and update the package.json for Varbase Landing Page (Paragraphs) module
        with latest Drupal 9.3.x dev tools
* Issue [#3236550](https://www.drupal.org/i/3236550):
        Added lint:yaml and update the package.json for Varbase Bootstrap Paragraphs module
        with latest Drupal 9.3.x dev tools
* Issue [#3239735](https://www.drupal.org/i/3239735):
        Added lint:yaml and update the package.json for Varbase Media Header module
        with latest Drupal 9.3.x dev tools
* Issue [#3240009](https://www.drupal.org/i/3240009):
        Added lint:yaml and update the package.json for Varbase Search module
        with latest Drupal 9.3.x dev tools
* Issue [#3240022](https://www.drupal.org/i/3240022):
        Added lint:yaml and update the package.json for Varbase SEO module
        with latest Drupal 9.3.x dev tools
* Issue [#3240452](https://www.drupal.org/i/3240452):
        Added lint:yaml and update the package.json for Varbase Style Guide module
        with latest Drupal 9.3.x dev tools
* Issue [#3240580](https://www.drupal.org/i/3240580):
        Added lint:yaml and update the package.json for Varbase Total Control Dashboard module
        with latest Drupal 9.3.x dev tools
* Issue [#3240863](https://www.drupal.org/i/3240863):
        Added lint:yaml and update the package.json for Varbase Workflow module
        with latest Drupal 9.3.x dev tools
* Issue [#3241258](https://www.drupal.org/i/3241258):
        Added lint:yaml and update the package.json for Vartheme Claro admin theme
        with latest Drupal 9.3.x dev tools
* Issue [#3239221](https://www.drupal.org/i/3239221):
        Added lint:yaml and update the package.json for Varbase Email module
        with latest Drupal 9.3.x dev tools
* Issue [#3238344](https://www.drupal.org/i/3238344):
        Added lint:yaml and update the package.json for Varbase Media Hero Slider module
        with latest Drupal 9.3.x dev tools
* Issue [#3106983](https://www.drupal.org/i/3106983)
        by [rjzaar](https://www.drupal.org/u/rjzaar)
       , [RajabNatshah](https://www.drupal.org/u/rajabnatshah)
       : Added a documentation link for Configuring Varbase Media Header
        with more examples after fixing vmh on install does not set
        video (external) on Main Media (field_media)
* Issue [#3128226](https://www.drupal.org/i/3128226):
        Added Automated Testing for the Varbase SEO module
* Issue [#3117658](https://www.drupal.org/i/3117658)
        by [Mohammed J. Razem](https://www.drupal.org/u/mohammed-j-razem)
       : Added automated tests to test the Javascript Snippets functionality
* Issue [#3128228](https://www.drupal.org/i/3128228):
        Added Automated Testing for the Varbase Style Guide module
* Issue [#3076980](https://www.drupal.org/i/3076980):
        Added Automated Testing for the Varbase Total Control Dashboard module
* Issue [#3240880](https://www.drupal.org/i/3240880):
        Added Automated Testing for the Varbase Workflow module
* Added -O option to wget for twig-lint.phar
        [#118](https://github.com/Vardot/varbase-project/pull/118)
        by [Tolga Ozses](https://github.com/kartagis)
        for the default vardot/varbase-project template

### Changed since Varbase 9.0.1:
* Issue [#3170679](https://www.drupal.org/i/3170679):
        Changed JSON:API Resource overrides to disable all by
        default for any entity config in JSON API. Only Enable for entity
        content Content Types, Media, and Taxonomy
* Issue [#3199617](https://www.drupal.org/i/3199617)
        by [zterry95](https://www.drupal.org/u/zterry95)
       : Switched Varbase Core to use Entity Definition Update Manager class
        from vardot/entity-definition-update-manager class library
* Issue [#3232612](https://www.drupal.org/i/3232612):
        Switched Varbase API module to use Entity Definition Update Manager class
        from vardot/entity-definition-update-manager class library
* Issue [#3232617](https://www.drupal.org/i/3232617):
        Switched Varbase Media to use Entity Definition Update Manager class
        from vardot/entity-definition-update-manager class library
* Issue [#3239227](https://www.drupal.org/i/3239227):
        Switched Varbase FAQs to use Entity Definition Update Manager class
        from vardot/entity-definition-update-manager class library
* Issue [#3239282](https://www.drupal.org/i/3239282):
        Switched Varbase Landing Page (Paragraphs) to use Entity Definition Update Manager class
        from vardot/entity-definition-update-manager class library
* Issue [#3232624](https://www.drupal.org/i/3232624):
        Switched Varbase Layout Builder to use Entity Definition Update Manager class
        from vardot/entity-definition-update-manager class library
* Issue [#3239580](https://www.drupal.org/i/3239580):
        Switched Varbase Bootstrap Paragraphs to use Entity Definition Update Manager class
        from vardot/entity-definition-update-manager class library
* Issue [#3239800](https://www.drupal.org/i/3239800):
        Switched Varbase Media Header to use Entity Definition Update Manager class
        from vardot/entity-definition-update-manager class library
* Issue [#3240024](https://www.drupal.org/i/3240024):
        Switched Varbase SEO to use Entity Definition Update Manager class
        from vardot/entity-definition-update-manager class library
* Issue [#3240875](https://www.drupal.org/i/3240875):
        Switched Varbase Workflow to use Entity Definition Update Manager class
        from vardot/entity-definition-update-manager class library
* Issue [#3223249](https://www.drupal.org/i/3223249):
        Changed Varbase API module project Description and images
* Removed phpunit/phpunit from the services appserver build step in the .lando.yml file
        [#117](https://github.com/Vardot/varbase-project/pull/117)
        for the default vardot/varbase-project template
* Removed duplicate line from README.md 
        [#119](https://github.com/Vardot/varbase-project/pull/119)
        by [Tolga Ozses](https://github.com/kartagis)
        for the default vardot/varbase-project template

### Updates since Varbase 9.0.1:
* Issue [#3233381](https://www.drupal.org/i/3233381):
        Updated Entity Embed module from 1.1 to 1.2
* Issue [#3236467](https://www.drupal.org/i/3236467):
        Updated Advanced Text Formatter module
        from 2.1.0 to 2.1.1 ( ~2.0 ) and remove committed patches
* Issue [#3202379](https://www.drupal.org/i/3202379)
        by [jedgar1mx](https://www.drupal.org/u/jedgar1mx)
        : Updated Taxonomy Menu module from 3.x-dev to ~3.0
* Issue [#3238384](https://www.drupal.org/i/3238384)
        : Updated OpenAPI for JSON:API module from 3.0.1 to 3.0.2
* Issue [#3240886](https://www.drupal.org/i/3240886)
        by [thejimbirch](https://www.drupal.org/u/thejimbirch)
        : Updated Tour configurations for changes made to Tour Varbase Core module in Drupal 9.2
* Issue [#3241720](https://www.drupal.org/i/3241720)
        by [thejimbirch](https://www.drupal.org/u/thejimbirch)
        : Updated Tour configurations for changes made to Tour Varbase Media Hero Slider module in Drupal 9.2

### Fixes since Varbase 9.0.1:
* Issue [#3228612](https://www.drupal.org/i/3228612)
        by [qusai taha](https://www.drupal.org/u/qusai-taha)
        : Fixed not working border classes from the Bootstrap Styles module
        in Layout Builder pages for a default Bootstrap Theme
* Issue [#3189326](https://www.drupal.org/i/3189326)
        by [abu-zakham](https://www.drupal.org/u/abu-zakham)
        : Added 2 patches for the OpenAPI for JSON:API module to fix issues with 
        endpoints when JSON:API is configured to be read-only
* Issue [#3232630](https://www.drupal.org/i/3232630):
        Fixed Bootstrap Barrio theme schema for configuration files used in Vartheme BS4
* Issue [#3233388](https://www.drupal.org/i/3233388)
        by [jedgar1mx](https://www.drupal.org/u/jedgar1mx)
        : Fixed not existing method notice for the Advanced Text Formatter
        module and filter html tags in formatter
* Issue [#3233478](https://www.drupal.org/i/3233478)
        by [Odai Atieh](https://www.drupal.org/u/odai-atieh)
       : Fixed Validation error when saving untranslatable media field for node translation
* Issue [#3222166](https://www.drupal.org/i/3222166)
        : Fixed Entity Storage Exception on Column not found: 1054 Unknown column
        field_media_carousel_slide_target_id in field list
* Issue [#3232787](https://www.drupal.org/i/3232787)
        by [Joachim Namyslo](https://www.drupal.org/u/joachim-namyslo)
        , [RajabNatshah](https://www.drupal.org/u/rajabnatshah)
        : Fixed Bootstrap Styles module uses of AOS animation external library only.
        For better performance and GDPR Compliant
* Issue [#3227717](https://www.drupal.org/i/3227717)
        by [YousefAnbar](https://www.drupal.org/u/yousefanbar)
        : Fixed Field field_media_single is unknown error on changing the default media field
* Issue [#3241711](https://www.drupal.org/i/3241711):
        Fixed Varbase install message
* Issue [#3241751](https://www.drupal.org/i/3241751):
        Fixed Varbase Workflow requires drupal/core ~8.9 || ~9.0.0 with ~8.0 || ~9.0
* Issue [#3242196](https://www.drupal.org/i/3242196):
        Fixed to have a better build and test with CircleCI with 4 concurrent jobs
* Issue [#3239668](https://www.drupal.org/i/3239668)
        by [Ahmad Abbad](https://www.drupal.org/u/ahmad-abbad)
        : Fixed by removing config varbase_bootstrap_paragraphs.settings
        from Varbase installation profile

--------------------------------------------------------------------------------

# 9.0.1

### Highlighted important changes since Varbase 9.0.0:
* This is a patch (bugfix) release of Varbase 9 and is ready for use on production sites. Learn more about Varbase 9.

### Added since Varbase 9.0.0:
* Added support for the Varbase Updater ( Auto updater ) to
        auto update Varbase ~8 sites to Varbase ~9.0
        [#40](https://github.com/Vardot/varbase-updater/issues/40)
* Added support for the Varbase Subprofile Generator to use Varbase 9
        to generate Varbase Sub profile Basic template profile 
        [#4](https://github.com/Vardot/varbase-subprofile-generator/issues/4)

### Changed since Varbase 9.0.0:
* Issue [#3222020](https://www.drupal.org/i/3222020)
        by lanetterm
        : Removed not used automated testing asset files, like the English file with
        spaces and CAPITAL Letters.pdf and the other RTL - PDF file
* Issue [#3222735](https://www.drupal.org/i/3222735)
        by mohammad faqeh
        : Removed divider div from node edit Edit a Blog post
* Issue [#3226647](https://www.drupal.org/i/3226647):
        by lanetterm
        Changed composer.json file to let Varbase Blog require
        Varbase Layout Builder ~9.0 or ~10 for easier upgrade process
* Issue [#3226646](https://www.drupal.org/i/3226646):
        by lanetterm
        Changed composer.json file to let Varbase FAQs require
        Varbase Layout Builder ~9.0 or ~10 for easier upgrade process

### Updates since Varbase 9.0.0:
* Issue [#3222222](https://www.drupal.org/i/3222222):
        Updated Block Content Permissions module from 1.x-dev to ~1.0
* Issue [#3222221](https://www.drupal.org/i/3222221):
        Updated Password Policy module from 3.0-beta1 to ~3.0 and remove committed patches
* Issue [#3222234](https://www.drupal.org/i/3222234):
        Updated Simple XML sitemap module from ~3.0 to ~4.0

### Fixes since Varbase 9.0.0:
* Issue [#3223560](https://www.drupal.org/i/3223560)
        by Ahmad Abbad
       : Fixed outdated Nodejs version and the steps for how to create a new sub theme
* Issue [#3222411](https://www.drupal.org/i/3222411):
        Fixed PHP 7.4 Warning: count(): Parameter must be an array or an object that
        implements Countable
* Issue [#3222053](https://www.drupal.org/i/3222053):
        Fixed to allow content editors to use stored selected layouts on the Full content
        display mode with layout builder
* Issue [#3222375](https://www.drupal.org/i/3222375):
        Fixed Notice: Undefined index: background_edgetoedge
* Issue [#3225177](https://www.drupal.org/i/3225177)
        by Joachim Namyslo
       : Fixed Styleguide missing plugin ID. Which does not work in 9.x anymore
* Issue [#3223393](https://www.drupal.org/i/3223393):
        Fixed dependencies enable for Configuration Update Manager module by changing
        drupal:config_update to config_update:config_update

--------------------------------------------------------------------------------

# 9.0.0

### Highlighted important changes since Varbase 9.0.0-rc2:
* Issue [#3218194](https://www.drupal.org/i/3218194):
        Added Vertical and Horizontal alignments to section styling settings for
        Varbase Layout Builder ~10
* Issue [#3210657](https://www.drupal.org/i/3210657):
        Added Boxed options ( Wide, Medium, Narrow, Tiny ) in Varbase Layout Builder ~10
* Issue [#3207154](https://www.drupal.org/i/3207154):
        Changed the style for Social Auth login buttons to go with the new standard branding and trust
* Issue [#3206185](https://www.drupal.org/i/3206185):
        Added Media Bulk Upload module

### Added since Varbase 9.0.0-rc2:
* Issue [#3152887](https://www.drupal.org/i/3152887)
        by [Mohammed J. Razem](https://www.drupal.org/u/mohammed-j-razem)
       : Added an operations link for nodes with Layout Builder enabled
* Issue [#3207105](https://www.drupal.org/i/3207105):
        Added Bootstrap Display headings sizes to CKEditor styles for the Rich editor in Varbase Editor
* Issue [#3206775](https://www.drupal.org/i/3206775):
        Added Editor Advanced link module 
* Issue [#3206322](https://www.drupal.org/i/3206322
        by [Mohammed J. Razem](https://www.drupal.org/u/mohammed-j-razem)
       : Added permissions for Media Bulk Upload config. All roles (Editor and above can upload in bulk)
* Issue [#3206323](https://www.drupal.org/i/3206323)
        by [Mohammed J. Razem](https://www.drupal.org/u/mohammed-j-razem)
       : Added permissions for Media Bulk Upload config for SEO admin user role to be able to upload in bulk
* Issue [#3205085](https://www.drupal.org/i/3205085):
        Added a tag release-varbase workflow job for the CircleCI automated testing pipelines
* Issue [#3210225](https://www.drupal.org/i/3210225)
        by [Omar Alahmed](https://www.drupal.org/u/omar-alahmed)
       : Added more options for pathauto user control. To alter the list of punctuation characters for Pathauto

### Changed since Varbase 9.0.0-rc2:
* Issue [#3217858](https://www.drupal.org/i/3217858):
        Support PHP7.4 for Varbase ~9.0 and all used components with automated testing
* Issue [#3215775](https://www.drupal.org/i/3215775):
        Locked Vartheme BS4 to require Bootstrap Barrio ~5.1.0 versions. Not to let it
        require Bootstrap Barrio ~5.5.0 which using the Bootstrap ~5.0 library
* Issue [#3213179](https://www.drupal.org/i/3213179):
        Changed main js file in package.json from "main": "index.js" to "main": "gulpfile.js"
* Issue [#3209964](https://www.drupal.org/i/3209964):
        Removed VARTHEME_BS4_SUBTHEME/yarn.lock file to let new generated sub themes use latest packages
* Issue [#3173409](https://www.drupal.org/i/3173409):
        Started a 9.0.x branch for Varbase FAQs to work with Varbase ~9.0 and Drupal ~9.0
* Issue [#3185563](https://www.drupal.org/i/3185563):
        Allowed Varbase FAQs module to work with Composer ~2.0
* Issue [#3211900](https://www.drupal.org/i/3211900):
        Switched Varbase FAQs section page to use Varbase Layout Builder ~10
* Issue [#3217842](https://www.drupal.org/i/3217842):
        Dropped support for Bootstrap 3 in Bootstrap Layout Builder general scripts behaviors
* Issue [#3220489](https://www.drupal.org/i/3220489):
        Started a 3.0.x branch for Vartheme Claro admin theme to work with Varbase 9.0.x and Drupal 9
* Issue [#3220899](https://www.drupal.org/i/3220899):
        Updated the Normalizer and Denormalize patch for Layout Builder in the Default Content module
* Issue [#3220904](https://www.drupal.org/i/3220904):
        Updated Default Layout config for Varbase Landing page (Layout Builder)
* Issue [#3220906](https://www.drupal.org/i/3220906):
        Updated Default Layout config and Default Content in Varbase Blog for the Blog section
* Issue [#3220965](https://www.drupal.org/i/3220965):
        Moved block configs from config/install to config/optional for Vartheme Claro
        which used at the time of Varbase install

### Updates since Varbase 9.0.0-rc2:
* Issue [#3220503](https://www.drupal.org/i/3220503):
        Updated Vartheme Claro admin theme from ~2.0 to ~3.0
* Issue [#3207629](https://www.drupal.org/i/3207629):
        Updated Drupal core from 9.1.5 to 9.1.6 ( ~9.1 ) and remove committed patches
* Issue [#3201723](https://www.drupal.org/i/3201723)
        by [jedgar1mx](https://www.drupal.org/u/jedgar1mx)
       : Updated LinkIt module from ~5.0 to ~6.0
* Issue [#3212948](https://www.drupal.org/i/3212948):
        Updated Admin Toolbar module from ~2.0 to ~3.0
* Issue [#3209303](https://www.drupal.org/i/3209303):
        Updated Blazy module from 2.1 to 2.2 ( ~2.0 ) and remove applied patches
* Issue [#3209310](https://www.drupal.org/i/3209310):
        Updated Inline Entity Form module from 1.0-rc8 to 1.0-rc9
* Issue [#3209317](https://www.drupal.org/i/3209317):
        Updated Chaos Tool Suite (ctools) module from 3.4 to 3.5 ( ~3.0 ) and remove committed patches
* Issue [#3219691](https://www.drupal.org/i/3219691):
        Updated Total Control module from ~2.0 to ~3.0
* Issue [#3219699](https://www.drupal.org/i/3219699):
        Updated Editor Advanced Link module from ~1.0 to ~2.0
* Issue [#3219700](https://www.drupal.org/i/3219700):
        Updated OpenAPI for JSON:API module from ~2.0 to ~3.0
* Issue [#3219707](https://www.drupal.org/i/3219707):
        Updated Simple OAuth (OAuth2) & OpenID Connect module from ~4.0 to ~5.0
* Issue [#3219834](https://www.drupal.org/i/3219834):
        Updated Views Bulk Operations (VBO) module from ~3.0 to ~4.0
* Issue [#3219836](https://www.drupal.org/i/3219836):
        Updated Views Bulk Operations (VBO) module from ~3.0 to ~4.0 for Varbase Media
* Issue [#3219841](https://www.drupal.org/i/3219841):
        Updated Tour UI module from 1.x-dev to ~1.0

### Fixes since Varbase 9.0.0-rc2:
* Issue [#3211345](https://www.drupal.org/i/3211345):
        Fixed order of the Language field when creating Landing page (Layout Builder) content on multilingual websites
* Issue [#3207652](https://www.drupal.org/i/3207652):
        Fixed width of fieldgroup after the fix of Off-canvas style resets in Drupal core
* Issue [#3205399](https://www.drupal.org/i/3205399)
        by [mhawwari](https://www.drupal.org/u/mhawwari)
       : Fixed input width inside tables on mobile
* Issue [#3175233](https://www.drupal.org/i/3175233)
        by [Abdelrahman Amer](https://www.drupal.org/u/abdelrahman-amer)
       : Fixed permission Issues on Subqueues
* Issue [#3207137](https://www.drupal.org/i/3207137):
        Fixed Text format style in Edit Inline blocks with layout builder modal
* Issue [#3209730](https://www.drupal.org/i/3209730):
        Fixed code coverage for Node component style on NO node pages
* Issue [#3209746](https://www.drupal.org/i/3209746):
        Fixed code coverage for Comments component style on pages without comments
* Issue [#3209687](https://www.drupal.org/i/3209687):
        Fixed code coverage for Node preview component CSS style loaded for anonymous users
* Issue [#3210581](https://www.drupal.org/i/3210581):
        Fixed code coverage for Alerts component style on pages with no Alerts
* Issue [#3210596](https://www.drupal.org/i/3210596):
        Fixed code coverage for Indented component style for threaded comments on pages without comments
* Issue [#3210583](https://www.drupal.org/i/3210583):
        Fixed code coverage for Affix effect component style when the Affix theme settings is off
* Issue [#3210580](https://www.drupal.org/i/3210580):
        Fixed code coverage for Breadcrumbs component style on pages with no breadcrumbs
* Issue [#3210577](https://www.drupal.org/i/3210577):
        Fixed code coverage for file component style on pages with no files
* Issue [#3210537](https://www.drupal.org/i/3210537):
        Fixed code coverage for Collapsed sidebar styles on pages with no sidebar
* Issue [#3210528](https://www.drupal.org/i/3210528):
        Fixed code coverage for print layout CSS loaded for all medias, which
        should only load for media: print
* Issue [#3210526](https://www.drupal.org/i/3210526):
        Fixed code coverage for Tabs and Vertical tabs components style loaded for anonymous or
        basic authenticated users when no Tabs elements in the page
* Issue [#3210524](https://www.drupal.org/i/3210524):
        Fixed code coverage for Dropbutton component style loaded for anonymous or basic
        authenticated users when no Dropbutton elements in the page
* Issue [#3209928](https://www.drupal.org/i/3209928):
        Fixed code coverage for vbp-colors library of custom Varbase Bootstrap Paragraphs colors
        theme for Vartheme which are loading on a not paragraphs page
* Issue [#3209905](https://www.drupal.org/i/3209905):
        Fixed code coverage for navbar administration component style loaded for anonymous or
        basic authenticated users when no toolbar in the page
* Issue [#3210532](https://www.drupal.org/i/3210532):
        Fixed code coverage for Better Login styling on not register, login, or reset password pages
* Issue [#3210590](https://www.drupal.org/i/3210590):
        Fixed code coverage for Book navigation component style on pages with
        no book navigation elements
* Issue [#3210575](https://www.drupal.org/i/3210575): Fixed code coverage for Form component style or Search form block on pages with no forms
* Issue [#3209970](https://www.drupal.org/i/3209970):
        Fixed code coverage for preloaded remote CDN Font Awesome library to a packaged
        one for better pre-loading of icons
* Issue [#3212956](https://www.drupal.org/i/3212956): Fixed code coverage for preloaded RTL fonts
* Issue [#3216039](https://www.drupal.org/i/3216039)
        by [mhawwari](https://www.drupal.org/u/mhawwari)
       : Fixed modules enabled condition always fails when value is empty
* Issue [#3216704](https://www.drupal.org/i/3216704)
        by [mhawwari](https://www.drupal.org/u/mhawwari)
       : Fixed W3C CSS validation issues
* Issue [#3211878](https://www.drupal.org/i/3211878)
        by [mhawwari](https://www.drupal.org/u/mhawwari)
       , [RajabNatshah](https://www.drupal.org/u/rajabnatshah)
       : Fixed call to non-existent file loading-small.gif by recompiling the scss
        files for new changes in Claro admin theme
* Issue [#3213517](https://www.drupal.org/i/3213517)
        by [earthday47](https://www.drupal.org/u/earthday47)
       : Fixed PHP 7.4 + warnings = cannot add to entity queues
* Issue [#3220082](https://www.drupal.org/i/3220082)
        by [Ahmad Abbad](https://www.drupal.org/u/ahmad-abbad)
       , [RajabNatshah](https://www.drupal.org/u/rajabnatshah)
       : Fixed Draggable tables are not working in Drupal 9.2.x
* Issue [#3220149](https://www.drupal.org/i/3220149):
        Fixed warning Invalid argument in Update Checklist
* Issue [#3220659](https://www.drupal.org/i/3220659)
        by [jedgar1mx](https://www.drupal.org/u/jedgar1mx)
       , [RajabNatshah](https://www.drupal.org/u/rajabnatshah)
       : Fixed missing Swagger-ui library
* Issue [#3219345](https://www.drupal.org/i/3219345):
        Fixed Tour styling after the update to Drupal 9.2.0

--------------------------------------------------------------------------------

# 9.0.0-rc2

### Highlighted important changes since Varbase 9.0.0-rc1:
* Issue [#3196489](https://www.drupal.org/i/3196489):
                Updated Varbase Layout Builder module from ~9.0 to ~10.0
* Issue [#3190716](https://www.drupal.org/i/3190716):
                 Started a 10.0.x branch for Varbase Layout Builder to use Bootstrap
                 Styles and Bootstrap Layout Builder
* Issue [#3204731](https://www.drupal.org/i/3204731):
                 Changed default content for the Homepage to match with the 
                Varbase Layout Builder ~10 config structure
* Issue [#3163199](https://www.drupal.org/i/3163199):
                 Switched Blog site section page, Blog post, Blog categories,
                 and Tags to use Varbase Layout Builder ~10
* Issue [#3202306](https://www.drupal.org/i/3202306):
                 Changed style of Edit Layout page and preview of sections
                 to look like the front end view of the page
* Issue [#3202838](https://www.drupal.org/i/3202838):
                 Changed Varbase Layout Builder default set of breakpoints,
                 layouts, and styles
* Issue [#3202093](https://www.drupal.org/i/3202093):
                 Added a checkbox "Keep gutters between columns" to section layout
                 and Default options for sections
* Issue [#3199210](https://www.drupal.org/i/3199210):
                 Fixed the style of ADD TO LIBRARY and IMPORT FROM LIBRARY
                 for Layout Builder Section Library
* Issue [#3199217](https://www.drupal.org/i/3199217):
                 Made Edge to edge background default checked on
* Issue [#3199224](https://www.drupal.org/i/3199224):
                 Fixed Container type and Gutters layouts rendering

### Added since Varbase 9.0.0-rc1:
* Issue [#3192175](https://www.drupal.org/i/3192175):
                 Added WebP module ~1.0 and enable by default
* Issue [#3197899](https://www.drupal.org/i/3197899):
                 Added Bootstrap 5 Utility aliases for Bootstrap 4
* Issue [#3192508](https://www.drupal.org/i/3192508):
                 Added Preloaded fonts include in Vartheme BS4
* Issue [#3199553](https://www.drupal.org/i/3199553):
                 Added vlb-section not styled CSS class to be used to grep and style all Varbase Layout Builder sections
* Issue [#3195678](https://www.drupal.org/i/3195678)
                 by [yasmeensalah](https://www.drupal.org/u/yasmeensalah)
                : Added lazy-loading for the Remote video iframe
* Issue [#3190047](https://www.drupal.org/i/3190047)
                 by [davyin](https://www.drupal.org/u/davyin)
                : Added Length Indicator dependency in composer.json
* Issue [#3188214](https://www.drupal.org/i/3188214)
                 by [yasmeensalah](https://www.drupal.org/u/yasmeensalah)
                : Added section classes to the section attributes
* Issue [#3202476](https://www.drupal.org/i/3202476):
                 Applied a patch for the Layout Builder Library module on an
                 issue with creating a new layout override for a node from selected
                 Layout Library selection

### Changed since Varbase 9.0.0-rc1:
* Issue [#3194401](https://www.drupal.org/i/3194401):
                 Switched to CircleCI as the default automated testing platform
* Issue [#3188641](https://www.drupal.org/i/3188641):
                 Changed the set front page to "/node" process from using static
                 node id to front page path by the alias
* Issue [#3196988](https://www.drupal.org/i/3196988):
                 Changed Bootstrap Barrio theme version from ~5.0 to ~5.1 for using
                 Bootstrap 4 only
* Issue [#3189275](https://www.drupal.org/i/3189275)
                 by [Omar Alahmed](https://www.drupal.org/u/omar-alahmed)
                 : Removed px-4 and text-center Bootstrap classes from
                 bs-1col--vlb.html.twig template
* Issue [#3192092](https://www.drupal.org/i/3192092)
                 by [yasmeensalah](https://www.drupal.org/u/yasmeensalah)
                : Removed duprecated uriScheme function and use Stream
                 Wrapper Manager Interface getScheme for Drupal 9 compatibility
* Issue [#3188647](https://www.drupal.org/i/3188647):
                 Changed the reset timestamp for all nodes provided by all
                 custom Default Content modules
* Issue [#3204768](https://www.drupal.org/i/3204768):
                 Removed the old vartheme_bs4/vlb-colors library for Vartheme BS4
                 Varbase Layout Builder colors theme.
                 As the varbase_layout_builder/vlb-colors had been removed from Varbase Layout Builder ~10
* Issue [#3201146](https://www.drupal.org/i/3201146):
                 Backported .gx- to Vartheme BS4 from Bootstrap 5 to be used
                 with Bootstrap 4 using the gutter size in px, not in rem to
                 be inline with Bootstrap 4
* Issue [#3201141](https://www.drupal.org/i/3201141):
                 Changed .px-4 to use the right .gx-* CSS class from Bootstrap 5
                 to be used with Bootstrap 4 using the gutter size in px, not in
                 rem to be inline with Bootstrap 4
* Issue [#3201602](https://www.drupal.org/i/3201602):
                 Switched definition class for the Layout Builder provider from
                 Bootstrap Layout class to Varbase Layout Builder Bootstrap Layout class
* Issue [#3202085](https://www.drupal.org/i/3202085):
                 Switched Templates from Bootstrap Layout Builder to Varbase Layout Builder
* Issue [#3197105](https://www.drupal.org/i/3197105):
                 Changed all Default Content in Varbase Core for the Homepage to work
                 with VLB ~10.0
* Issue [#3197106](https://www.drupal.org/i/3197106):
                 Changed Default Layout config and Default Content in Varbase Blog
                 for the Blog site section page to work with VLB ~10.0
* Issue [#3197938](https://www.drupal.org/i/3197938)
                 by [mhawwari](https://www.drupal.org/u/mhawwari)
                : Removed unused use statements for namespaces in .theme
* Issue [#3192092](https://www.drupal.org/i/3192092)
                 by [yasmeensalah](https://www.drupal.org/u/yasmeensalah)
                : Removed duprecated uriScheme function and use Stream Wrapper Manager
                 Interface getScheme for Drupal 9 compatibility

### Updates since Varbase 9.0.0-rc1:
* Issue [#3201685](https://www.drupal.org/i/3201685):
                 Updated Drupal core from 9.1.4 to 9.1.5 ( ~9.1 ) and remove
                 committed patches
* Issue [#3193729](https://www.drupal.org/i/3193729):
                 Updated Bootstrap library from 4.5.3 to 4.6.0
Bootstrap v4.6.0 was released
* Issue [#3193218](https://www.drupal.org/i/3193218):
                 Updated Font Awesome Free library from v5.0.13 to v5.15.2
* Issue [#3193863](https://www.drupal.org/i/3193863):
                 Updated npm-asset/dropzone library from ~4.0 to ~5.0
* Issue [#3188453](https://www.drupal.org/i/3188453)
                 by [Firass Ziedan](https://www.drupal.org/u/firass-ziedan)
                : Updated Media Library Edit module from 1.0-alpha2 to ( ~2.0 ) and removed committed patches
* Issue [#3190301](https://www.drupal.org/i/3190301):
                 Updated Content Planner module from 1.0-beta12 to
                 1.0-beta15 ( ~1.0 ) and removed all committed patches
* Issue [#3204736](https://www.drupal.org/i/3204736):
                 Updated Coffee module from 1.0 to 1.1 ( ~1.0 )
                 and remove applied patches
* Issue [#3191486](https://www.drupal.org/i/3191486):
                 Updated Social Auth module from ~2.0 to ~3.0
* Issue [#3191926](https://www.drupal.org/i/3191926):
                 Updated Social Auth Google module from ~2.0 to ~3.0
* Issue [#3191483](https://www.drupal.org/i/3191483):
                 Updated Social Auth LinkedIn module from 8.x-2.0-beta3 ( ~2.0 ) to ~3.0
* Issue [#3191931](https://www.drupal.org/i/3191931):
                 Updated Social Auth Twitter module from ~2.0 to 2.x-dev to work with Social Auth ~3.0
* Issue [#3191492](https://www.drupal.org/i/3191492):
                 Updated Social Auth Facebook module from ~2.0 to ~3.0

### Fixes since Varbase 9.0.0-rc1:
* Issue [#3200073](https://www.drupal.org/i/3200073)
                 by [Odai Atieh](https://www.drupal.org/u/odai-atieh)
                : Fixed Blazy Blurry performance issues of not exist derivative
                 image and enhance the logic of the encoding of base64 image
* Issue [#3200242](https://www.drupal.org/i/3200242):
                 Fixed creating Blazy Blurry derivatives only if necessary, and the
                 creation of Image style or responsive image style derivatives only
                 if necessary
* Issue [#3194958](https://www.drupal.org/i/3194958):
                 Fixed Drupal core Off-canvas style resets overriding styles
                 issue after updating browsers for a new feature complex :not()
                 CSS selector
* Issue [#3188131](https://www.drupal.org/i/3188131):
                 Fixed Ultimate Cron module issue with Drupal Core 9.1.x on
                 ArgumentCountError: Too few arguments
* Issue [#3190703](https://www.drupal.org/i/3190703)
                 by [jedgar1mx](https://www.drupal.org/u/jedgar1mx)
                : Fixed Composer 2.0 issue for bower-asset/jqueryui-touch-punch
                 library default branch
* Issue [#3192282](https://www.drupal.org/i/3192282)
                 by [alaa abbad](https://www.drupal.org/u/alaa-abbad)
                : Fixed Dropzonejs widget issue of adding _0 on all image file names
* Issue [#3190218](https://www.drupal.org/i/3190218)
                 by [mhawwari](https://www.drupal.org/u/mhawwari)
                : Fixed error when navigating Layout library Trying to access
                 array offset on value of type null in
                VarbaseLayoutBuilderThemeNegotiator->determineActiveTheme()
* Issue [#3194571](https://www.drupal.org/i/3194571)
                 by [Abdelrahman Amer](https://www.drupal.org/u/abdelrahman-amer)
                : Fixed "maximum call stack size exceeded" JavaScript error
* Issue [#3195789](https://www.drupal.org/i/3195789)
                 by [Firass Ziedan](https://www.drupal.org/u/firass-ziedan)
                : Fixed 404 messing images for Claro admin theme in
                 Varbase Layout Builder
* Issue [#3196236](https://www.drupal.org/i/3196236)
                 by [Abdulla Abu Zakham](https://www.drupal.org/u/abu-zakham)
                : Fixed Error when no comment added to content type
* Issue [#3171864](https://www.drupal.org/i/3171864)
                 by [Firass Ziedan](https://www.drupal.org/u/firass-ziedan)
                : Fixed pages URL in google analytics summary view
* Issue [#3115228](https://www.drupal.org/i/3115228)
                 by calmforce
                : Fixed incorrect numbers in My Site Overview block
                 if type_count above 1000
* Issue [#3188457](https://www.drupal.org/i/3188457)
                 by [Firass Ziedan](https://www.drupal.org/u/firass-ziedan)
                : Update Media Library Form API Element module
                 from 2.0.0 to 2.0.3 ( ~2.0 ) and removed committed patches
* Issue [#3187189](https://www.drupal.org/i/3187189):
                 Fixed composer require for Drupal core to ~8.0 || ~9.0
                 to work with latest Drupal 9.1.x versions
* Issue [#3186916](https://www.drupal.org/i/3186916):
                 Fixed install page function and style for Vartheme Claro
                 admin theme to follow with latest Drupal core 9.1.0 Claro changes
* Issue [#3186937](https://www.drupal.org/i/3186937)
                 by [yasmeensalah](https://www.drupal.org/u/yasmeensalah)
                : Fixed PHP Exception for VMI module on escaped characters in
                 sequences/mappings in *.yml files with latest Symfony/yaml
* Issue [#3199598](https://www.drupal.org/i/3199598)
                 by [Firass Ziedan](https://www.drupal.org/u/firass-ziedan)
                : Fixed CKEditor background color in Vartheme base file
* Issue [#3204734](https://www.drupal.org/i/3204734):
                 Fixed default configs and remove leftover section configs
* Issue [#3200994](https://www.drupal.org/i/3200994)
                 by [Abdulla Abu Zakham](https://www.drupal.org/u/abu-zakham)
                : Fixed LogicException & RuntimeException on user login and
                 registration error when the Twitter social button clicked on

---------------------------------------------------------------------------------

# 9.0.0-rc1

### Highlighted important changes since Varbase 9.0.0-beta1:
* Issue [#3186262](https://www.drupal.org/i/3186262):
                 Updated Drupal core from ~9.0 to ~9.1 and change needed patches
* Issue [#3180950](https://www.drupal.org/i/3180950):
                 Allowed Varbase to work with Composer ~2.0

### Added since Varbase 9.0.0-beta1:
* Issue [#3180926](https://www.drupal.org/i/3180926)
                 by [yasmeensalah](https://www.drupal.org/u/yasmeensalah)
                : Added the ability to hide breadcrumbs from the Media Header

### Changed since Varbase 9.0.0-beta1:
* Issue [#3180646](https://www.drupal.org/i/3180646):
                 Enhanced the logic on the creation of contents with layout
                 library selected layout. the system should not redirect to change the layout
* Issue [#3185416](https://www.drupal.org/i/3185416):
                 Removed container-fluid CSS class from container_attributes
                 and only use when needed
* Issue [#3186298](https://www.drupal.org/i/3186298):
                 Changed Vartheme Claro admin them on Drupal core require in
                 composer from ~9.0.0 to ~9.0
* Issue [#3186302](https://www.drupal.org/i/3186302):
                 Changed Varbase Workflow module on Drupal core require in composer from ~9.0.0 to ~9.0
* Issue [#3185544](https://www.drupal.org/i/3185544):
                 Allowed Varbase Core module to work with Composer ~2.0
* Issue [#3185580](https://www.drupal.org/i/3185580):
                 Allowed Varbase Media module to work with Composer ~2.0
* Issue [#3185550](https://www.drupal.org/i/3185550):
                 Allowed Varbase Editor module to work with Composer ~2.0
* Issue [#3185633](https://www.drupal.org/i/3185633):
                 Allowed Varbase SEO module to work with Composer ~2.0
* Issue [#3185641](https://www.drupal.org/i/3185641):
                 Allowed Varbase Total Control Dashboard module to work with Composer ~2.0
* Issue [#3185512](https://www.drupal.org/i/3185512):
                 Allowed Varbase API module to work with Composer ~2.0
* Issue [#3185521](https://www.drupal.org/i/3185521):
                 Allowed Varbase Auth module to work with Composer ~2.0
* Issue [#3185527](https://www.drupal.org/i/3185527):
                 Allowed Varbase Blog module to work with Composer ~2.0
* Issue [#3185529](https://www.drupal.org/i/3185529):
                 Allowed Varbase Bootstrap Paragraphs module to work with Composer ~2.0
* Issue [#3185536](https://www.drupal.org/i/3185536):
                 Allowed Varbase Carousels module to work with Composer ~2.0
* Issue [#3185555](https://www.drupal.org/i/3185555):
                 Allowed Varbase Email module to work with Composer ~2.0
* Issue [#3185570](https://www.drupal.org/i/3185570):
                 Allowed Varbase Media Hero Slider module to work with Composer ~2.0
* Issue [#3185621](https://www.drupal.org/i/3185621):
                 Allowed Varbase Search module to work with Composer ~2.0
* Issue [#3185635](https://www.drupal.org/i/3185635):
                 Allowed Varbase Styleguide module to work with Composer ~2.0
* Issue [#3185650](https://www.drupal.org/i/3185650):
                 Allowed Varbase Workflow module to work with Composer ~2.0
* Issue [#3185679](https://www.drupal.org/i/3185679):
                 Allowed Vartheme BS4 theme to work with Composer ~2.0
* Issue [#3185574](https://www.drupal.org/i/3185574):
                 Allowed Varbase Landing Page (Paragraphs) module to work with Composer ~2.0
* Issue [#3185605](https://www.drupal.org/i/3185605):
                 Allowed Varbase Media Header module to work with Composer ~2.0
* Issue [#3185578](https://www.drupal.org/i/3185578):
                 Allowed Varbase Layout Builder module to work with Composer ~2.0

### Updates since Varbase 9.0.0-beta1:
* Issue [#3186048](https://www.drupal.org/i/3186048):
                 Updated Rabbit Hole module from 1.0-beta7 to 1.0-beta8 ( ~1.0 )
                 and removed committed patches
* Issue [#3184180](https://www.drupal.org/i/3184180):
                 Updated bower-asset/d3 library from ~3.0 to ~5.0
* Issue [#3179226](https://www.drupal.org/i/3179226):
                 Updated Style Guide module from 1.x-dev to ~2.0 and removed applied
                 patches to support Drupal 9 and the 9.0.x branch

### Fixes since Varbase 9.0.0-beta1:
* Issue [#3185637](https://www.drupal.org/i/3185637)
                 by [abedajam](https://www.drupal.org/u/abedajam)
                : Fixed Update Helper throws an exception
                 after updating to Varbase 8.8.x
* Issue [#3185426](https://www.drupal.org/i/3185426)
                : Fixed escaped characters in sequences/mappings in *.yml file
* Issue [#3186937](https://www.drupal.org/i/3186937)
                 by [yasmeensalah](https://www.drupal.org/u/yasmeensalah)
                : Fixed PHP Exception for VMI module on escaped
                 characters in sequences/mappings in *.yml files with latest Symfony/yaml
* Issue [#3186010](https://www.drupal.org/i/3186010):
                 Fixed Value assigned to "section" is not a valid section
* Issue [#3109712](https://www.drupal.org/i/3109712)
                 by [das-peter](https://www.drupal.org/u/das-peter)
                , [Joachim Namyslo](https://www.drupal.org/u/joachim-namyslo)
                , [sameer](https://www.drupal.org/u/sameer)
                : Fixed Fatal Error from 8.7.11 to 8.8.1 by with plain array as returned by composer getConfig getRepositories #35
* Issue [#3184211](https://www.drupal.org/i/3184211)
                 by [arawashdeh](https://www.drupal.org/u/arawashdeh)
                : Fixed the path typo for RTL Tajawal font
* Issue [#3126444](https://www.drupal.org/i/3126444)
                 by [Andrew Answer](https://www.drupal.org/u/andrew-answer)
                , [AHBJCB](https://www.drupal.org/u/ahbjcb)
                , [RajabNatshah](https://www.drupal.org/u/rajabnatshah)
                : Fixed Ajax failure: Drupal.ajax is undefined
* Issue [#3175989](https://www.drupal.org/i/3175989)
                 by [Andrew Answer](https://www.drupal.org/u/andrew-answer)
                : Fixed not visible Media Gallery
* Issue [#3183988](https://www.drupal.org/i/3183988)
                 by [abedajam](https://www.drupal.org/u/abedajam)
                : Fixed Claro admin theme style of gray fieldset on Google Chrome 87
* Issue [#3179426](https://www.drupal.org/i/3179426):
                 Fixed status of Varbase update instructions to 100% on install
                 and on an installation for optional Varbase components or in a Varbase Sub Profile
* Issue [#3186916](https://www.drupal.org/i/3186916):
                 Fixed install page function and style for Vartheme Claro admin theme
                 to follow with latest Drupal core 9.1.0 Claro changes
* Issue [#3187189](https://www.drupal.org/i/3187189):
                 Fixed composer require for Drupal core to ~8.0 || ~9.0 to work
                 with latest Drupal 9.1.x versions


---------------------------------------------------------------------------------

# 9.0.0-beta1

### Highlighted important changes since Varbase 9.0.0-alpha1:
* Issue [#3179132](https://www.drupal.org/i/3179132):
                 Changed Automated Functional Acceptance Testing to be
                 Drupal 9 compatible on the Varbase 9.0.x branch
* Issue [#3180204](https://www.drupal.org/i/3180204):
                 Updated Varbase Theme (Bootstrap 4 - SASS) from ~6.0
                 ( 8.x-6.x-dev ) to ~9.0 ( 9.0.x-dev ) on the 
                Varbase 9.0.x branch and drop legacy support for Bootstrap 3
* Issue [#3179010](https://www.drupal.org/i/3179010):
                 Added support for dropzonejs widget with Media Library in core
* Issue [#3178141](https://www.drupal.org/i/3178141):
                 Updated Bootstrap library from 4.5.2 to 4.5.3

### Added since Varbase 9.0.0-alpha1:
* Issue [#3180094](https://www.drupal.org/i/3180094):
                 Started a 9.0.x branch for [Vartheme BS4] theme to work
                 with Varbase 9.0.x and Drupal 9 and drop legacy support
                 for Bootstrap 3
* Issue [#3180077](https://www.drupal.org/i/3180077):
                 Added [jQuery UI Accordion] module to work with the
                 [Field Group] under Drupal 9

### Changed since Varbase 9.0.0-alpha1:
* Issue [#3178799](https://www.drupal.org/i/3178799):
                 Styled Content Moderation control. At the Draft view to
                 look the same as moderation status in all locations
* Issue [#3178826](https://www.drupal.org/i/3178826):
                 Removed padding for unpublished nodes in editing mode
                 or under the View existing Draft
* Issue [#3178836](https://www.drupal.org/i/3178836):
                 Changed the style of navigation pager, and mini pager display.
                 To flex and justify content pager elements to the center
* Issue [#3178884](https://www.drupal.org/i/3178884):
                 Changed Schema Config to follow with [Bootstrap Barrio]
                 theme ~5.0 and remove applied patches
* Issue [#3178907](https://www.drupal.org/i/3178907)
                 by [Mohammed J. Razem](https://www.drupal.org/u/mohammed-j-razem)
                 Styled the Node View mode preview bar
* Issue [#3179357](https://www.drupal.org/i/3179357):
                 Changed extended libraries to follow with the latest
                 Claro admin theme libraries in Drupal Core 9
* Issue [#3180091](https://www.drupal.org/i/3180091):
                 Changed Form Display configs for all paragraph types to
                 update Field Group configs to work with Drupal 9
* Issue [#3180646](https://www.drupal.org/i/3180646):
                 Enhanced the logic on the creation of contents with layout
                 library selected layout. the system should not redirect
                 to change the layout
* Issue [#3179613](https://www.drupal.org/i/3179613):
                 Switched [CKEditor Media Embed plugin] module back to
                 1.x-dev by drupal/ckeditor_media_embed to work on
                 the 9.0.x branch
* Issue [#3180829](https://www.drupal.org/i/3180829):
                 Changed Varbase Bootstrap Paragraphs to only support
                 Bootstrap 4 classes and droped legacy support for Bootstrap 3
* Issue [#3180712](https://www.drupal.org/i/3180712):
                 Changed the Varbase Bootstrap Elements in Varbase Styleguide
                 to only support Bootstrap 4 elements and drop legacy
                 support for Bootstrap 3

### Updates since Varbase 9.0.0-alpha1:
* Issue [#3176626](https://www.drupal.org/i/3176626):
                 Updated [Media entity Instagram] from ~2.0 to ~3.0
* Issue [#3179226](https://www.drupal.org/i/3179226):
                 Updated [Style Guide] module from 1.x-dev to ~2.0 and
                 removed applied patches to support Drupal 9 and
                 the 9.0.x branch
* Issue [#3180062](https://www.drupal.org/i/3180062):
                 Updated [CKEditor Media Embed plugin] module
                 from 1.x-dev to 1.10 ( ~1.0 )
* Issue [#3180107](https://www.drupal.org/i/3180107):
                 Updated [Charts] module from ~3.0 to ~5.0
* Issue [#3180114](https://www.drupal.org/i/3180114):
                 Updated [Checklist API] module from ~1.0 to ~2.0

### Fixes since Varbase 9.0.0-alpha1:
* Issue [#3179426](https://www.drupal.org/i/3179426):
                 Fixed status of Varbase update instructions to 100% on
                 install and on an installation for optional
                 Varbase components or in a Varbase Sub Profile
* Issue [#3177937](https://www.drupal.org/i/3177937)
                 by [Firass Ziedan](https://www.drupal.org/u/firass-ziedan)
                , [RajabNatshah](https://www.drupal.org/u/rajabnatshah)
                : Fixed Fatal error in layout page after deleting
                 the media from the media library
* Issue [#3179098](https://www.drupal.org/i/3179098)
                 by [yasmeensalah](https://www.drupal.org/u/yasmeensalah)
                : Fixed Drupal 9 compatibility issues for
                 [Varbase Styleguide] and added Drupal 9 compatibility
                 Fix for the [styleguide] module
* Issue [#3177432](https://www.drupal.org/i/3177432)
                 by [Joachim Namyslo](https://www.drupal.org/u/joachim-namyslo)
                : Fixed Drupal 9 compatibility for [Varbase Content Planner]
                 by adding the patch for the Content Planner sub modules
                 to work with Drupal 9
* Issue [#3179173](https://www.drupal.org/i/3179173)
                 by [yasmeensalah](https://www.drupal.org/u/yasmeensalah)
                : Fixed the RTL style for Content Calendar by adding
                 a patch for the [Content Planner] module
* Issue [#3179217](https://www.drupal.org/i/3179217):
                 Fixed an Error on install by changing the default settings
                 for Vartheme BS4 and VARTHEME_BS4_SUBTHEME to follow with
                 the latest Barrio Schema Config
* Issue [#3180121](https://www.drupal.org/i/3180121):
                 Fixed Render #pre_render callbacks for Field group with
                 Paragraphs asymmetric translation widgets and
                 Field Group module
* Issue [#3177725](https://www.drupal.org/i/3177725)
                 by [Joachim Namyslo](https://www.drupal.org/u/joachim-namyslo)
                , [yasmeensalah](https://www.drupal.org/u/yasmeensalah)
                , [akalam](https://www.drupal.org/u/akalam)
                , [RajabNatshah](https://www.drupal.org/u/rajabnatshah)
                 Fixed Drush 10.x works just partly currently
* Issue [#3181298](https://www.drupal.org/i/3181298):
                 Fixed [Menu Position] issue when adding a new rule on
                 Drupal 9 fails with Schema Incomplete Exception

# ------------------------------------------------------------------------------

# 9.0.0-alpha1

### Highlighted important changes since Varbase 8.x-8.7:
* Issue [#3122672](https://www.drupal.org/i/3122672):
                 Started a 9.0.x branch for Varbase and Varbase Project
                 to integrate with Drupal 9
* Issue [#3145606](https://www.drupal.org/i/3145606):
                 Upgraded [Drupal core] from ~8 to ^9 on the 9.0.x branch
* Issue [#3176656](https://www.drupal.org/i/3176656):
                 Updated the patch to allow profiles to define
                 a base/parent profile for Drupal 9

## No Update/Upgrade path at this time yet. An update path will be managed
## when the stable Varbase 9.0.0 goes out.

### Added since Varbase 8.x-8.7:
* Issue [#3172619](https://www.drupal.org/i/3172619):
                 Started a 9.0.x branch for Varbase Social Single Sign-On
                 to work with Varbase ~9.0 and Drupal ~9.0
* Issue [#3172504](https://www.drupal.org/i/3172504):
                 Started a 9.0.x branch for Varbase API to work with
                 Varbase ~9.0 and Drupal ~9.0
* Issue [#3173229](https://www.drupal.org/i/3173229):
                 Started a 9.0.x branch for Varbase Bootstrap Paragraphs to
                 work with Varbase ~9.0 and Drupal ~9.0
* Issue [#3173238](https://www.drupal.org/i/3173238):
                 Started a 9.0.x branch for Varbase Carousels to work with
                 Varbase ~9.0 and Drupal ~9.0
* Issue [#3173264](https://www.drupal.org/i/3173264):
                 Started a 9.0.x branch for Varbase Editor to work with
                 Varbase ~9.0 and Drupal ~9.0
* Issue [#3173390](https://www.drupal.org/i/3173390):
                 Started a 9.0.x branch for Varbase Email to work with
                 Varbase ~9.0 and Drupal ~9.0
* Issue [#3173409](https://www.drupal.org/i/3173409):
                 Started a 9.0.x branch for Varbase FAQs to work with
                 Varbase ~9.0 and Drupal ~9.0
* Issue [#3173425](https://www.drupal.org/i/3173425):
                 Started a 9.0.x branch for Varbase Landing Page (Paragraphs)
                 to work with Varbase ~9.0 and Drupal ~9.0
* Issue [#3174419](https://www.drupal.org/i/3174419):
                 Started a 9.0.x branch for Varbase Layout Builder to work with
                 Varbase ~9.0 and Drupal ~9.0
* Issue [#3175014](https://www.drupal.org/i/3175014):
                 Started a 9.0.x branch for Varbase Media to work with
                 Varbase ~9.0 and Drupal ~9.0
* Issue [#3175276](https://www.drupal.org/i/3175276):
                 Started a 9.0.x branch for Varbase Media Header to work with
                 Varbase ~9.0 and Drupal ~9.0
* Issue [#3175414](https://www.drupal.org/i/3175414):
                 Started a 9.0.x branch for Varbase Reports to work with
                 Varbase ~9.0 and Drupal ~9.0
* Issue [#3175427](https://www.drupal.org/i/3175427):
                 Started a 9.0.x branch for Varbase Search to work with
                 Varbase ~9.0 and Drupal ~9.0
* Issue [#3175444](https://www.drupal.org/i/3175444):
                 Started a 9.0.x branch for Varbase SEO to work with
                 Varbase ~9.0 and Drupal ~9.0
* Issue [#3175481](https://www.drupal.org/i/3175481):
                 Started a 9.0.x branch for Varbase Styleguide to work
                 with Varbase ~9.0 and Drupal ~9.0

### Changed since Varbase 8.x-8.7:
* Issue [#3175819](https://www.drupal.org/i/3175819):
                 Switched [Layout Builder UX] module to 1.x-dev in
                 the composer to cover Drupal 9 compatibility on
                 the 9.0.x branch
* Issue [#3176598](https://www.drupal.org/i/3176598):
                 Switched [CKEditor Media Embed plugin] from
                 drupal/ckeditor_media_embed to a forked project
                 vardot/ckeditor_media_embed ~2.0 to work on the 9.0.x branch
* Issue [#3145726](https://www.drupal.org/i/3145726):
                 Removed [Varbase Theme (Bootstrap 3 - LESS)] theme from
                 the 9.0.x branch
* Issue [#3145720](https://www.drupal.org/i/3145720):
                 Removed [Vartheme Admin] theme from the 9.0.x branch
* Issue [#3145709](https://www.drupal.org/i/3145709):
                 Removed [Adminimal Admin Toolbar] module from the 9.0.x branch
* Issue [#3170653](https://www.drupal.org/i/3170653):
                 Removed [Libraries API] module as much of its functionality
                 had been moved to Drupal 9 core
* Issue [#3168664](https://www.drupal.org/i/3168664):
                 Removed [Libraries UI] module from [Varbase Development]
                 dev tools module on the 9.0.x Drupal 9 branch
* Issue [#3143148](https://www.drupal.org/i/3143148):
                 Removed [Smtp] module from the 9.0.x branch
* Issue [#3174423](https://www.drupal.org/i/3174423):
                 Removed [Media Library Theme Reset] module from
                 the 9.0.x branch
* Issue [#3145800](https://www.drupal.org/i/3145800):
                 Removed [Masonry API] module and its related configuration
                 from the 9.0.x branch
* Issue [#3145737](https://www.drupal.org/i/3145737):
                 Removed [Color Field] module from the 9.0.x branch
* Issue [#3145744](https://www.drupal.org/i/3145744):
                 Removed [Features] module from the 9.0.x branch
* Issue [#3145752](https://www.drupal.org/i/3145752):
                 Removed [Localization client] module from the 9.0.x branch
* Issue [#3176580](https://www.drupal.org/i/3176580):
                 [TEMP] Removed [Tour Builder] module from the composer
                 on the 9.0.x branch
* Issue [#3175839](https://www.drupal.org/i/3175839):
                 [TEMP] Removed [Webform Analysis] module from the composer
                 on the 9.0.x branch
* Issue [#3168674](https://www.drupal.org/i/3168674):
                 [TEMP] Removed [Mail Editor] module from [Varbase Core]
                 on the 9.0.x Drupal 9 branch

### Updates since Varbase 8.x-8.7:
* Issue [#3145625](https://www.drupal.org/i/3145625):
                 Upgraded [Varbase Core] from ~8 to ^9 on the 9.0.x branch for Varbase Blog
* Issue [#3173235](https://www.drupal.org/i/3173235):
                 Upgraded [Varbase Media and Varbase SEO] from ~8 to ^9 on the 9.0.x branch for Varbase Blog after starting new 9.0.x branches
* Issue [#3170658](https://www.drupal.org/i/3170658):
                 Upgraded [Bootstrap Barrio] base theme from ~4.0 to ~5.0
* Issue [#3160150](https://www.drupal.org/i/3160150):
                 Updated [Default Content] module from ~1.0 to ~2.0
* Issue [#3149567](https://www.drupal.org/i/3149567):
                 Updated [Tour UI] module to latest on the 9.0.x branch
* Issue [#3168494](https://www.drupal.org/i/3168494):
                 Updated [Fast 404] module to latest on the 9.0.x branch
* Issue [#3168739](https://www.drupal.org/i/3168739):
                 Updated [Webform] module from ~5.0 to ~6.0
* Issue [#3168753](https://www.drupal.org/i/3168753):
                 Updated [Webform] module from ~5.0 to ~6.0 in the
                 Varbase Bootstrap Paragraphs module
* Issue [#3150934](https://www.drupal.org/i/3150934):
                 Updated [Linkit] module from ~4.0 to ~5.0
* Issue [#3168693](https://www.drupal.org/i/3168693):
                 Updated [Taxonomy access fix] module from ~2.0 to ~3.0
* Issue [#3145760](https://www.drupal.org/i/3145760):
                 Updated [Taxonomy menu] module to latest and removed
                 committed patch
* Issue [#3145784](https://www.drupal.org/i/3145784):
                 Updated [Flood Unblock] module from ~1.0 to ~3.0
* Issue [#3149564](https://www.drupal.org/i/3149564):
                 Updated [Security Review] module to latest on the 9.0.x branch
* Issue [#3151899](https://www.drupal.org/i/3151899):
                 Updated [Update helper] module from 1.3 to 2.0.0
* Issue [#3150934](https://www.drupal.org/i/3150934):
                 Updated [Linkit] module from ~4.0 to ~5.0

### Fixes since Varbase 8.x-8.7:
* Issue [#3175792](https://www.drupal.org/i/3175792):
                 Fixed deprecated function getCurrentUserId replaced by
                 getDefaultEntityOwner for all content types and media types
* Issue [#3175810](https://www.drupal.org/i/3175810):
                 Fixed deprecated function getCurrentUserId replaced by
                 getDefaultEntityOwner in
                 core.base_field_override.node.varbase_heroslider_media.uid
                 config for Drupal 9 compatibility
* Issue [#3175756](https://www.drupal.org/i/3175756):
                 Fixed deprecated function getCurrentUserId replaced by
                 getDefaultEntityOwner in
                 core.base_field_override.node.landing_page_lb.uid config
* Issue [#3175817](https://www.drupal.org/i/3175817):
                 Fixed deprecated function getCurrentUserId replaced by
                 getDefaultEntityOwner in
                 core.base_field_override.node.landing_page.uid
                 config for Drupal 9 compatibility

--------------------------------------------------------------------------------

# 8.8.8

### Highlighted important changes since Varbase 8.x-8.7:
* Issue [#3180950](https://www.drupal.org/i/3180950):
                 Allowed Varbase to work with Composer ~2.0

### Added since Varbase 8.x-8.7:
* Issue [#3179010](https://www.drupal.org/i/3179010):
                 Added support for dropzonejs widget with Media Library in core
* Issue [#3180926](https://www.drupal.org/i/3180926)
                 by [yasmeensalah](https://www.drupal.org/u/yasmeensalah)
                : Added the ability to hide breadcrumbs from the Media Header

### Changed since Varbase 8.x-8.7:
* Issue [#3178907](https://www.drupal.org/i/3178907)
                 by Mohammed J. Razem
                : Styled the Node View mode preview bar
* Issue [#3178799](https://www.drupal.org/i/3178799)
                : Styled Content Moderation control. At the Draft view to look the same as moderation 
                status in all locations
* Issue [#3178836](https://www.drupal.org/i/3178836):
                 Changed the style of navigation pager, and mini pager display.
                 To flex and justify content pager elements to the center
* Issue [#3178826](https://www.drupal.org/i/3178826)
                : Removed padding for unpublished nodes in editing mode or under the View existing Draft
* Issue [#3180646](https://www.drupal.org/i/3180646)
                : Enhanced the logic on the creation of contents with layout library selected layout.
                 the system should not redirect to change the layout
* Issue [#3185416](https://www.drupal.org/i/3185416):
                 Removed container-fluid CSS class from container_attributes and only use when needed
* Issue [#3179357](https://www.drupal.org/i/3179357):
                 Changed extended libraries to follow with the latest Claro admin theme libraries in Drupal Core
* Issue [#3178884](https://www.drupal.org/i/3178884):
                 Changed Schema Config to follow with Bootstrap Barrio theme ~5.0 and remove applied patches
* Issue [#3186298](https://www.drupal.org/i/3186298):
                 Changed Vartheme Claro admin them on Drupal core require in composer from ~9.0.0 to ~9.0
* Issue [#3186302](https://www.drupal.org/i/3186302):
                 Changed Varbase Workflow module on Drupal core require in composer from ~9.0.0 to ~9.0
* Issue [#3185544](https://www.drupal.org/i/3185544):
                 Allowed Varbase Core module to work with Composer ~2.0
* Issue [#3185580](https://www.drupal.org/i/3185580):
                 Allowed Varbase Media module to work with Composer ~2.0
* Issue [#3185550](https://www.drupal.org/i/3185550):
                 Allowed Varbase Editor module to work with Composer ~2.0
* Issue [#3185633](https://www.drupal.org/i/3185633):
                 Allowed Varbase SEO module to work with Composer ~2.0
* Issue [#3185641](https://www.drupal.org/i/3185641):
                 Allowed Varbase Total Control Dashboard module to work with Composer ~2.0
* Issue [#3185512](https://www.drupal.org/i/3185512):
                 Allowed Varbase API module to work with Composer ~2.0
* Issue [#3185521](https://www.drupal.org/i/3185521):
                 Allowed Varbase Auth module to work with Composer ~2.0
* Issue [#3185527](https://www.drupal.org/i/3185527):
                 Allowed Varbase Blog module to work with Composer ~2.0
* Issue [#3185529](https://www.drupal.org/i/3185529):
                 Allowed Varbase Bootstrap Paragraphs module to work with Composer ~2.0
* Issue [#3185536](https://www.drupal.org/i/3185536):
                 Allowed Varbase Carousels module to work with Composer ~2.0
* Issue [#3185555](https://www.drupal.org/i/3185555):
                 Allowed Varbase Email module to work with Composer ~2.0
* Issue [#3185563](https://www.drupal.org/i/3185563):
                 Allowed Varbase FAQs module to work with Composer ~2.0
* Issue [#3185570](https://www.drupal.org/i/3185570):
                 Allowed Varbase Media Hero Slider module to work with Composer ~2.0
* Issue [#3185609](https://www.drupal.org/i/3185609):
                 Allowed Varbase Reports module to work with Composer ~2.0
* Issue [#3185621](https://www.drupal.org/i/3185621):
                 Allowed Varbase Search module to work with Composer ~2.0
* Issue [#3185635](https://www.drupal.org/i/3185635):
                 Allowed Varbase Styleguide module to work with Composer ~2.0
* Issue [#3185650](https://www.drupal.org/i/3185650):
                 Allowed Varbase Workflow module to work with Composer ~2.0
* Issue [#3185679](https://www.drupal.org/i/3185679):
                 Allowed Vartheme BS4 theme to work with Composer ~2.0
* Issue [#3185763](https://www.drupal.org/i/3185763):
                 Allowed Varbase Theme (Bootstrap 3 - LESS) theme to work with Composer ~2.0
* Issue [#3185765](https://www.drupal.org/i/3185765):
                 Allowed Vartheme Admin theme to work with Composer ~2.0
* Issue [#3185574](https://www.drupal.org/i/3185574):
                 Allowed Varbase Landing Page (Paragraphs) module to work with Composer ~2.0
* Issue [#3185605](https://www.drupal.org/i/3185605):
                 Allowed Varbase Media Header module to work with Composer ~2.0
* Issue [#3185578](https://www.drupal.org/i/3185578):
                 Allowed Varbase Layout Builder module to work with Composer ~2.0

### Updates since Varbase 8.x-8.7:
* Issue [#3178141](https://www.drupal.org/i/3178141):
                 Updated Bootstrap library from 4.5.2 to 4.5.3
* Issue [#3186048](https://www.drupal.org/i/3186048):
                 Updated Rabbit Hole module from 1.0-beta7 to 1.0-beta8 ( ~1.0 ) and removed
                 committed patches
* Issue [#3184180](https://www.drupal.org/i/3184180):
                 Updated bower-asset/d3 library from ~3.0 to ~5.0
* Issue [#3177618](https://www.drupal.org/i/3177618):
                 Updated yarn dependencies to match with Drupal 9
* Issue [#3179226](https://www.drupal.org/i/3179226):
                 Updated Style Guide module from 1.x-dev to ~2.0 and removed applied patches
* Issue [#3179226](https://www.drupal.org/i/3179226):
                 Updated Media entity Instagram module from ~2.0 to ~3.0
* Issue [#3176795](https://www.drupal.org/i/3176795):
                 Updated the patch for Page Manager on the fix of variants take entity label,
                 not the variant title

### Fixes since Varbase 8.x-8.7:
* Issue [#3179426](https://www.drupal.org/i/3179426):
                 Fixed status of Varbase update instructions to 100% on install and on an installation
                 for optional Varbase components or in a Varbase Sub Profile
* Issue [#3185637](https://www.drupal.org/i/3185637)
                by [abedajam](https://www.drupal.org/u/abedajam)
                : Fixed Update Helper throws an 
                exception after updating to Varbase 8.8.x
* Issue [#3186010](https://www.drupal.org/i/3186010): Fixed Value assigned to "section" is not a
                 valid section
* Issue [#3109712](https://www.drupal.org/i/3109712)
                 by [das-peter](https://www.drupal.org/u/das-peter)
                , [Joachim Namyslo](https://www.drupal.org/u/joachim-namyslo)
                , [sameer](https://www.drupal.org/u/sameer)
                : Fixed Fatal Error from 8.7.11 to 8.8.1 by with plain array as returned by
                 composer getConfig getRepositories #35
* Issue [#3184211](https://www.drupal.org/i/3184211)
                 by [arawashdeh](https://www.drupal.org/u/arawashdeh)
                : Fixed the path typo for RTL Tajawal font
* Issue [#3126444](https://www.drupal.org/i/3126444)
                 by [Andrew Answer](https://www.drupal.org/u/andrew-answer)
                , [AHBJCB](https://www.drupal.org/u/ahbjcb)
                , [RajabNatshah](https://www.drupal.org/u/rajabnatshah)
                : Fixed Ajax failure: Drupal.ajax is undefined
* Issue [#3175989](https://www.drupal.org/i/3175989)
                 by [Andrew Answer](https://www.drupal.org/u/andrew-answer)
                : Fixed not visible Media Gallery
* Issue [#3183988](https://www.drupal.org/i/3183988)
                 by [abedajam](https://www.drupal.org/u/abedajam)
                : Fixed Claro admin theme style of gray fieldset on Google Chrome 87
* Issue [#3179426](https://www.drupal.org/i/3179426):
                 Fixed status of Varbase update instructions to 100% on install and
                 on an installation for optional Varbase components or in a Varbase Sub Profile
* Issue [#3179217](https://www.drupal.org/i/3179217):
                 Fixed an Error on install by changing the default settings for Vartheme BS4 and
                 VARTHEME_BS4_SUBTHEME to follow with the latest Barrio Schema Config
* Issue [#3177432](https://www.drupal.org/i/3177432)
                 by [Joachim Namyslo](https://www.drupal.org/u/joachim-namyslo)
                : Fixed Drupal 9 compatibility for Varbase Content Planner 
                module by adding the patch
                 for the Content Planner sub modules to work with Drupal 9
* Issue [#3179173](https://www.drupal.org/i/3179173)
                 by [yasmeensalah](https://www.drupal.org/u/yasmeensalah)
                : Fixed the RTL style for Content Calendar by adding a patch
                 for the Content Planner module
* Issue [#3177937](https://www.drupal.org/i/3177937)
                 by Firass Ziedan
                : Fixed Fatal error in layout page after deleting the 
                media from media library
* Issue [#3176813](https://www.drupal.org/i/3176813)
                : Fixed Chaos Tool Suite (ctools) issue by adding the patch
                 for Entity BundleCondition Plugin does not work in all situations

--------------------------------------------------------------------------------

# 8.8.7

### Highlighted important changes since Varbase 8.x-8.6:
* Issue [#3169416](https://www.drupal.org/i/3169416):
                 Themed Layout Builder Modal and Media Library to look like
                 Claro admin theme
* Issue [#3170980](https://www.drupal.org/i/3170980):
                 Added Layout Builder Component Attributes module and support
                 for Layout Builder Component Attributes extension integration
                 with Layout Builder UX
* Issue [#3151514](https://www.drupal.org/i/3151514):
                 Styled the Moderation state control at the layout editing page
* Issue [#3170682](https://www.drupal.org/i/3170682):
                 Converted to use REM and EM instead of PX
* Issue [#3170658](https://www.drupal.org/i/3170658):
                 Upgraded [Bootstrap Barrio] base theme from ~4.0 to ~5.0
* Issue [#3171962](https://www.drupal.org/i/3171962):
                 Updated RFS from ~8.0 to ~9.0 for Vartheme BS4
                 and VARTHEME_BS4_SUBTHEME


### Added since Varbase 8.x-8.6:
* Issue [#3170687](https://www.drupal.org/i/3170687):
                 Added class "mt-n5" to the Media Hero Slider section
                 in homepage Layout Builder
* Issue [#3167692](https://www.drupal.org/i/3167692)
                 by [josebc](https://www.drupal.org/u/josebc)
                : Added [Stage File Proxy] module as a dependency
* Issue [#3171126](https://www.drupal.org/i/3171126)
                 by [josebc](https://www.drupal.org/u/josebc)
                : Added yarn script commands for Drupal coding standard and
                 Drupal Practice for Vartheme BS4 and VARTHEME_BS4_SUBTHEME
* Issue [#3170255](https://www.drupal.org/i/3170255)
                 by [josebc](https://www.drupal.org/u/josebc)
                : Change .csscomb.json for better compliance with
                 core eslint standards for Vartheme BS4
* Issue [#3171951](https://www.drupal.org/i/3171951)
                 by [abu-zakham](https://www.drupal.org/u/abu-zakham)
                : Added missing sort-order in .csscomb.jsonfor Vartheme BS4
* Issue [#3172415](https://www.drupal.org/i/3172415):
                 Added yarn script commands for Drupal coding standard and
                 Drupal Practice for Vartheme Claro
* Issue [#3176371](https://www.drupal.org/i/3176371):
                 Added yarn script commands for Drupal coding standard and
                 Drupal Practice for Varbase Installation profile
* Issue [#3173247](https://www.drupal.org/i/3173247):
                 Added yarn script commands for Drupal coding standard and
                 Drupal Practice for Varbase Core
* Issue [#3174431](https://www.drupal.org/i/3174431):
                 Added yarn script commands for Drupal coding standard and
                 Drupal Practice for Varbase Media
* Issue [#3173258](https://www.drupal.org/i/3173258):
                 Added yarn script commands for Drupal coding standard and
                 Drupal Practice for Varbase Editor
* Issue [#3172649](https://www.drupal.org/i/3172649):
                 Added yarn script commands for Drupal coding standard and
                 Drupal Practice for Varbase Blog
* Issue [#3173443](https://www.drupal.org/i/3173443):
                 Added yarn script commands for Drupal coding standard and
                 Drupal Practice for Varbase Layout Builder
* Issue [#3171132](https://www.drupal.org/i/3171132):
                 Added yarn script commands for Drupal coding standard and
                 Drupal Practice for Varbase Media Hero Slider
* Issue [#3175492](https://www.drupal.org/i/3175492):
                 Added yarn script commands for Drupal coding standard and
                 Drupal Practice for Varbase Total Control Dashboard
* Issue [#3173236](https://www.drupal.org/i/3173236):
                 Added yarn script commands for Drupal coding standard and
                 Drupal Practice for Varbase Carousels
* Issue [#3172875](https://www.drupal.org/i/3172875):
                 Added yarn script commands for Drupal coding standard and
                 Drupal Practice for Varbase Bootstrap Paragraphs
* Issue [#3173376](https://www.drupal.org/i/3173394):
                 Added yarn script commands for Drupal coding standard and
                 Drupal Practice for Varbase Email
* Issue [#3173394](https://www.drupal.org/i/3173394):
                 Added yarn script commands for Drupal coding standard and
                 Drupal Practice for Varbase FAQs
* Issue [#3173424](https://www.drupal.org/i/3173424):
                 Added yarn script commands for Drupal coding standard and
                 Drupal Practice for Varbase Landing Page (Paragraphs)
* Issue [#3172491](https://www.drupal.org/i/3172491):
                 Added yarn script commands for Drupal coding standard and
                 Drupal Practice for Varbase API
* Issue [#3175093](https://www.drupal.org/i/3175093):
                 Added yarn script commands for Drupal coding standard and
                 Drupal Practice for Varbase Media Header
* Issue [#3172609](https://www.drupal.org/i/3172609):
                 Added yarn script commands for Drupal coding standard and
                 Drupal Practice for Varbase Social Single Sign-On
* Issue [#3175409](https://www.drupal.org/i/3175409):
                 Added yarn script commands for Drupal coding standard and
                 Drupal Practice for Varbase Reports
* Issue [#3175421](https://www.drupal.org/i/3175421):
                 Added yarn script commands for Drupal coding standard and
                 Drupal Practice for Varbase Search
* Issue [#3175432](https://www.drupal.org/i/3175432):
                 Added yarn script commands for Drupal coding standard and
                 Drupal Practice for Varbase SEO
* Issue [#3175461](https://www.drupal.org/i/3175461):
                 Added yarn script commands for Drupal coding standard and
                 Drupal Practice for Varbase Styleguide
* Issue [#3175526](https://www.drupal.org/i/3175526):
                 Added yarn script commands for Drupal coding standard
                 and Drupal Practice for Varbase Workflow
* Issue [#3175554](https://www.drupal.org/i/3175554):
                 Added yarn script commands for Drupal coding standard and
                 Drupal Practice for View Modes Inventory ( VMI )
* Issue [#3173731](https://www.drupal.org/i/3173731):
                 Added the 3173730-2.patch for [Layout Builder UX] module
                 to Remove the change of default for auto-submit
                 controller on the existing route to have a better
                 behavior when adding a new section
* Issue [#3170788](https://www.drupal.org/i/3170788):
                 Added a patch to fix an issue for Paragraphs Features
                 module after the update to 1.10

### Changed since Varbase 8.x-8.6:
* Issue [#3167441](https://www.drupal.org/i/3167441):
                 Changed permission to Access admin audit trail for the Editor,
                 Content Admin, and Site Admin user roles
* Issue [#3167442](https://www.drupal.org/i/3167442):
                 Changed permission to Access admin audit trail for
                 the SEO Admin user role
* Issue [#3170153](https://www.drupal.org/i/3170153):
                 Changed default Help region settings to have a Clean
                 wrapper for Help region and remove the row class
* Issue [#3170890](https://www.drupal.org/i/3170890):
                 Changed [Welcome to Varbase] block format: full_html
                 to format: code_html to show SVG Images
* Issue [#3170170](https://www.drupal.org/i/3170170)
                 by [mhawwari](https://www.drupal.org/u/mhawwari)
                : Disable the checkbox to delete the referenced
                 entity from entityqueues
* Issue [#3176100](https://www.drupal.org/i/3176100)
                 by [qusai taha](https://www.drupal.org/u/qusai-taha)
                : Change to have a better logic to check if the remote
                 video ended or not
* Issue [#3170836](https://www.drupal.org/i/3170836):
                 Changed deprecated path.alias_storage to revisionable entities
* Issue [#3171094](https://www.drupal.org/i/3171094):
                 Changed the view empty style values for Media Hero Slider
* Issue [#3170678](https://www.drupal.org/i/3170678):
                 Enabled [JSON API Defaults] module to have extra functionality
* Issue [#3171299](https://www.drupal.org/i/3171299)
                 by [abu-zakham](https://www.drupal.org/u/abu-zakham)
                , [RajabNatshah](https://www.drupal.org/u/rajabnatshah)
                : Override Entity type / Group Mapping will be reflected
                 on Metatags General form
* Issue [#3172883](https://www.drupal.org/i/3172883)
                 by [akalam](https://www.drupal.org/u/akalam)
                , [RajabNatshah](https://www.drupal.org/u/rajabnatshah)
                : Have a better logic for merging layout builder style options
                 instead of overriding them
* Issue [#3170149](https://www.drupal.org/i/3170149):
                 Removed strict ui-dialog button style support for Bartik
                 and Saven. So that Vartheme BS4 work better with
                 Claro admin theme
* Issue [#3167618](https://www.drupal.org/i/3167618):
                 Remove [Events Log Track] module from the composer for
                 step 2 to switch to [Admin Audit Trail] maintained module
* Issue [#3176240](https://www.drupal.org/i/3176240):
                 Changed default content for the Homepage to use the Bootstrap
                 Layout layout_id: bs_1col for the section content
                 moderation control, not Drupal core layout layout_id:
                 layout_onecol
* Issue [#3176242](https://www.drupal.org/i/3176242):
                 Changed the default layout for Varbase Landing page
                 (Layout Builder) to use Bootstrap Layout layout_id: bs_1col
                 for the section content moderation control, not Drupal
                 core layout layout_id: layout_onecol

### Updates since Varbase 8.x-8.6:
* Issue [#3172876](https://www.drupal.org/i/3172876):
                 Updated RFS from ~8.0 to ~9.0 for Varbase Bootstrap Paragraphs
* Issue [#3171963](https://www.drupal.org/i/3171963):
                 Updated RFS from ~8.0 to ~9.0 for Varbase Media Hero Slider
* Issue [#3175123](https://www.drupal.org/i/3175123):
                 Updated RFS from ~8.0 to ~9.0 for Varbase Media Header
* Issue [#3173395](https://www.drupal.org/i/3173395):
                 Updated RFS from ~8.0 to ~9.0 for Varbase FAQs
* Issue [#3171504](https://www.drupal.org/i/3171504):
                 Updated [Paragraphs Features] module from 1.10 to 1.11
                 ( ~1.0 ) and remove applied patches
* Issue [#3170826](https://www.drupal.org/i/3170826):
                 Upgraded [Schema.org Metatag] module from ~1.0 to ~2.0
* Issue [#3170830](https://www.drupal.org/i/3170830):
                 Upgraded [Schema.org Metatag] module from ~1.0 to ~2.0 for
                 the [Varbase API] module needed default configs
* Issue [#3168753](https://www.drupal.org/i/3168753):
                 Updated [Webform] module from ~5.0 to ~6.0 in the Varbase
                 Bootstrap Paragraphs module
* Issue [#3168693](https://www.drupal.org/i/3168693):
                 Updated [Taxonomy access fix] module from ~2.0 to ~3.0
* Issue [#3168076](https://www.drupal.org/i/3168076):
                 Updated [Focal Point] module from 1.4 to 1.5 ( ~1.0 ) and
                 removed applied patches
* Issue [#3176226](https://www.drupal.org/i/3176226):
                 Updated [Inline Entity Form] module from 1.0-rc7 to 1.0-rc8

### Fixes since Varbase 8.x-8.6:
* Issue [#3169350](https://www.drupal.org/i/3169350):
                 Fixed media modal does not respond after selecting
                 a background for a section
* Issue [#3175710](https://www.drupal.org/i/3175710):
                 Fixed to make sure that we do have a list of config values
                 in the style options
* Issue [#3171237](https://www.drupal.org/i/3171237)
                 by [akalam](https://www.drupal.org/u/akalam)
                : Fixed deprecated function getCurrentUserId replaced by
                 getDefaultEntityOwner
                 in core.base_field_override.media.*.uid configs for
                 Drupal 9 compatibility
* Issue [#3175792](https://www.drupal.org/i/3175792):
                 Fixed deprecated function getCurrentUserId replaced by
                 getDefaultEntityOwner for all content types and media types
* Issue [#3175810](https://www.drupal.org/i/3175810):
                 Fixed deprecated function getCurrentUserId replaced by
                 getDefaultEntityOwner in
                 core.base_field_override.node.varbase_heroslider_media.uid
                 config for Drupal 9 compatibility
* Issue [#3175817](https://www.drupal.org/i/3175817):
                 Fixed deprecated function getCurrentUserId replaced by
                 getDefaultEntityOwner in
                 core.base_field_override.node.landing_page.uid config
                 for Drupal 9 compatibility
* Issue [#3175756](https://www.drupal.org/i/3175756):
                 Fixed deprecated function getCurrentUserId replaced by 
                getDefaultEntityOwner in
                 core.base_field_override.node.landing_page_lb.uid config
* Issue [#3149234](https://www.drupal.org/i/3149234)
                 by Project Update Bot
                , [akalam](https://www.drupal.org/u/akalam)
                , [RajabNatshah](https://www.drupal.org/u/rajabnatshah)
                : Automated Drupal 9 compatibility fixes for Varbase Media
* Issue [#3090778](https://www.drupal.org/i/3090778)
                 by [RajabNatshah](https://www.drupal.org/u/rajabnatshah)
                , [Odai Atieh](https://www.drupal.org/u/odai-atieh)
                : Fixed background media supports in [Varbase Media Header]
                 for IE 9+, iOS 7-, and Android 4.4
                 (Image, Video, Video, YouTube, Vimeo) Object-fit
* Issue [#3136486](https://www.drupal.org/i/3136486)
                 by alaa abbad
                , [mhawwari](https://www.drupal.org/u/mhawwari)
                : Fixed autoplay not working if the slider has one item
* Issue [#3172235](https://www.drupal.org/i/3172235)
                 by [mhawwari](https://www.drupal.org/u/mhawwari)
                : Fixed First local video is not being called correctly
* Issue [#3174660](https://www.drupal.org/i/3174660)
                by [qusai taha](https://www.drupal.org/u/qusai-taha)
                : Fixed Notice: undefined index ratio in Blazy when try to
                 adding images from Gallery media type in WYSIWYG
* Issue [#3170882](https://www.drupal.org/i/3170882)
                 by [akalam](https://www.drupal.org/u/akalam)
                : Fixed fatal error on media block when media entity
                 is not found
* Issue [#3173547](https://www.drupal.org/i/3173547):
                 Fixed drupal-off-canvas input type text and text area style
* Issue [#3170292](https://www.drupal.org/i/3170292):
                 Fixed the Moderation state control box with a better default
                 style and fix a missing .css in the
                 vartheme_bs4/moderation-state library
* Issue [#3158746](https://www.drupal.org/i/3158746)
                by [Joachim Namyslo](https://www.drupal.org/u/joachim-namyslo)
                : Fixed password policy forced to enter a new password when the
                 role been changed for a user and try to save the profile
* Issue [#3168965](https://www.drupal.org/i/3168965)
                 by [abu-zakham](https://www.drupal.org/u/abu-zakham)
                : Fixed issue of user profile cant be edited because password
                 policy validates even when password unchanged
* Issue [#3168971](https://www.drupal.org/i/3168971)
                 by [mhawwari](https://www.drupal.org/u/mhawwari)
                : Fixed Varbase update helper hook implementations do not
                 check the checklist id issue

--------------------------------------------------------------------------------

# 8.8.6

### Highlighted important changes since Varbase 8.x-8.5:
* Issue [#3159243](https://www.drupal.org/i/3159243):
                  Switched to Homepage node with Layout Builder
* Issue [#3150223](https://www.drupal.org/i/3150223):
                  Added [Varbase Workflow] new module
* Issue [#3151550](https://www.drupal.org/i/3151550):
                  Changed default workflow starter config for Simple
                  and Editorial workflows
* Issue [#3155922](https://www.drupal.org/i/3155922):
                  Changed default entityqueue form display for the
                  [Media Hero Slider] entity queue
* Issue [#3153614](https://www.drupal.org/i/3153614):
                  Implemented a way to offer default config templates using
                  Varbase’s ConfigBit to unify admin experience
* Issue [#3153018](https://www.drupal.org/i/3153018):
                  Added Varbase Landing Page (Layout builder) in the default
                  Varbase components and moved Varbase Landing Page
                  (Paragraphs) to the Extra components installation step
* Issue [#3120212](https://www.drupal.org/i/3120212):
                  Replaced the current embed media template with the
                  Drupal core Media Library Embed media system
* Issue [#3120214](https://www.drupal.org/i/3120214):
                  Replaced the current CKEditor entity browser embed media
                  button with the new Drupal core Media Library Embed
                  media command button
* Issue [#3163433](https://www.drupal.org/i/3163433):
                  Update [Bootstrap 4] library from 4.5.0 to 4.5.1
* Issue [#3163787](https://www.drupal.org/i/3163787):
                  Changed hiding the Local Task block and use the
                  moderation sidebar tasks menu in view page for all content
* Issue [#3163245](https://www.drupal.org/i/3163245):
                  Styled media library grid item in the node secondary
                  region layout

### Added since Varbase 8.x-8.5:
* Issue [#3161550](https://www.drupal.org/i/3161550):
                  Have more options for the Homepage node with Layout Builder
                  to work when Varbase Media Hero slider is enabled or
                  disabled on install
* Issue [#3159255](https://www.drupal.org/i/3159255):
                  Added [Prevent Homepage Deletion] module and enable
                  under [Varbase Admin] module
* Issue [#3159256](https://www.drupal.org/i/3159256):
                  Added permissions for [Prevent Homepage Deletion] module
* Issue [#3151759](https://www.drupal.org/i/3151759):
                  Enabled Simple Workflow for all content types on 
                  new Varbase Installations by Varbase Workflow and update
                 Automated Functional Acceptance Testing
* Issue [#3152475](https://www.drupal.org/i/3152475):
                  Added number of custom permissions in optional configurations
* Issue [#3152119](https://www.drupal.org/i/3152119):
                  Added ( Access metatag plugins report ) custom permission
                 in optional configurations
* Issue [#3157145](https://www.drupal.org/i/3157145):
                  Provided more useful "Moderated content" view in backend
* Issue [#3157225](https://www.drupal.org/i/3157225):
                  Added the patch for [Moderation Sidebar] module to
                  fix RTL styling
* Issue [#3145615](https://www.drupal.org/i/3145615):
                  Added Media library enhancements behavior on the
                  [Insert selected] button, which had no attributes that
                  automated testing could not press on
* Issue [#3151585](https://www.drupal.org/i/3151585):
                  Added an automated content moderation workflow config
                  on creation of new content types
* Issue [#3151784](https://www.drupal.org/i/3151784):
                  Added [OpenAPI for REST] module ( ~2.0 ) after
                  OpenAPI had been updated to ~2.0
* Issue [#3151781](https://www.drupal.org/i/3151781):
                  Added [OpenAPI for JSON:API] module ( ~2.0 ) after
                  OpenAPI had been updated to ~2.0
* Issue [#3151545](https://www.drupal.org/i/3151545):
                  Added "Scheduler content moderation integration" module
                  to support scheduling revisions
* Issue [#3155887](https://www.drupal.org/i/3155887):
                  Have default options on the creation of content types
* Issue [#3156138](https://www.drupal.org/i/3156138):
                  Added patch for [Inline Entity Form] module to allow to
                  hide the Edit button in Complex widget
* Issue [#3156974](https://www.drupal.org/i/3156974):
                  Added a patch for [Rabbit Hole] module to fix the issue
                  of Rabbit Hole bundle settings is not created on content
                  type creation, only on editing content type
* Issue [#3163490](https://www.drupal.org/i/3163490):
                  Added [Media Revisions UI] module ~2.0
* Issue [#3165781](https://www.drupal.org/i/3165781):
                  Added permissions for [Media Revisions UI] module
* Issue [#3165824](https://www.drupal.org/i/3165824):
                  Added permissions for SEO Admins to View all media revisions
* Issue [#3163292](https://www.drupal.org/i/3163292):
                  Have revisionable media entities in Varbase by default
* Issue [#3163581](https://www.drupal.org/i/3163581):
                  Added [Entity Usage] module ~2.0 and default entity
                  usage settings
* Issue [#3161957](https://www.drupal.org/i/3161957):
                  Added [Media Library Edit] module
* Issue [#3153878](https://www.drupal.org/i/3153878):
                  Added field User Picture ( the picture for the user entity )
                  from the Drupal core - Standard profile in [Varbase Core]
                  module
* Issue [#3164228](https://www.drupal.org/i/3164228):
                  Added the [JQuery UI Touch Punch] library which needed
                  for the [Better Exposed Filters] module ~5.0
* Issue [#3166782](https://www.drupal.org/i/3166782):
                  Added the figure-caption Bootstrap 4 CSS class
                  for the filter caption template

### Changed since Varbase 8.x-8.5:
* Issue [#3159562](https://www.drupal.org/i/3159562):
                  Deleted Homepage which was built by Page Manager
* Issue [#3152921](https://www.drupal.org/i/3152921):
                  Changed default permissions for (Authenticated user,
                  Editor, Content Admin, Site Admin) default user roles
* Issue [#3152116](https://www.drupal.org/i/3152116):
                  Changed default permissions for (SEO Admin) user role
* Issue [#3152698](https://www.drupal.org/i/3152698):
                  Switched from [Event Log Track] to [Admin Audit Trail]
                  maintained module
* Issue [#3161691](https://www.drupal.org/i/3161691):
                  Switched from [Events Log Track Workflows] module to
                  [Admin Audit Trail Workflows] module
* Issue [#3152487](https://www.drupal.org/i/3152487):
                  Changed selected actions for Views Bulk Operations (VBO)
                  in Content and People view pages
* Issue [#3152489](https://www.drupal.org/i/3152489):
                  Changed selected actions for Views Bulk Operations (VBO)
                  in Media and Media Library view pages
* Issue [#3163608](https://www.drupal.org/i/3163608):
                  Changed Media Table page view: add a created column and
                  remove sort by and sort order filters
* Issue [#3143570](https://www.drupal.org/i/3143570):
                  Optimized backend speed by providing default config for
                  Metatags on all entities to show only Basic
* Issue [#3151898](https://www.drupal.org/i/3151898):
                  Removed [Slick Media] module dependencies from
                  [Varbase Media] module and replace it with the main
                  module Slick and uninstall
* Issue [#3153481](https://www.drupal.org/i/3153481):
                  Removed [Slick Media] module dependencies from
                  [Varbase Carousels] module and configs
* Issue [#3151674](https://www.drupal.org/i/3151674):
                  Changed [Varbase Workflow] dependencies on install: enable
                  or dependencies: enable of modules in the .info.yml
* Issue [#3151548](https://www.drupal.org/i/3151548):
                  Removed dependency for Varbase Landing module
* Issue [#3151558](https://www.drupal.org/i/3151558):
                  Set the scheduling options published/unpublished to
                  default values
* Issue [#3151557](https://www.drupal.org/i/3151557):
                  Provided different default config for Content Planner to
                  fit with Varbase Workflow
* Issue [#3151549](https://www.drupal.org/i/3151549):
                  Removed contrib [Workflow] module. as the module is using
                  Workflow from Drupal core
* Issue [#3151544](https://www.drupal.org/i/3151544):
                  Updated description of [Varbase Workflow] module
* Issue [#3156093](https://www.drupal.org/i/3156093):
                  Made the overall elements smaller for Varbase admin
* Issue [#3134364](https://www.drupal.org/i/3134364):
                  Enhancements for [Vartheme Claro] on autocomplete deluxe
                  field styles and media library styles
* Issue [#3163706](https://www.drupal.org/i/3163706):
                  Changed [Varbase Layout Builder] Entity Browser media
                  form widget to Drupal core Media Library
* Issue [#3163528](https://www.drupal.org/i/3163528):
                  Changed to Hide the revision information fields without
                  setting the #access to FALSE
* Issue [#3163458](https://www.drupal.org/i/3163458):
                  Change [Varbase Carousels] block type from Entity Browser
                  media form widget to Drupal core Media Library
* Issue [#3153621](https://www.drupal.org/i/3153621):
                  Changed [Varbase Media Header] Entity Browser media form
                  widget to Drupal core Media Library
* Issue [#3163195](https://www.drupal.org/i/3163195):
                  Changed [Varbase Media Hero Slider] Entity Browser media
                  form widget to Drupal core Media Library
* Issue [#3153620](https://www.drupal.org/i/3153620):
                  Changed [Varbase Blog] Entity Browser media form widget
                  to Drupal core Media Library
* Issue [#3163213](https://www.drupal.org/i/3163213):
                  Changed [Varbase Bootstrap Paragraphs] types from
                  Entity Browser media form widget to Drupal core Media Library
* Issue [#3164148](https://www.drupal.org/i/3164148):
                  Changed [Gallery] media type form display from using Entity
                  Browser media form widget to Drupal core Media Library
* Issue [#3165654](https://www.drupal.org/i/3165654):
                  Changed [Varbase Gallery Block] back to use inline entity
                  form simple and entity browser
* Issue [#3159252](https://www.drupal.org/i/3159252):
                  Removed the region "Media Hero Slider" from Vartheme BS4
* Issue [#3159290](https://www.drupal.org/i/3159290):
                  Changed the script generator to create new Vartheme BS4
                  sub theme ( Bootstrap 4 ) SASS
* Issue [#3159295](https://www.drupal.org/i/3159295):
                  Changed ( npm install ) to ( yarn install ) in the Script
                  generator for a new Vartheme BS4 sub theme
* Issue [#3158756](https://www.drupal.org/i/3158756):
                  Changed the Drupal service module installer to install
                  only one module for all list of modules in the install
                  info data
* Issue [#3159078](https://www.drupal.org/i/3159078):
                  Changed the Drupal service module installer for
                  [Varbase Layout Builder] to install only one module
                  for all list of modules in the install info data
* Issue [#3158662](https://www.drupal.org/i/3158662):
                  Changed Automated Functional Acceptance Testing after
                  having a default template for Entityqueue form display
* Issue [#3159108](https://www.drupal.org/i/3159108):
                  Change the name of content type from "Landing page"
                  to "Landing page (Paragraphs)"
* Issue [#3165857](https://www.drupal.org/i/3165857):
                  Enabled Drupal core Seven admin theme on install for a
                  better look on a number of contrib modules

### Updates since Varbase 8.x-8.5:
* Issue [#3145364](https://www.drupal.org/i/3145364):
                  Updated [Drupal core] to be open for any Drupal core 8.x
                  version ( ^8.9 || ~9.0.0 )
* Issue [#3145784](https://www.drupal.org/i/3145784):
                  Updated [Flood Unblock] module from ~1.0 to ~3.0
* Issue [#3149582](https://www.drupal.org/i/3149582):
                  Updated [Bootstrap Layouts] module from 5.1 to 5.2
* Issue [#3149563](https://www.drupal.org/i/3149563):
                  Updated [Autocomplete Deluxe] module from ~1.0 to ~2.0
* Issue [#3152838](https://www.drupal.org/i/3152838):
                  Updated [Entityqueue Form Widget] module from ~1.0 to ~2.0
* Issue [#3153015](https://www.drupal.org/i/3153015):
                  Updated [Devel] module from ~3.0 to ~4.0
* Issue [#3153467](https://www.drupal.org/i/3153467):
                  Updated [reCAPTCHA] module from ~2.0 to ~3.0
* Issue [#3153471](https://www.drupal.org/i/3153471):
                  Updated [Security Kit] module from ~1.0 to ~2.0
* Issue [#3153504](https://www.drupal.org/i/3153504):
                  Updated [Media Library Form API Element] module from ~1.0 to ~2.0
* Issue [#3145344](https://www.drupal.org/i/3145344):
                  Updated [Panels] module from 8.4.4 to 8.4.6 (~4.0)
* Issue [#3152462](https://www.drupal.org/i/3152462):
                  Updated [CKEditor BiDi Buttons] module from ~2.0 to ~3.0
* Issue [#3151892](https://www.drupal.org/i/3151892):
                  Updated [Persistent Login] module from 1.2 to 1.3
* Issue [#3150944](https://www.drupal.org/i/3150944):
                  Updated [OpenAPI] module from ~1.0 to ~2.0
* Issue [#3143157](https://www.drupal.org/i/3143157):
                  Updated [Swift Mailer] module from ( ~1.0 ) to ( ~2.0 )
* Issue [#3150739](https://www.drupal.org/i/3150739):
                  Updated [Fast 404] module from ~1.0 to ~2.0
* Issue [#3150844](https://www.drupal.org/i/3150844):
                  Updated [CSV Serialization] module from ~1.0 to ~2.0
* Issue [#3163835](https://www.drupal.org/i/3163835):
                  Updated [Better Exposed Filters] module from ~4.0 to ~5.0
                  in [Varbase Media] module
* Issue [#3163832](https://www.drupal.org/i/3163832):
                  Updated [Better Exposed Filters] module from ~4.0 to ~5.0
                  in [Varbase Core] module
* Issue [#3164221](https://www.drupal.org/i/3164221):
                  Updated [Better Exposed Filters] module from ~4.0 to ~5.0 
                  in [Varbase Reports] module
* Issue [#3159831](https://www.drupal.org/i/3159831):
                  Updated [Content Planner] from 1.0-beta11 to 1.0-beta12
* Issue [#3160150](https://www.drupal.org/i/3160150):
                  Updated [Default Content] module from ~1.0 to ~2.0
* Issue [#3151899](https://www.drupal.org/i/3151899):
                  Updated [Update helper] module from 1.3 to 2.0.0
* Issue [#3165462](https://www.drupal.org/i/3165462):
                  Updated [Inline Entity Form] module from 1.0-rc6 to 1.0-rc7

### Fixes since Varbase 8.x-8.5:
* Issue [#3152518](https://www.drupal.org/i/3152518):
                  Fixed media library form field default value and cardinality
                  for the Background Media in latest Drupal core Layout
                  Builder and Media defaults
* Issue [#3150648](https://www.drupal.org/i/3150648)
                  by jedgar1mx
                 : Fixed The "n" entity type does not exist issue for
                  Page Manager on the patch for Variants take entity
                  label not the variant title
* Issue [#3152572](https://www.drupal.org/i/3152572):
                  Fixed issues after Entityqueue had changed schema
                  config for [Entityqueue Form Widget] testing config
* Issue [#3152533](https://www.drupal.org/i/3152533):
                  Fixed composer file Entityqueue Form Widget to
                  work with Drupal 9
* Issue [#3151689](https://www.drupal.org/i/3151689):
                  Fixed default none selected (Content moderation
                  workflow) display value when editing content types
* Issue [#3152002](https://www.drupal.org/i/3152002):
                  Fixed unexpected alert in Automated Functional
                  Acceptance Testing to Accept Alerts or Dismiss Alerts
                  Before or After going to the next step
* Issue [#3153635](https://www.drupal.org/i/3153635):
                  Fixed [Coffee] module on issue of Could not
                  load data for internal links
* Issue [#3155903](https://www.drupal.org/i/3155903):
                  Fixed Drupal coding standard and Drupal Practice
                  warnings on yml files
* Issue [#3162103](https://www.drupal.org/i/3162103):
                  Fixed Focal point style of Focal point "Preview"
                  link cover image for a Video
* Issue [#3162227](https://www.drupal.org/i/3162227):
                  Fixed Images preview style when we click on the
                  "preview" link
* Issue [#3161970](https://www.drupal.org/i/3161970):
                  Fixed Focal point behaviors with Media Library
                  and Claro admin theme
* Issue [#3162133](https://www.drupal.org/i/3162133):
                  Fixed issue of opening a modal from a modal closes
                  the original
* Issue [#3157982](https://www.drupal.org/i/3157982):
                  Fixed RFS SCSS library located in Bootstrap 4.5.0 vendor
                  which causing code standard notice for every font-size
                  use in Vartheme BS4 and generated Sub-theme
* Issue [#3152604](https://www.drupal.org/i/3152604):
                  Fixed issues after Entityqueue had changed schema config for
                  [Varbase Media Hero Slider] simple queue
* Issue [#3157689](https://www.drupal.org/i/3157689):
                  Fixed default revision value for [ In review ] state to fals
                 e for the Editorial workflow
* Issue [#3164237](https://www.drupal.org/i/3164237):
                  Fixed Varbase Welcome message not showing up after install
                  compilation after adding and enabling moderation sidebar on
                  the homepage
* Issue [#3164225](https://www.drupal.org/i/3164225)
                  by Firass Ziedan
                 : Fixed not appearing Page Breadcrumb in
                  standard option
* Issue [#3165419](https://www.drupal.org/i/3165419):
                  Fixed Install Failure by Removing the English file with
                  spaces and CAPITAL Letters.pdf and the other
                  RTL - PDF file with other languages

--------------------------------------------------------------------------------

# 8.8.5

### Highlighted important changes since Varbase 8.x-8.4:
* Issue [#3124385](https://www.drupal.org/node/3124385):
                 Added [Vartheme Claro] admin theme and use it as the default
                 installation and administration theme
* Issue [#3137769](https://www.drupal.org/node/3137769):
                 Styled Content title field with bigger font size under Claro.
                 Allocate the length indicator inline and to the edge with the bottom of the title field
* Issue [#3137834](https://www.drupal.org/node/3137834):
                 Updated [Bootstrap 4] library from 4.4.1 to 4.5.0
* Issue [#3139103](https://www.drupal.org/node/3139103):
                 Changed drupal/core-recommended to drupal/core and updated
                 [Drupal core] from 8.8.4 to 8.8.6 ( ~8.8.0 ) and removed committed patches
* Issue [#3127464](https://www.drupal.org/node/3127464):
                 Included a drupal/core requirement for [Varbase] profile
                 compatible with Drupal 9
* Issue [#3128164](https://www.drupal.org/node/3128164):
                 Required all asset libraries in [Varbase] profiles.
                 As they were moved to suggest in Varbase components
* Issue [#3132536](https://www.drupal.org/node/3132536):
                 Switched RTL default font for [Vartheme Claro]
                 admin theme from Droid to Tajawal

### Added since Varbase 8.x-8.4:
* Issue [#3126968](https://www.drupal.org/node/3126968):
                 Initialized [Vartheme Claro] admin theme
* Issue [#3125415](https://www.drupal.org/node/3125415):
                 Added support for [Claro] admin theme for [Varbase Bootstrap
                 Paragraph] admin styling options
* Issue [#3143759](https://www.drupal.org/node/3143759):
                 Added Default CSSLint, ESLint, Stylelint , and Yarn files
                 in Vartheme BS4 and Vartheme Sub-theme
* Issue [#3128227](https://www.drupal.org/node/3128227):
                 Added Automated Testing for the [Varbase Social Single
                 Sign-On] module
* Issue [#3128214](https://www.drupal.org/node/3128214):
                 Added Automated Testing for the [Varbase API] module
* Issue [#3130834](https://www.drupal.org/node/3130834):
                 Added Automated Testing for the [Vartheme Claro] admin theme
* Issue [#3137881](https://www.drupal.org/node/3137881):
                 Added Automated Testing for the [Varbase Theme (Bootstrap 4 
                - SASS)] front-end theme
* Issue [#3072082](https://www.drupal.org/node/3072082):
                 Added Automated Testing for the [Varbase Bootstrap
                 Paragraphs] module
* Issue [#3128213](https://www.drupal.org/node/3128213):
                 Added Automated Testing for the [Varbase Media] module
* Issue [#3130971](https://www.drupal.org/node/3130971)
                 by [Odai Atieh](https://www.drupal.org/u/odai-atieh)
                : Added a missing class for the accordion panel title in
                 the [Varbase Bootstrap Paragraphs] module
* Issue [#3121642](https://www.drupal.org/node/3121642)
                 by Neslee Canil Pinto
                : Added Configure button for [Varbase Layout Builder
                 Settings] in module list page
* Issue [#3127342](https://www.drupal.org/node/3127342):
                 Included a drupal/core requirement for [Varbase Core]
                 compatible with Drupal 9
* Issue [#3127311](https://www.drupal.org/node/3127311):
                 Included a drupal/core requirement for [Varbase API]
                 compatible with Drupal 9
* Issue [#3127310](https://www.drupal.org/node/3127310):
                 Included a drupal/core requirement for [Varbase Media]
                 compatible with Drupal 9
* Issue [#3127312](https://www.drupal.org/node/3127312):
                 Included a drupal/core requirement for [Varbase Editor]
                 compatible with Drupal 9
* Issue [#3127326](https://www.drupal.org/node/3127326):
                 Included a drupal/core requirement for [Varbase Total Control
                 Dashboard] compatible with Drupal 9
* Issue [#3127323](https://www.drupal.org/node/3127323):
                 Included a drupal/core requirement for [Varbase Media
                 Header] compatible with Drupal 9
* Issue [#3127313](https://www.drupal.org/node/3127313):
                 Included a drupal/core requirement for [Varbase Bootstrap
                 Paragraphs] compatible with Drupal 9
* Issue [#3127321](https://www.drupal.org/node/3127321):
                 Included a drupal/core requirement for [Varbase Layout
                 Builder] compatible with Drupal 9
* Issue [#3127335](https://www.drupal.org/node/3127335):
                 Included a drupal/core requirement for [Varbase Theme
                 (Bootstrap 4 - SASS)] compatible with Drupal 9
* Issue [#3127329](https://www.drupal.org/node/3127329):
                 Included a drupal/core requirement for [Varbase Theme
                 (Bootstrap 3 - LESS)] compatible with Drupal 9
* Issue [#3128191](https://www.drupal.org/node/3128191):
                 Included a drupal/core requirement for [Vartheme admin]
                 compatible with Drupal 9
* Issue [#3127315](https://www.drupal.org/node/3127315):
                 Included a drupal/core requirement for [Varbase Landing]
                 compatible with Drupal 9
* Issue [#3127316](https://www.drupal.org/node/3127316):
                 Included a drupal/core requirement for [Varbase Blog
                 (Corporate Blog)] compatible with Drupal 9
* Issue [#3127332](https://www.drupal.org/node/3127332):
                 Included a drupal/core requirement for [Varbase SEO]
                 compatible with Drupal 9
* Issue [#3127317](https://www.drupal.org/node/3127317):
                 Included a drupal/core requirement for [Varbase Media Hero
                 Slider] compatible with Drupal 9
* Issue [#3127333](https://www.drupal.org/node/3127333):
                 Included a drupal/core requirement for [Varbase Social Single
                 Sign-On] compatible with Drupal 9
* Issue [#3127318](https://www.drupal.org/node/3127318):
                 Included a drupal/core requirement for [Varbase Carousels]
                 compatible with Drupal 9
* Issue [#3127334](https://www.drupal.org/node/3127334):
                 Included a drupal/core requirement for [Varbase Styleguide]
                 compatible with Drupal 9
* Issue [#3127319](https://www.drupal.org/node/3127319):
                 Included a drupal/core requirement for [Varbase Email]
                 compatible with Drupal 9
* Issue [#3127320](https://www.drupal.org/node/3127320):
                 Included a drupal/core requirement for [Varbase FAQs]
                 compatible with Drupal 9
* Issue [#3127322](https://www.drupal.org/node/3127322):
                 Included a drupal/core requirement for [Varbase Reports]
                 compatible with Drupal 9
* Issue [#3130848](https://www.drupal.org/node/3130848):
                 Included a drupal/core requirement for [View Modes Inventory
                 - Bootstrap Ready] compatible with Drupal 9

### Changed since Varbase 8.x-8.4:
* Issue [#3125048](https://www.drupal.org/node/3125048):
                 Disabled [Adminimal Admin Toolbar] module in by removing
                 it from [Varbase admin] install module
* Issue [#3138249](https://www.drupal.org/node/3138249):
                 Changed Vartheme BS4 default config settings to follow
                 with changed Bootstrap Barrio schema
* Issue [#3128135](https://www.drupal.org/node/3128135):
                 Moved asset libraries in [Varbase Core] from require to
                 suggest
* Issue [#3128353](https://www.drupal.org/node/3128353):
                 Moved asset libraries in [Varbase API] from require to suggest
* Issue [#3127868](https://www.drupal.org/node/3127868):
                 Moved asset libraries in [Varbase Media] from require
                 to suggest
* Issue [#3128129](https://www.drupal.org/node/3128129):
                 Moved asset libraries in [Varbase Editor] from require
                 to suggest
* Issue [#3128149](https://www.drupal.org/node/3128149):
                 Moved asset libraries in [Varbase Total Control Dashboard]
                 from require to suggest
* Issue [#3124904](https://www.drupal.org/node/3124904):
                 Changed [Panels] module to a static selected version 8.4.4
                 not to fetch and enable 2 new modules for the deprecated
                 JQuery UI libraries
* Issue [#3125023](https://www.drupal.org/node/3125023):
                 Changed Automated Functional Acceptance Testing after a new
                 release for Entityqueue module with change of UI configs
* Issue [#3124849](https://www.drupal.org/node/3124849)
                 by [Joachim Namyslo](https://www.drupal.org/u/joachim-namyslo)
                : Removed the 3118087-67.8_8_x.patch for [Drupal core] 8.8.5
                 as it was committed
* Issue [#3144392](https://www.drupal.org/node/3144392):
                 Changed new Barrio [Use Bootstrap icons] config to not to use
* Issue [#3145037](https://www.drupal.org/node/3145037):
                 Changed Vartheme Claro from 8.1.x to 2.x branch

### Updates since Varbase 8.x-8.4:
* Issue [#3144981](https://www.drupal.org/node/3144981):
                 Updated [Page Manager] module from 8.4.0-beta5 to 8.4.0-beta6
                 so that we are able to create a layout builder variant
                 and updated the patch for variants to take entity label
                 not the title
* Issue [#3128965](https://www.drupal.org/node/3128965):
                 Updated [Security Review] module from 8.1.x-dev to
                 8.1.0-alpha1 ( ~1.0 )
* Issue [#3127785](https://www.drupal.org/node/3127785):
                 Updated [Coffee] module from 8.1.0-beta2 to 8.1.0 ( ~8.1.0 )
                 stable and remove applied patches
* Issue [#3125694](https://www.drupal.org/node/3125694):
                 Updated [Metatag] module to ^1.12 for a strict update
* Issue [#3123567](https://www.drupal.org/node/3123567):
                 Updated [Metatag] module from 8.1.11 to 8.1.12 ( ~1.0 )
                 and removed applied patches
* Issue [#3123567](https://www.drupal.org/node/3123567):
                 Updated [CTools] module from 8.3.2 to 8.3.4 ( ~3.0 )
                 and remove committed patches
* Issue [#3124891](https://www.drupal.org/node/3124891):
                 Updated [Page Manager] module from 8.4.0-beta4 to 8.4.0-beta5
* Issue [#3139479](https://www.drupal.org/node/3139479):
                 Updated [Default Content] module from 8.1.0-alpha8
                 to 8.1.0-alpha9
* Issue [#3143157](https://www.drupal.org/node/3143157):
                 Updated [Swift Mailer] module from ( ~1.0 ) to ( ~2.0 )
* Issue [#3138124](https://www.drupal.org/node/3138124)
                 by mitchellwillocks
                : Updated [External Links] module from 8.1.2 to 8.1.3
                 ( ~1.0 ) along with removal of the committed patch
* Issue [#3144822](https://www.drupal.org/node/3144822):
                 Updated [Paragraphs Previewer] module from 8.1.4 to 8.1.5
* Issue [#3144812](https://www.drupal.org/node/3144812):
                 Updated [Paragraphs] module from 8.1.11 to 8.1.12 and
                 add a patch for Field Group module support broken when
                 we update paragraphs to 8.1.12
* Issue [#3144808](https://www.drupal.org/node/3144808):
                 Updated [Media Library Form API Element] module from
                 8.1.0-alpha7 to 8.x-1.0-beta2 ( ~1.0 ) and removed
                 committed patches
* Issue [#3144802](https://www.drupal.org/node/3144802):
                 Updated [Login Destination] module from ( ~1.0 ) to ( ~2.0 )
* Issue [#3144798](https://www.drupal.org/node/3144798):
                 Updated [Honeypot] from ( ~1.0 ) to ( ~2.0 )
* Issue [#3144681](https://www.drupal.org/node/3144681):
                 Updated [Advanced Text Formatter] from ( ~1.0 ) to ( ~2.0 )
* Issue [#3144735](https://www.drupal.org/node/3144735):
                 Updated [Advanced Text Formatter] from ( ~1.0 ) to ( ~2.0 )
                 in Varbase Landing
* Issue [#3144728](https://www.drupal.org/node/3144728):
                 Updated [Advanced Text Formatter] from ( ~1.0 ) to ( ~2.0 )
                 in Varbase Bootstrap Paragraphs
* Issue [#3144747](https://www.drupal.org/node/3144747):
                 Updated [Advanced Text Formatter] from ( ~1.0 ) to ( ~2.0 )
                 in Varbase FAQs
* Issue [#3144746](https://www.drupal.org/node/3144746):
                 Updated [Advanced Text Formatter] from ( ~1.0 ) to ( ~2.0 )
                 in Varbase Blog (Corporate Blog)
* Issue [#3144743](https://www.drupal.org/node/3144743):
                 Updated [Advanced Text Formatter] from ( ~1.0 ) to ( ~2.0 )
                 in Varbase Media Hero Slider
* Issue [#3134679](https://www.drupal.org/node/3134679):
                 Varbase 8.8.5: Updated [CHANGELOG.md, README.md,
                 drupal-org.make] files and filtered the code for
                 Drupal 8 Coding Standard

### Fixes since Varbase 8.x-8.4:
* Issue [#3122537](https://www.drupal.org/node/3122537)
                 by yasmeensalah
                , [RajabNatshah](https://www.drupal.org/u/rajabnatshah)
                , Mohammed J. Razem
                : Fixed CKEditor text-fields issue of not clickable texts due
                 to interaction with core/drupal.dialog in the [Varbase
                 Layout Builder] module
* Issue [#3125800](https://www.drupal.org/node/3125800):
                 Fixed [Layout Builder UX] position of alert message over
                 the layout editor to manage sections
* Issue [#3126331](https://www.drupal.org/node/3126331)
                 by [RajabNatshah](https://www.drupal.org/u/rajabnatshah)
                , jjwfcd
                : Fixed entity schema update for the entity_subqueue entity
                 type requires a data migration with Recall for Varbase Media
                 updates as they had changed as they introduced issues on
                 update with [entityqueue] latest release
* Issue [#3125946](https://www.drupal.org/node/3125946)
                 by [Odai Atieh](https://www.drupal.org/u/odai-atieh)
                : Fixed missing varbase media entity presave hook for remote
                 videos with fullback options
* Issue [#3129510](https://www.drupal.org/node/3129510):
                 Fixed Schema configs for number of default configs
* Issue [#3125727](https://www.drupal.org/node/3125727):
                 Fixed the object-fit-polyfill library is depending on
                 a deprecated library
* Issue [#3120499](https://www.drupal.org/node/3120499)
                 by yasmeensalah
                : Fixed lost default settings in Ajax context for the remove
                 button action for the [Background Media] styling option
* Issue [#3137756](https://www.drupal.org/node/3137756):
                 Fixed details style by using the default details
                 template and Claro changes over libraries only by Claro theme
* Issue [#3138096](https://www.drupal.org/node/3138096)
                 by [RajabNatshah](https://www.drupal.org/u/rajabnatshah)
                , Abdelrahman Amer
                : Fixed not loaded Claro libraries and overrides,
                 which the Drupal core bug still remain on sub themes
                 from Drupal back-end core themes
* Issue [#3138171](https://www.drupal.org/node/3138171)
                 by [RajabNatshah](https://www.drupal.org/u/rajabnatshah)
                , mitchellwillocks
                : Fixed Core Version Requirement Key ^8.8 || ^9 -
                 Uncaught PHP Exception by lowering requirements
                 and no core config
* Issue [#3143228](https://www.drupal.org/node/3143228)
                 by Firass Ziedan
                : Fixed js error appear when the theme request
                 quickedit.css file form core theme
* Issue [#3143270](https://www.drupal.org/node/3143270)
                 by abu-zakham
                : Fixed minor code standard on generated Vartheme BS4 Sub-theme
* Issue [#3142973](https://www.drupal.org/node/3142973)
                 by yasmeensalah
                : Fixed CSSLint errors on generated Vartheme BS4 Sub-theme
* Issue [#3138611](https://www.drupal.org/node/3138611):
                 Fixed Notice: Undefined index: NOT_EXISTED_USER in
                 VarbaseContext by replacing the captured notice with
                 an exception lookup message for better automated testing
                 reports
* Issue [#3104461](https://www.drupal.org/node/3104461)
                 by Abdelrahman Amer
                , yasmeensalah
                : Fixed duplicate paragraph Id for two uneven and three
                 uneven columns
* Issue [#3144404](https://www.drupal.org/node/3144404):
                 Fixed styling issue with Layout Builder UX on the alert
                 message of ( You are editing the layout .. ) over the
                 first Add section
* Issue [#3143257](https://www.drupal.org/node/3143257):
                 Fixed config for Background Media on (image, video, and
                 remote video) with new media config schema
* Issue [#3143227](https://www.drupal.org/node/3143227)
                 by Firass Ziedan
                : Fixed settings icon overlap with the section title
* Issue [#3143263](https://www.drupal.org/node/3143263):
                 Fixed config for Varbase Media Hero Slider media view mode
                 on (image, video, and remote video) with new media config
                 schema
* Issue [#3137483](https://www.drupal.org/node/3137483):
                 Fixed Composer and update [error] Varbase Media Header
                 requires this module and version. Currently using Varbase
                 Media version (Currently using Unresolved dependency Varbase
                 Media (Version >= 6.6 required))
* Issue [#3137482](https://www.drupal.org/node/3137482):
                 Fixed Composer and update [error] Varbase Media Hero Slider
                 requires this module and version. Currently using Varbase
                 Media version (Currently using Unresolved dependency Varbase
                 Media (Version >= 6.6 required))


--------------------------------------------------------------------------------

# 8.8.4

### Highlighted important changes since Varbase 8.x-8.3:
* Issue [#3120794](https://www.drupal.org/node/3120794):
                 Updated [Drupal core] from 8.8.2 to 8.8.4 ( ~8.8.0 ) and
                 Updated VarbaseContext for the Automated Functional
                 Acceptance Testing groups
                 Drupal core - Moderately critical - Third-party libraries -
                 [SA-CORE-2020-001](https://www.drupal.org/sa-core-2020-001)
* Issue [#3113113](https://www.drupal.org/node/3113113):
                 Drupal 9 readiness for [Varbase distribution] installation
                 profile with Drupal coding standard and practice
* Issue [#3113066](https://www.drupal.org/node/3113066):
                 Integrated with advanced Layout Builder UX behaviours
* Issue [#3116225](https://www.drupal.org/node/3116225)
                 by [yasmeensalah](https://www.drupal.org/u/yasmeensalah)
                : Added and render a [Section title] field for configured
                 sections layouts

### Added since Varbase 8.x-8.3:
* Issue [#3118906](https://www.drupal.org/node/3118906)
                by [Abdelrahman_Amer](https://www.drupal.org/u/abdelrahman_amer)
                : Added [List String] Field type with multiple or single
                 select option to layout builder styling options form widgets
* Issue [#3116206](https://www.drupal.org/node/3116206)
                by [Mohammad Fayoumi](https://www.drupal.org/u/mohammad-fayoumi)
                : Added Pathauto pattern for Landing page (Layout Builder)
                 content type
* Issue [#3119108](https://www.drupal.org/node/3119108)
                 by [yasmeensalah](https://www.drupal.org/u/yasmeensalah)
                : Add textarea Field type to layout builder styling options
                 form widgets
* Issue [#3116173](https://www.drupal.org/node/3116173):
                 Added [gulp-csscomb, with gulp-postcss] Gulp-SASS plugins
                 and CSScomb settings in [Varbase Media] for Drupal
                 (CSS formatting and sort tool)
* Issue [#3118091](https://www.drupal.org/node/3118091):
                 Added [gulp-csscomb, with gulp-postcss] Gulp-SASS plugins
                 and CSScomb settings in [Varbase Bootstrap Paragraphs] for Drupal (CSS formatting and sort tool)
* Issue [#3094123](https://www.drupal.org/node/3094123)
                by [Mohammad Fayoumi](https://www.drupal.org/u/mohammad-fayoumi)
                : Added paragraphs reusability to [varbase bootstrap
                 paragraphs] module
* Issue [#3101143](https://www.drupal.org/node/3101143)
                by [Mohammad Fayoumi](https://www.drupal.org/u/mohammad-fayoumi)
                : Added a basic config for paragraphs library in
                 [Varbase Landing] module
* Issue [#3099560](https://www.drupal.org/node/3099560)
                by [Firass Ziedan](https://www.drupal.org/u/firass-ziedan)
                 : Added template to 'from library'
                 paragraph and edit paragraphs css
* Issue [#3115836](https://www.drupal.org/node/3115836):
                 Added [gulp-csscomb, with gulp-postcss] Gulp-SASS
                 plugins and CSScomb settings in [Varbase Media Hero
                 Slider] for Drupal (CSS formatting and sort tool)
* Issue [#3115895](https://www.drupal.org/node/3115895):
                 Provided support for Popper.js ^2.0.0 core/popperjs
                 library and Drupal 9
* Issue [#3121629](https://www.drupal.org/node/3121629)
           by [Neslee Canil Pinto](https://www.drupal.org/u/neslee-canil-pinto)
                 : Added Configure button for [Varbase Media Settings]
                 in module list page

### Changed since Varbase 8.x-8.3:
* Issue [#3113167](https://www.drupal.org/node/3113167):
                 Drupal 9 Readiness for [Varbase Core] with Drupal
                 coding standard and practice
* Issue [#3117184](https://www.drupal.org/node/3117184):
                 Changed default config for admin [Content, and People]
                 views to work with the latest schema change in VBO 8.3.5
* Issue [#3115899](https://www.drupal.org/node/3115899)
                 by [Odai Atieh](https://www.drupal.org/u/odai-atieh)
                : Removed the 2646744-34.patch for [Drupal core] which Drupal
                 Core Url does not accept root-relative (file) URLs as
                 its producing regression issues on files with special
                 characters
* Issue [#3113149](https://www.drupal.org/node/3113149):
                 Disabled [Configuration inspector] on install of
                 [Varbase Development] module to fix status issues of many
                 schema errors shown by configuration inspector
* Issue [#3098320](https://www.drupal.org/node/3098320):
                 Drupal 9 Readiness for [Varbase Media] with Drupal coding
                 standard and practice
* Issue [#3117182](https://www.drupal.org/node/3117182):
                 Changed default config for [Media, and Media Library] views
                 to work with the latest schema change in VBO 8.3.5
* Issue [#3113161](https://www.drupal.org/node/3113161):
                 Drupal 9 Readiness for [Varbase API] with Drupal coding
                 standard and practice
* Issue [#3112185](https://www.drupal.org/node/3112185):
                 Drupal 9 Readiness for [Varbase Editor] with Drupal coding
                 standard and practice
* Issue [#3110785](https://www.drupal.org/node/3110785)
                by [Firass Ziedan](https://www.drupal.org/u/firass-ziedan)
                : Removed h1 from Editor formats in the Full HTML
                 (Rich editor) Text format
* Issue [#3113164](https://www.drupal.org/node/3113164):
                 Drupal 9 Readiness for [Varbase Bootstrap Paragraphs]
                 with Drupal coding standard and practice
* Issue [#3113176](https://www.drupal.org/node/3113176):
                 Drupal 9 Readiness for [Varbase Landing] with Drupal
                 coding standard and practice
* Issue [#3097903](https://www.drupal.org/node/3097903)
                 by [abu-zakham](https://www.drupal.org/u/abu-zakham)
                : Made [Varbase Landing] content type page with
                 field_description default page og:description
* Issue [#3113162](https://www.drupal.org/node/3113162):
                 Drupal 9 Readiness for [Varbase Blog (Corporate Blog)]
                 with Drupal coding standard and practice
* Issue [#3112390](https://www.drupal.org/node/3112390)
                by [Odai Atieh](https://www.drupal.org/u/odai-atieh)
                : Moved [statistics] module from dependencies to install
                 as an optional module
* Issue [#3113214](https://www.drupal.org/node/3113214):
                 Drupal 9 Readiness for [Varbse Media Hero Slider] with
                 Drupal coding standard and practice
* Issue [#3112172](https://www.drupal.org/node/3112172):
                 Drupal 9 Readiness for [Varbase Carousels] with Drupal
                 coding standard and practice
* Issue [#3113172](https://www.drupal.org/node/3113172):
                 Drupal 9 Readiness for [Varbase Email] with Drupal
                 coding standard and practice
* Issue [#3113175](https://www.drupal.org/node/3113175):
                 Drupal 9 Readiness for [Varbase FAQs] with Drupal coding
                 standard and practice
* Issue [#3102163](https://www.drupal.org/node/3102163)
                by [YousefAnbar](https://www.drupal.org/u/yousefanbar)
                : Changed FAQ Cache tags based on node_list tag
* Issue [#3113179](https://www.drupal.org/node/3113179):
                 Drupal 9 Readiness for [Varbase Layout Builder] with Drupal
                 coding standard and practice
* Issue [#3118007](https://www.drupal.org/node/3118007)
                by [Abdelrahman_Amer](https://www.drupal.org/u/abdelrahman_amer)
                : Removed none option from field media view mode in varbase
                 media block
* Issue [#3113184](https://www.drupal.org/node/3113184):
                 Drupal 9 Readiness for [Varbase Reports] with Drupal coding
                 standard and practice
* Issue [#3110031](https://www.drupal.org/node/3110031):
                 Drupal 9 Readiness for [Varbase Media Header] with Drupal
                 coding standard and practice
* Issue [#3113188](https://www.drupal.org/node/3113188):
                 Drupal 9 Readiness for [Varbase Search] with Drupal
                 coding standard and practice
* Issue [#3113189](https://www.drupal.org/node/3113189):
                 Drupal 9 Readiness for [Varbase SEO] with Drupal coding
                 standard and practice
* Issue [#3113191](https://www.drupal.org/node/3113191):
                 Drupal 9 Readiness for [Varbase Social Single Sign-On]
                 with Drupal coding standard and practice
* Issue [#3113192](https://www.drupal.org/node/3113192):
                 Drupal 9 Readiness for [Varbase Styleguide] with Drupal
                 coding standard and practice
* Issue [#3112166](https://www.drupal.org/node/3112166):
                 Drupal 9 Readiness for [Varbase Total Control Dashboard]
                 with Drupal coding standard and practice
* Issue [#3113196](https://www.drupal.org/node/3113196):
                 Drupal 9 Readiness for [Vartheme BS4 (Bootstrap 4 - SASS)]
                 with Drupal coding standard and practice
* Issue [#3113193](https://www.drupal.org/node/3113193):
                 Drupal 9 Readiness for [Vartheme (Bootstrap 3 - LESS)]
                 with Drupal coding standard and practice
* Issue [#3075974](https://www.drupal.org/node/3075974):
                 Drupal 9 Readiness for [Vartheme Admin] with Drupal coding
                 standard and practice
* Issue [#3113200](https://www.drupal.org/node/3113200):
                 Drupal 9 Readiness for [VMI] with Drupal coding standard
                 and practice
* Issue [#3087583](https://www.drupal.org/node/3087583):
                 Drupal 9 Readiness for [CKEditor Anchor Link] with
                 Drupal coding standard and practice
* Issue [#3113206](https://www.drupal.org/node/3113206):
                 Drupal 9 Readiness for [Entity Browser Enhance(d|r)]
                 with Drupal coding standard and practice
* Issue [#3113209](https://www.drupal.org/node/3113209):
                 Drupal 9 Readiness for [Entityqueue Form Widget] with
                 Drupal coding standard and practice

### Updates since Varbase 8.x-8.3:
* Issue [#3118547](https://www.drupal.org/node/3118547):
                 Updated [Update helper] module from 8.1.2 to 8.1.3 and
                 changed the [PATCH] Enhancements to work with 8.1.3
* Issue [#3117970](https://www.drupal.org/node/3117970):
                 Updated [Paragraphs] module from 8.1.10 to 8.1.11
* Issue [#3123199](https://www.drupal.org/node/3123199):
                 Updated [Entity Embed] module from 8.1.0 to 8.1.1
* Issue [#3123192](https://www.drupal.org/node/3123192):
                 Updated [Bootstrap Barrio] theme to ~4.0 and removed
                 applied patches
* Issue [#3119879](https://www.drupal.org/node/3117970):
                 Varbase 8.8.4: Updated [CHANGELOG.md, README.md,
                 drupal-org.make] files and filtered the code for
                 Drupal 8 Coding Standard
* - Updated [Admin Toolbar] module from 8.2.0 to 8.2.2
* - Updated [Blazy] module from 8.2.0-rc6 to 8.2.0
* - Updated [CAPTCHA] module from 8.1.0-beta4 to 8.1.0
* - Updated [CKEditor Anchor Link] module from 8.1.6 to 8.1.7
* - Updated [Crop API] module from 8.2.0 to 8.2.1
* - Updated [Entity API] module from 8.1.0-rc3 to 8.1.0
* - Updated [Entity Browser Enhance(d|r)] module from 8.1.0-rc5 to 8.1.0
* - Updated [Entity Embed] module from 8.1.0 to 8.1.1
* - Updated [Entity Reference Revisions] module from 8.1.7 to 8.1.8
* - Updated [Entityqueue Form Widget] module from 8.1.0 to 8.1.1
* - Updated [Fast 404] module from 8.1.0-alpha4 to 8.1.0-alpha5
* - Updated [Focal Point] module from 8.1.2 to 8.1.3
* - Updated [Image Optimize (or ImageAPI Optimize)] module
            from 8.2.0-alpha4 to 8.2.0-beta1
* - Updated [ImageMagick] module from 8.3.0 to 8.3.1
* - Updated [Inline Entity Form] module from 8.1.0-rc2 to 8.1.0-rc3
* - Updated [JSON:API Extras] module from 8.3.13 to 8.3.14
* - Updated [Layout builder library] module from 8.1.0-beta1 to 8.1.0-beta2
* - Updated [Login Destination] module from 8.1.0-alpha2 to 8.1.0-beta1
* - Updated [Media Library Theme Reset] module from 8.1.0-beta1 to 8.1.0-beta2
* - Updated [Paragraphs] module from 8.1.10 to 8.1.11
* - Updated [Paragraphs Features] module from 8.1.7 to 8.1.8
* - Updated [Revision Log Default] module from 8.1.0 to 8.1.1
* - Updated [RoleAssign] module from 8.1.0-alpha2 to 8.1.0-beta1
* - Updated [Simple OAuth] module from 8.4.3 to 8.4.4
* - Updated [Slick Carousel] module from 8.2.0 to 8.2.1
* - Updated [Slick Views] module from 8.2.1 to 8.2.2
* - Updated [SMTP Authentication Support] module from 8.1.0-beta6 to 8.1.0-beta7
* - Updated [Total Control Admin Dashboard] module from 8.2.0-beta2 to 8.2.0
* - Updated [Update helper] module from 8.1.2 to 8.1.3
* - Updated [View Modes Inventory - Bootstrap Ready] module from 8.2.4 to 8.2.5
* - Updated [Views Bulk Operations (VBO)] module from 8.3.4 to 8.3.6
* - Updated [Views Infinite Scroll] module from 8.1.6 to 8.1.7
* - Updated [Webform] module from 8.5.8 to 8.5.9
* - Updated [Barrio] theme from 8.4.22 to 8.4.23
* - Updated [Varbase Core] module from 8.8.4 to 8.8.7
* - Updated [Varbase API] module from 8.7.8 to 8.7.9
* - Updated [Varbase Media] module from 8.7.14 to 8.7.19
* - Updated [Varbase Editor] module from 8.7.5 to 8.7.7
* - Updated [Varbase Media Hero Slider] module from 8.7.6 to 8.7.8
* - Updated [Varbase Blog (Corporate Blog)] module from 8.8.0 to 8.8.1
* - Updated [Varbase Bootstrap Paragraphs] module from 8.7.8 to 8.7.9
* - Updated [Varbase Carousels] module from 8.7.1 to 8.7.2
* - Updated [Varbase Email] module from 8.6.1 to 8.6.2
* - Updated [Varbase Landing] module from 8.7.1 to 8.7.2
* - Updated [Varbase Layout Builder] module from 8.1.0-alpha6 to 8.1.0-alpha9
* - Updated [Varbase Search] module from 8.6.4 to 8.6.5
* - Updated [Varbase SEO] module from 8.6.9 to 8.6.10
* - Updated [Varbase Social Single Sign-On] module from 8.6.7 to 8.6.8
* - Updated [Varbase Styleguide] module from 8.6.3 to 8.6.4
* - Updated [Varbase Total Control Dashboard] module from 8.6.9 to 8.6.10
* - Updated [Vartheme (Bootstrap 3 - LESS)] theme from 8.6.6 to 8.6.7
* - Updated [Vartheme (Bootstrap 4 - SASS)] theme from 8.6.7 to 8.6.9
* - Updated [Vartheme Admin] module from 8.6.7 to 8.6.9

### Fixes since Varbase 8.x-8.3:
* Issue [#3115391](https://www.drupal.org/node/3115391)
                by [abu-zakham](https://www.drupal.org/u/abu-zakham)
                : Fixed performance issue on page load for calling provider
                 name for each remote video
* Issue [#3116474](https://www.drupal.org/node/3116474)
                by [abu-zakham](https://www.drupal.org/u/abu-zakham)
                : Fixed performance issue on page load in
                 [Varbase Media Hero Slider] for calling provider name
                 for each remote video
* Issue [#3120994](https://www.drupal.org/node/3120994):
                 Fixed performance issue on page load in [Varbase Layout
                 Builder] for calling provider name for each remote video
* Issue [#3121003](https://www.drupal.org/node/3121003):
                 Fixed performance issue on page load in [Varbase Media Header]
                 for calling provider name for each remote video
* Issue [#3116196](https://www.drupal.org/node/3116196):
                 Fixed Warning: fread(): Length parameter must
                 be greater than 0
* Issue [#3117325](https://www.drupal.org/node/3117325)
                by [Firass Ziedan](https://www.drupal.org/u/firass-ziedan)
                : Fixed custom classes function in Varbase Layout Builder,
                 which was setting the same classes value more than once
* Issue [#3120062](https://www.drupal.org/node/3120062)
                by [Mohammad Fayoumi](https://www.drupal.org/u/mohammad-fayoumi)
                : Fixed Media Library Modal positioning
* Issue [#3117412](https://www.drupal.org/node/3117412)
                by [Firass Ziedan](https://www.drupal.org/u/firass-ziedan)
                : Fixed [Drupal core] issue on save issue with layout builder
* Issue [#3121532](https://www.drupal.org/node/3121532):
                 Fixed [Drupal core] 8.8.4 Error: Call to a member
                 function getLabel() after enabling layout_builder
* Issue [#3121628](https://www.drupal.org/node/3121628):
                 Fixed [Drupal core] Notice on missing or invalid version
                 in extensions, which Update manager throws errors and is
                 confused about site update status
* Issue [#3121487](https://www.drupal.org/node/3121487)
                by [Mohammad Fayoumi](https://www.drupal.org/u/mohammad-fayoumi)
                 : Fixed support of select expand in IE11/Edge
* Issue [#3121491](https://www.drupal.org/node/3121491)
                by [Mohammad Fayoumi](https://www.drupal.org/u/mohammad-fayoumi)
                 : Fixed support of clear button in IE11/Edge

--------------------------------------------------------------------------------

# 8.8.3

### Highlighted important changes since Varbase 8.x-8.2:
* Updated [Views Bulk Operations (VBO)] module to 8.3.4 in the drupal-org.make
file to clear the security flag for Drupal.org packaging 
* Views Bulk Operations (VBO) - Moderately critical - Access bypass -
 [SA-CONTRIB-2020-003](https://www.drupal.org/sa-contrib-2020-003)
--
* Composer users, a basic composer update will update the module.

### Added since Varbase 8.x-8.2:
* N/A

### Changed since Varbase 8.x-8.2:
* N/A

### Updates since Varbase 8.x-8.2:
* Issue [#3111633](https://www.drupal.org/node/3111633):
                  Updated [ImageMagick] module from 8.2.6 to 8.3.0
* Issue [#3111636](https://www.drupal.org/node/3111636):
                  Varbase 8.8.3: Updated [CHANGELOG.md, README.md,
                  drupal-org.make] files and filter the code for Drupal 8
                  Coding Standard
* - Updated [Layout Builder UX] module from 8.1.0-beta1 to 8.1.0-beta2
* - Updated [ImageMagick] module from 8.2.6 to 8.3.0
* - Updated [Admin Toolbar] module from 8.1.27 to 8.2.0
* - Updated [Views Bulk Operations (VBO)] module from 8.2.5 to 8.3.4
* - Updated [Content locking (anti-concurrent editing)] module
            from 8.1.0-alpha8 to 8.2.0
* - Updated [Better Exposed Filters] module from 8.3.0-alpha6 to 8.4.0-alpha1
* - Updated [Google Analytics] module from 8.2.4 to 8.3.0
* - Updated [Varbase Media] module from 8.7.12 to 8.7.13

### Fixes since Varbase 8.x-8.2:
* Issue [#3112241](https://www.drupal.org/node/3112241)
                  by [mhawwari](https://www.drupal.org/u/mhawwari)
                  : Fixed oEmbed issue of not recognizing Vimeo arguments

--------------------------------------------------------------------------------

# 8.8.2

### Highlighted important changes since Varbase 8.x-8.1:
* Issue [#3104773](https://www.drupal.org/node/3104773):
                 Added [Varbase Layout Builder settings] for options source
                 config to feed [Background color] styling option
* Issue [#3107973](https://www.drupal.org/node/3107973):
                 Added support for [Varbase Layout Builder] colors theme
                 vlb-colors library in Vartheme BS4 and VARTHEME_BS4_SUBTHEME
                 with gulp-csscomb
* Issue [#3106854](https://www.drupal.org/node/3106854):
                 Added a redirect to the layout editing page after creating a
                 new entity with a View mode Layout Builder enabled on the
                 default or full content display mode
* Issue [#3105983](https://www.drupal.org/node/3105983):
                 Added [Media and Gallery Block types] to be used with the
                 [Varbase Landing Page (Layout Builder)] content type

### Added since Varbase 8.x-8.1:
* Issue [#3090764](https://www.drupal.org/node/3090764)
                 by [Odai Atieh](https://www.drupal.org/u/odai-atieh)
                : Added [object-fit-polyfill] library in [Varbase Core] to
                 support IE 9+, iOS 7-, and Android 4.4  (Image, Video,
                 YouTube, Vimeo) Object-fit
* Issue [#3105908](https://www.drupal.org/node/3105908):
                 Added [Text formats Block types] to be used with the
                 [Varbase Landing Page (Layout Builder)] content type
* Issue [#3107731](https://www.drupal.org/node/3107731):
                 Added [Block Form Alter] module ( ~1.0 )
* Issue [#3104761](https://www.drupal.org/node/3104761):
                 Added and enable [Entity Blocks] module ( ~1.0 ) and
                 configured restriction for Varbase Landing Page
                 (Layout Builder) content type
* Issue [#3105920](https://www.drupal.org/node/3105920):
                 Added [Block Content Permissions] module ( ~1.0 )
* Issue [#3105911](https://www.drupal.org/node/3105911):
                 Added [Allowed Formats] module ( ~1.0 )
* Issue [#3106590](https://www.drupal.org/node/3106590):
                 Added [Configuration inspector] module to [Varbase Development]
                 for development usage only
* Issue [#3104059](https://www.drupal.org/node/3104059)
                by [Mohammad Fayoumi](https://www.drupal.org/u/mohammad-fayoumi)
                : Added alternative text to the logo print image in
                 [Varbase Theme (Bootstrap 4 - SASS)]
* Issue [#3079231](https://www.drupal.org/node/3079231)
                 by [metalbote](https://www.drupal.org/u/metalbote)
                : Added code quality tests and analysis

### Changed since Varbase 8.x-8.1:
* Issue [#3106793](https://www.drupal.org/node/3106793)
               by [Mohammed J. Razem](https://www.drupal.org/u/mohammed-j-razem)
                : Provided a new token for the site origin URL (protocol
                 and domain name) without language prefix
* Issue [#3082722](https://www.drupal.org/node/3082722)
                 by [firassziedan](https://www.drupal.org/u/firass-ziedan)
                , [RajabNatshah](https://www.drupal.org/u/rajabnatshah)
                , [Mohammed J. Razem](https://www.drupal.org/u/mohammed-j-razem)
                : Changed default metatag configs to use Origin URL
                 [site:origin-url] token for the site (protocol and
                 domain name) without language prefix
* Issue [#3106862](https://www.drupal.org/node/3106862)
                 by [Mohammed J. Razem](https://www.drupal.org/u/mohammed-j-razem)
                : Changed the redirect_404 view to show full pager and sort by
                 last accessed
* Issue [#3109736](https://www.drupal.org/node/3109736):
                 Changed alternatives gulp-csscombx with gulp-csscomb
* Issue [#3074961](https://www.drupal.org/node/3074961)
                 by [metalbote](https://www.drupal.org/u/metalbote)
                : Changed web-root logic as drupal-root should not be
                 hard-coded in Script handler

### Updates since Varbase 8.x-8.1:
* Issue [#3111086](https://www.drupal.org/node/3111086):
                 Updated [Update helper] module from 8.1.1 to 8.1.2
* Issue [#3108245](https://www.drupal.org/node/3108245):
                 Updated [Views Bootstrap] module from 8.4.1 to 8.4.2 ( ~4.0 )
                 and removed committed patches
* Issue [#3106252](https://www.drupal.org/node/3106252):
                 Updated [Entity Browser] module from 8.2.2 to 8.2.3 ( ~2.0 )
                 and remove committed patches
* Issue [#3104881](https://www.drupal.org/node/3104881):
                 Updated [Better Login] module from 8.1.3 to 8.1.4 ( ~1.0 )
                 and removed committed patches
* Issue [#3106477](https://www.drupal.org/node/3106477):
                 Updated [Layout Builder Modal] from 8.1.0-alpha2 to 8.1.0
                 ( ~1.0 ) and removed committed patches
* Issue [#3108121](https://www.drupal.org/node/3108121):
                 Updated [Popper.js] library to v2.0.0 stable
* Issue [#3110640](https://www.drupal.org/node/3110640):
                 Varbase 8.8.2: Updated [CHANGELOG.md, README.md,
                 drupal-org.make] files and filtered the code for Drupal
                 8 Coding Standard
* - Updated [Better Login] module from 8.1.3 to 8.1.4
* - Updated [Color Field] module from 8.2.0 to 8.2.2
* - Updated [Crop API] module from 8.2.0-rc1 to 8.2.0
* - Updated [Diff] module from 8.1.0-rc2 to 8.1.0
* - Updated [DRD Agent] module from 8.3.12 to 8.3.13
* - Updated [dropzonejs] module from 8.2.0-alpha4 to 8.2.0
* - Updated [Entity Browser] module from 8.2.2 to 8.2.4
* - Updated [External Links] module from 8.1.1 to 8.1.2
* - Updated [Field Group] module from 8.3.0-rc2 to 8.3.0
* - Updated [Layout Builder Modal] module from 8.1.0-alpha2 to 8.1.0
* - Updated [Length Indicator] module from 8.1.0 to 8.1.1
* - Updated [Link Attributes widget] module from 8.1.9 to 8.1.10
* - Updated [Masquerade] module from 8.2.0-beta2 to 8.2.0-beta3
* - Updated [Maxlength] module from 8.1.0-beta4 to 8.1.0-beta5
* - Updated [Media entity Twitter] module from 8.2.1 to 8.2.3
* - Updated [Media Library Form API Element] module from 8.1.0-alpha4 to 8.1.0-alpha7
* - Updated [Menu position] module from 8.1.0-alpha1 to 8.1.0-alpha2
* - Updated [reCAPTCHA] module from 8.2.4 to 8.2.5
* - Updated [Slick Carousel] module from 8.2.0-rc4 to 8.2.0
* - Updated [Slick Views] module from 8.2.0 to 8.2.1
* - Updated [Update helper] module from 8.1.1 to 8.1.2
* - Updated [User protect] module from 8.1.0 to 8.1.1
* - Updated [Views Bootstrap] module from 8.4.1 to 8.4.2
* - Updated [Webform] module from 8.5.6 to 8.5.8
* - Updated [Varbase Core] module from 8.8.0 to 8.8.4
* - Updated [Varbase Editor] module from 8.7.4 to 8.7.5
* - Updated [Varbase Layout Builder] module from 8.1.0-alpha3 to 8.1.0-alpha6
* - Updated [Varbase Media] module from 8.7.11 to 8.7.12
* - Updated [Varbase SEO] module from 8.6.7 to 8.6.9
* - Updated [Varbase Theme (Bootstrap 4 - SASS)] theme from 8.6.5 to 8.6.7

### Fixes since Varbase 8.x-8.1:
* Issue [#3109040](https://www.drupal.org/node/3109040):
                 Fixed background media supports in [Varbase Layout Builder]
                 for IE 9+, iOS 7-, and Android 4.4 (Image, Video,
                 YouTube, Vimeo) Object-fit
* Issue [#3106640](https://www.drupal.org/node/3106640)
                 by [mhawwari](https://www.drupal.org/u/mhawwari)
                : Fixed deprecated override file for [Varbase Media Hero Slider]
                 theming in Vartheme BS4 Sub-themes
* Issue [#3106321](https://www.drupal.org/node/3106321):
                 Fixed regression for overridden media types with other
                 Varbase components like Varbase Blog and Varbase Media Header
* Issue [#3104904](https://www.drupal.org/node/3104904)
                 by [josebc](https://www.drupal.org/u/josebc)
                : Fixed upgrading [Config Filter] to 2.x breaks old
                 [config splits] configs
* Issue [#3103868](https://www.drupal.org/node/3103868)
                 by [RajabNatshah](https://www.drupal.org/u/rajabnatshah)
                , [Joachim Namyslo](https://www.drupal.org/u/joachim-namyslo)
                : Fixed update-varbase.sh should invoke composer update
                 whenever possible
* Issue [#3109848](https://www.drupal.org/node/3109848):
                 Fixed Cache Tags on node revision preview timestamp
                 for a node content page
* Issue [#3106537](https://www.drupal.org/node/3106537):
                 Fixed Warning: for misnamed Plugin Alternate Hand held
                 in [metatag] module
* Issue [#3110723](https://www.drupal.org/node/3110723):
                 Fixed notice error messages from [External Links]
                 module for not having a default config values
* Issue [#3111112](https://www.drupal.org/node/3111112)
                  by [Omar Alahmed](https://www.drupal.org/u/omar-alahmed)
                  : Fixed Autocomplete Deluxe issue of no auto suggestion

--------------------------------------------------------------------------------

# 8.8.1

### Highlighted important changes since Varbase 8.x-8.0:
* Issue [#3103717](https://www.drupal.org/node/3103717):
                  Fixed replace drupal-composer/drupal-scaffold with
                  drupal/core-composer-scaffold and remove post install cmd scripts
* [Vardot/varbase-project](https://github.com/Vardot/varbase-project)
                  template : Fixed replace
                  drupal-composer/drupal-scaffold with
                  drupal/core-composer-scaffold
                  [#70](https://github.com/Vardot/varbase-project/issues/70)
* [Vardot/varbase-updater](https://github.com/Vardot/varbase-updater)
                  : Changed the update config rules for 8.7.* to 8.8.1 and
                  from 8.8.* to 8.8.* latest
                  [#24](https://github.com/Vardot/varbase-updater/issues/24)

### Added since Varbase 8.x-8.0:
* No new features. Have a look at Varbase 8.x-8.0

### Changed since Varbase 8.x-8.0:
* No changes. Have a look at Varbase 8.x-8.0

### Updates since Varbase 8.x-8.0:
* Issue [#3103730](https://www.drupal.org/node/3103730):
                  Varbase 8.8.1: Update [CHANGELOG.md, README.md,
                  drupal-org.make] files and filter the code for
                  Drupal 8 Coding Standard
* - Updated [Token] module from 8.1.5 to 8.1.6
* - Updated [Varbase Layout Builder] module from 8.1.0-alpha2 to 8.1.0-alpha3
* - Updated [Varbase Media] module from 8.7.9 to 8.7.10
* - Updated [Varbase Media Hero Slider] module from 8.7.5 to 8.7.6
* - Updated [Varbase Media Header] module from 8.7.3 to 8.7.4

### Fixes since Varbase 8.x-8.0:
* Issue [#3103229](https://www.drupal.org/node/3103229)
                by [RajabNatshah](https://www.drupal.org/u/rajabnatshah)
                , [jedgar1mx](https://www.drupal.org/u/jedgar1mx)
                : Fixed [Embed buttons] icons for the CKEditor after the change
                of Embed API as they had dropped icon_uuid and change of config
                schema in case for optional updates or buttons were deleted
* Issue [#3102935](https://www.drupal.org/node/3102935)
                by [mhawwari](https://www.drupal.org/u/mhawwari)
                : Fixed console error. Vimeo player fires twice for [Varbase
                Media Hero Slider]
* Issue [#3103554](https://www.drupal.org/node/3103554)
                by [Abdelrahman_Amer](https://www.drupal.org/u/abdelrahman_amer)
                : Fixed notice for [Varbase Media] oembed iframe on an
                Undefined index: render element in
                drupal_find_theme_templates()
* Issue [#3103566](https://www.drupal.org/node/3103566)
                by [Abdelrahman_Amer](https://www.drupal.org/u/abdelrahman_amer)
                : Fixed notice for [Varbase Media Hero Slider] oembed iframe
                on an Undefined index: render element in
                drupal_find_theme_templates()
* Issue [#3103565](https://www.drupal.org/node/3103565)
                by [Abdelrahman_Amer](https://www.drupal.org/u/abdelrahman_amer)
                : Fixed notice for [Varbase Media Header] oembed iframe on
                an Undefined index: render element in
                drupal_find_theme_templates()
* Issue [#3103564](https://www.drupal.org/node/3103564)
                by [Abdelrahman_Amer](https://www.drupal.org/u/abdelrahman_amer)
                : Fixed notice for [Varbase Layout Builder] oembed iframe on
                an Undefined index: render element in
                drupal_find_theme_templates()

--------------------------------------------------------------------------------

# 8.8.0

### Highlighted important changes since Varbase 8.x-7.4:
* Updated [Drupal] core from ~8.7.0 to ~8.8.0
* Issue [#3093406](https://www.drupal.org/node/3093406):
                  Started an 8.x-8.x new branch for [Varbase] version:
                  8.x-8.x-dev and extra branch-alias with
                  dev-8.x-8.x to 8.8.x-dev
* Issue [#3100016](https://www.drupal.org/node/3100016):
                  Switched from drupal/core ~8.8.0 to drupal/core-recommended
                  ~8.8.0 in Varbase Core 8.8.0
* Issue [#3099991](https://www.drupal.org/node/3099991):
                  Switched from drupal-composer/drupal-scaffold ~2.0
                  to drupal/core-composer-scaffold ^8.8.0
* Issue [#3082049](https://www.drupal.org/node/3082049):
                  Initialized [Varbase Layout Builder] with a starter set
                  of layouts and styling options for sections

### Added since Varbase 8.x-7.4:
* Issue [#3099007](https://www.drupal.org/node/3099007):
                  Added [Varbase Layout Builder] component module
* Issue [#3102723](https://www.drupal.org/node/3102723):
                  Added the 3101791-8.patch for [Layout Builder Modal] module
                  to fix an integration issue with [Layout Builder UX]
                  to configure shortcut link to open with modal
* Issue [#3102559](https://www.drupal.org/node/3102559):
                 Added the 3102555-3.patch for [Better Login] module to fix
                 the remove all blocks in content region
* Issue [#3102065](https://www.drupal.org/node/3102065):
                 Added a necessary initialization for the entire system to
                 account for changed config by the end of the installation 

### Changed since Varbase 8.x-7.4:
* Issue [#3093405](https://www.drupal.org/node/3093405):
                  Started an 8.x-8.x branch for [Varbase Core] module
* Issue [#3093424](https://www.drupal.org/node/3093424):
                  Started an 8.x-8.x branch for [Varbase Blog] module
* Issue [#3095593](https://www.drupal.org/node/3095593):
                  Changed Feature: User Management - Standard User Management
                  - Admins can create users and assign a role to them - to work
                  with Drupal 8.7.10 and Drupal 8.8.x
* Issue [#3102415](https://www.drupal.org/node/3102415)
                  by [jedgar1mx](https://www.drupal.org/u/jedgar1mx)
                 : Removed the 3034353-2.patch for [Social Auth Google] as it
                  was committed in 8.x-2.0 stable
* Issue [#3098737](https://www.drupal.org/node/3098737):
                   Remove the 3096956-17 patch for [Views Reference Field] as
                   it was committed and 8.x-2.0-alpha6 was released

### Updates since Varbase 8.x-7.4:
* Updated [Drupal] core from 8.7.11 ( ~8.7.0 ) to 8.8.1 ( ~8.8.0 )
* Issue [#3101570](https://www.drupal.org/node/3101257):
                  Update [Update helper] module from 8.1.0 to 8.1.1 and update
                  the [PATCH] Enhancements
* Issue [#3101257](https://www.drupal.org/node/3101257):
                  Updated [Config Filter] from ~1.0 to ~2.0
* Issue [#3101261](https://www.drupal.org/node/3101261):
                  Updated [Content locking (anti-concurrent editing)]
                  module from ~1.0 to ~2.0
* Issue [#3102032](https://www.drupal.org/node/3102032):
                  Updated [Devel] module from * ( ~2.0 ) to  ~3.0
* Issue [#3095576](https://www.drupal.org/node/3095576):
                  Varbase 8.8.0: Update [CHANGELOG.md, README.md,
                  drupal-org.make] files and filter the code for Drupal
                  8 Coding Standard
* - Updated [Drupal] core from 8.7.11 ( ~8.7.0 ) to 8.8.1 ( ~8.8.0 )
* - Updated [DRD Agent] module from 8.1.10 to 8.1.12
* - Updated [Metatag] module from 8.1.10 to 8.1.11
* - Updated [Paragraphs] module from 8.1.9 to 8.1.10
* - Updated [Social API] module from 8.2.0-rc1 to 8.2.0-rc2
* - Updated [Social Auth] module from 8.2.0-rc1 to 8.2.0-rc2
* - Updated [Social Auth Google] module from 8.2.0-beta4 to 8.2.0
* - Updated [Blazy] module from 8.2.0-rc5 to 8.2.0-rc6
* - Updated [Social Auth Facebook] module from 8.2.0-beta4 to 8.2.0

### Fixes since Varbase 8.x-7.4:
* Issue [#3098789](https://www.drupal.org/node/3098789):
                  Fixed [Media Library] and the [Media Grid and
                  Media Table] admin pages
* Issue [#3098750](https://www.drupal.org/node/3098750):
                  Fixed the Automated Functional Acceptance Testing group:
                  03 admin management for [Media Library] and the
                  [Media Grid and Media Table] admin pages
* Issue [#3101234](https://www.drupal.org/node/3101234):
                  Fixed Drupal core multilingual site's layout edit
                  context issue
* Issue [#3101310](https://www.drupal.org/node/3101310):
                  Fixed argument 2 passed to Drupal jsonapi Routing closure
                  must be an instance of ResourceType, NULL given
* Issue [#3096606](https://www.drupal.org/node/3096606):
                  Fixed drag and drop of blocks incompatible issue for
                  [Bootstrap Layouts] with [Layout Builder]
* Issue [#3096607](https://www.drupal.org/node/3096607):
                  Fixed unsupported operand types for [Bootstrap Layouts]
                  in set configuration
* Issue [#3103229](https://www.drupal.org/node/3103229):
                  Fixed [Embed buttons] icons for the CKEditor after the
                  change of Embed API as they had dropped icon_uuid and
                  change of config schema

--------------------------------------------------------------------------------

# 8.7.2

### Highlighted important changes since Varbase 8.x-7.1:

* Issue [#3085390](https://www.drupal.org/node/3085390):
                 Updated [Drupal core] from 8.7.7 to 8.7.8 (~8.7.0 )
                 and remove applied patches

## Switched CSS management for all Varbase Components from LESS to SCSS with
Gulp as the task manager and made use of the (RFS) Responsive Font Size SCSS
library as we had shifted our responsive media breakpoints to the Bootstrap 4
breakpoints

## So it's the same number for the breakpoint but under the new name for the
breakpoint.

* Issue [#3077909](https://www.drupal.org/node/3077909):
                 Switched CSS management for [Varbase Media Hero Slider]
                 from LESS to SCSS with Gulp as the task manager and make use
                 of the (RFS) Responsive Font Size SCSS library
* Issue [#3080019](https://www.drupal.org/node/3080019):
                 Switched CSS management for [Varbase Bootstrap Paragraphs]
                 from LESS to SCSS with Gulp as the task manager and make use
                 of the (RFS) Responsive Font Size SCSS library, which comes
                 with Bootstrap 4

### Added since Varbase 8.x-7.1:
* Issue [#3085537](https://www.drupal.org/node/3085537):
                 Added [Token Filter] module 8.1.1 ( ~1.0 )
* Issue [#3085555](https://www.drupal.org/node/3085555):
                 Had the [Replaces global and entity tokens with their values]
                 filter only for HTML Editor (code filter) text format
* Issue [#3085199](https://www.drupal.org/node/3085199):
                 Added support for [drupal off canvas editor] and the
                 [layout builder] settings try to [Vartheme BS4] theme with
                 vbp_color and vbp_colors mixins
* Issue [#3085292](https://www.drupal.org/node/3085292):
                 Added support for [drupal off canvas editor] and the
                 [layout builder] settings try to [Varbase Bootstrap Paragraphs]
                 module with vbp_color and vbp_colors mixins
* Issue [#3085141](https://www.drupal.org/node/3085141)
                 by [Muath Khraisat](https://www.drupal.org/u/muath-khraisat)
                 : Added the 3049311-9.patch for [Views Bootstrap] module to fix
                 missing col-lg and col-xl in bootstrap grid format settings
                 and grids should not be split into multiple rows
* Issue [#3077926](https://www.drupal.org/node/3077926):
                 Added an optional config update to [Varbase Update Helper]
                 for the new Gallery media type, changes in the entity browsers,
                 Displays and form Displays

### Changed since Varbase 8.x-7.1:
* Issue [#3086223](https://www.drupal.org/node/3086223):
                 Changed [Varbase Blog] views for blog listing to work with
                 the better logic for Bootstrap 4
* Issue [#3086262](https://www.drupal.org/node/3086262):
                 Changed [Vartheme BS4] theme hook to work with
                 [Views Bootstrap] ~4.0 grid new better logic and template
                 for Bootstrap 
* Issue [#3076272](https://www.drupal.org/node/3076272)
                 by [metalbote](https://www.drupal.org/u/metalbote)
                , [RajabNatshah](https://www.drupal.org/u/rajabnatshah)
                : Switched CSS management for [Vartheme Admin]
                 from LESS to SCSS with Gulp as the task manager
* Issue [#3080023](https://www.drupal.org/node/3080023):
                 Switched CSS management for [Varbase Total Control Dashboard]
                 from LESS to SCSS with Gulp as the task manager and make use
                 of the (RFS) Responsive Font Size SCSS library
* Issue [#3077911](https://www.drupal.org/node/3077911):
                 Switched CSS management for [Varbase Media Header]
                 from LESS to SCSS with Gulp as the task manager and make use
                 of the (RFS) Responsive Font Size SCSS library
* Issue [#3080020](https://www.drupal.org/node/3080020):
                 Switched CSS management for [Varbase FAQs]
                 from LESS to SCSS with Gulp as the task manager and make use
                 of the (RFS) Responsive Font Size SCSS library
* Issue [#3080022](https://www.drupal.org/node/3080022):
                 Switched CSS management for [Varbase Styleguide] from LESS to SCSS with Gulp as the task manager and make use of the (RFS) Responsive Font Size SCSS library
* Issue [#3085333](https://www.drupal.org/node/3085333)
                 by [philltran](https://www.drupal.org/u/philltran)
                : Removed [Drupal core] patch for issue 2885441 from
                 drupal-org-core.make

### Updates since Varbase 8.x-7.1:
* Issue [#3085104](https://www.drupal.org/node/3085104):
                  Varbase 8.7.2: Updated [CHANGELOG.md, README.md,
                  drupal-org.make] files and filter the code for
                  Drupal 8 Coding Standard
* - Updated [Blazy] module from 8.2.0-rc3 to 8.2.0-rc5
* - Updated [CAPTCHA] module from 8.1.0-beta1 to 1.0-beta3
* - Updated [CKEditor Media Embed Plugin] module from 8.1.6 to 8.1.7
* - Updated [DRD Agent] module from 8.3.8 to 8.3.9
* - Updated [Entity Reference Revisions] module from 8.1.6 to 8.1.7
* - Updated [Focal Point] module from 8.1.0 to 8.1.2
* - Updated [Inline Entity Form] module from 8.1.0-rc1 to 8.1.0-rc2
* - Updated [JSON:API Extras] module from 8.3.10 to 8.3.12
* - Updated [Media entity Instagram] module from 8.2.0-alpha2 to 8.2.0
* - Updated [Media entity Twitter] module from 8.2.0-alpha3 to 8.2.1
* - Updated [Metatag] module from 8.1.9 to 8.1.10
* - Updated [Slick Carousel] module from 8.2.0-rc3 to 8.2.0-rc4
* - Updated [SMTP Authentication Support] module from 8.1.0-beta4 to 8.1.0-beta5
* - Updated [Views Bulk Edit] module from 8.2.3 to 8.2.4
* - Updated [Simple OAuth] from 8.3.16 to 8.4.2
* - Updated [Simple XML sitemap from 8.3.3 to 8.3.4
* - Updated [Maxlength] from 8.1.0-beta2 to 8.1.0-beta4
* Issue [#3085506](https://www.drupal.org/node/3085506):
                 Updated [ChromeDriver, standalone selenium server] for
                 the travis-ci Automated Functional Acceptance Testing and
                 updated emuse/behat-html-formatter to ^0.2.0
* Issue [#3078550](https://www.drupal.org/node/3078550):
                 Updated [Display Suite] module from 8.3.3 to 8.3.4 ( ~3.0 )
                 and removed committed patches
* Issue [#3080789](https://www.drupal.org/node/3080789):
                 Updated [Focal Point] module from 1.0 to 1.1 ( ~1.0 )
                 and removed committed patches
* Issue [#3079468](https://www.drupal.org/node/3079468)
                 by [jedgar1mx](https://www.drupal.org/u/jedgar1mx)
                 , [RajabNatshah](https://www.drupal.org/u/rajabnatshah)
                 : Updated [Simple OAuth]
                 from ~3.0 to ~4.0

### Fixes since Varbase 8.x-7.1:
* Issue [#3082815](https://www.drupal.org/node/3082815)
                 by [Firass Ziedan](https://www.drupal.org/u/firass-ziedan)
                : Fixed the slider in [RTL] display half of the vimeo and
                 youtube video in [Varbase Media Hero Slider].
* Issue [#3080137](https://www.drupal.org/node/3080137)
                 by [yasmeensalah](https://www.drupal.org/u/yasmeensalah)
                : Fixed hook preprocess name for [Varbase Media Header]
                 from [Varbase Media Hero Slider] module
* Issue [#3084824](https://www.drupal.org/node/3084824)
                 by [abedajam](https://www.drupal.org/u/abedajam)
                : Fixed missing character in paragraphs previewer
                 hook_field_widget_WIDGET_TYPE_form_alter in [Varbase Bootstrap
                 Paragraphs] modules
* Issue [#3081350](https://www.drupal.org/node/3081350)
                 by [Odai Atieh](https://www.drupal.org/u/odai-atieh)
                : Fixed [Varbase Theme (Bootstrap 4 - SASS)]
                 theme sub-theme bash script generator on MAC OS X
* Issue [#3081351](https://www.drupal.org/node/3081351)
                 by [Odai Atieh](https://www.drupal.org/u/odai-atieh)
                : Fixed [Vartheme BS3] theme sub-theme bash script generator
                 on MAC OS X
* Issue [#3081361](https://www.drupal.org/node/3081361)
                 by [Odai Atieh](https://www.drupal.org/u/odai-atieh)
                : Fixed [Vartheme BS4] theme sub-theme bash script generator
                 on MAC OS X
* Issue [#3078546](https://www.drupal.org/node/3078546)
                 by [Firass Ziedan](https://www.drupal.org/u/firass-ziedan)
                : Fixed Vartheme BS4 RTL generation script for a new
                 sub-theme not create {theme}-rtl base file
* Issue [#3078545](https://www.drupal.org/node/3078545)
                 by [Firass Ziedan](https://www.drupal.org/u/firass-ziedan)
                : Fixed RTL generation in create-new-vartheme-bs4 script not 
                create {theme}-rtl base file
* Issue [#3071221](https://www.drupal.org/node/3071221)
                 by [marioangulo](https://www.drupal.org/u/marioangulo)
                : Fixed Top Pages Panel Urls in [Varbase Total Control
                 Dashboard] module
* Issue [#3085671](https://www.drupal.org/node/3085671):
                 Fixed the update process to uninstall the Simple Oauth Extras
                 module as it was merged into Simple Oauth to make it work
                 without conditions
* Issue [#3086751](https://www.drupal.org/node/3086751)
                 by [Firass Ziedan](https://www.drupal.org/u/firass-ziedan)
                 : Fixed paragraphs styling regression issue by removing
                 make-row() mixin call from scss base file

--------------------------------------------------------------------------------

# 8.7.1

### Highlighted important changes since Varbase 8.x-7.0:
* Issue [#3073370](https://www.drupal.org/node/3073370):
                 Updated [Drupal core] from 8.7.4 to 8.7.6 ( ~8.7.0 ) by
                 removing already applied or committed patches in drupal/core
* Issue [#3075805](https://www.drupal.org/node/3075805):
                 Updated [Metatag] module from 8.1.8 to 8.1.9
* Issue [#3075628](https://www.drupal.org/node/3075628):
                 Added [Gallery] media type

### Added since Varbase 8.x-7.0:
* Issue [#3075633](https://www.drupal.org/node/3075633):
                 Added SASS/SCSS compile options in [Vartheme BS4] for output
                 Style as expanded, indent Type as space, and indent Width
                 of 2 spaces
* Issue [#3011500](https://www.drupal.org/node/3011500)
                 by
                 [lexsoft](https://www.drupal.org/u/lexsoft)
                , [RajabNatshah](https://www.drupal.org/u/rajabnatshah)
                : Added Icons in [Varbase Media] for Entity Embed CKEditor
                 Media Library and Gallery buttons

### Changed since Varbase 8.x-7.0:
* Issue [#3075624](https://www.drupal.org/node/3075624):
                 Switched CSS management for [Varbase Media] from LESS
                 to SCSS with gulp
* Issue [#3075795](https://www.drupal.org/node/3075795):
                 Changed configure widgets for Entity Browser Enhanced
                 behaviors using the new schema format
* Issue [#2998934](https://www.drupal.org/node/2998934)
                 by
                 [Pasqualle](https://www.drupal.org/u/pasqualle)
                , [RajabNatshah](https://www.drupal.org/u/rajabnatshah)
                , [Mohammed J. Razem](https://www.drupal.org/u/mohammed-j-razem)
                : Split up config with schema refactor to have Enhancer for
                 each given entity browser widget separately per entity browser
* Issue [#3074888](https://www.drupal.org/node/3074888):
                 Switched CSS management in the [VMI] module from LESS
                 to SCSS with gulp and make use of the (RFS) Responsive
                 Font Size SCSS library
* Issue [#3075753](https://www.drupal.org/node/3075753):
                 Removed CKEditor embed button style icon as we are using
                 the Varbase Media Embed Button icons
* Issue [#3076031](https://www.drupal.org/node/3076031):
                 Changed [Varbase Admin] with a follow up issue to change
                 after a new release of Responsive Theme Preview module
                 with an update for list of devices to pass the Feature:
                 Preview the site in a number of responsive devices
* Issue [#3076057](https://www.drupal.org/node/3076057):
                 Changed [Feature: Preview the site in a number of
                 responsive devices] automated functional testing to
                 follow with new updated list of devices in the
                 Responsive Theme Preview module
* Issue [#3077303](https://www.drupal.org/node/3077303):
                 Switched all CKEditor Embed Media (Image, Video, Remote Video)
                 view modes from Blazy to Responsive image styles
                 [ Default, Original, Large (Full width),
                 Medium (1/2 of width), Small (1/4 of width) ]

### Updates since Varbase 8.x-7.0:
* Issue [#3075851](https://www.drupal.org/node/3075851):
                 Updated [Paragraphs] module from 8.1.8 to 8.1.9
* Issue [#3067764](https://www.drupal.org/node/3067764):
                 Updated [Layout Builder Restrictions] from ~1.0 to ~2.0
* Issue [#3076079](https://www.drupal.org/node/3076079):
                 Updated [OpenAPI] module from 8.1.0-beta4 to 8.1.0-beta6
                 ( ~1.0 )
* Issue [#3075801](https://www.drupal.org/node/3075801):
                 Updated drupal-org.make files and filter the code for
                 Drupal 8 Coding Standard
* - Updated [Entity Browser Enhance(d|r)] module from 8.1.0-rc4 to 8.1.0-rc5
* - Updated [Entityqueue Form Widget] module from 8.1.0-rc1 to 8.1.0
* - Updated [JSON:API Extras] module from 8.3.8 to 8.3.10
* - Updated [Link Attributes widget] module from 8.1.8 to 8.1.9
* - Updated [Paragraphs] module from 8.1.8 to 8.1.9
* - Updated [Paragraphs Features] module from 8.1.4 to 8.1.6
* - Updated [Responsive Theme Preview] module from 8.1.0-alpha7 to 8.1.0-beta1
* - Updated [Schema.org Metatag] module from 8.1.3 to 8.1.4
* - Updated [Search API] module from 8.1.13 to 8.1.14
* - Updated [Simple XML sitemap] module from 8.3.2 to 8.3.3
* - Updated [Social API] module from 8.2.0-beta5 to 8.2.0-rc1
* - Updated [Social Auth] module from 8.2.0-beta6 to 8.2.0-rc1
* - Updated [View Modes Inventory - Bootstrap Ready] module from 8.2.2 to 8.2.3
* - Updated [Webform] module from 8.5.2 to 8.5.4
* - Updated [Charts] module from 8.3.0-beta3 to 8.3.0
* - Updated [Image Magick] module from 8.2.5 to 8.2.6

### Fixes since Varbase 8.x-7.0:
* Issue [#3067853](https://www.drupal.org/node/3067853)
                 by
                 [Mohammed J. Razem](https://www.drupal.org/u/mohammed-j-razem)
                : Fixed issue in a custom token used in two places in
                 the metatag config
* Issue [#3075638](https://www.drupal.org/node/3075638):
                 Fixed [Vartheme BS4] Drupal coding standard and Drupal Practice
* Issue [#3067836](https://www.drupal.org/node/3067836):
                 Fixed [Varbase Email] uses of deprecated Drupal core APIs
                 and standard Drupal Practice
* Issue [#3067834](https://www.drupal.org/node/3067834):
                 Fixed [Varbase API] uses of deprecated Drupal core APIs and
                 standard Drupal Practice
* Issue [#3067841](https://www.drupal.org/node/3067841)
                 by [joy29](https://www.drupal.org/u/joy29)
                , [RajabNatshah](https://www.drupal.org/u/rajabnatshah)
                : Fixed [Varbase Bootstrap Paragraphs]
                 uses of deprecated Drupal core APIs and standard Drupal Practice
* Issue [#3067829](https://www.drupal.org/node/3067829)
                 by [joy29](https://www.drupal.org/u/joy29)
                , [RajabNatshah](https://www.drupal.org/u/rajabnatshah)
                : Fixed [Varbase Media Hero Slider]
                 uses of deprecated Drupal core APIs and standard Drupal Practice
* Issue [#3067832](https://www.drupal.org/node/3067832)
                 by [joy29](https://www.drupal.org/u/joy29)
                , [RajabNatshah](https://www.drupal.org/u/rajabnatshah)
                : Fixed [Varbase Editor] uses of
                 deprecated Drupal core APIs and standard Drupal Practice
* Issue [#3068329](https://www.drupal.org/node/3068329)
                 by [a.qala](https://www.drupal.org/u/aqala)
                : Fixed Hero slider content wrapper is affecting the
                 administration menu
* Issue [#3067840](https://www.drupal.org/node/3067840)
                 by [joy29](https://www.drupal.org/u/joy29)
                , [RajabNatshah](https://www.drupal.org/u/rajabnatshah)
                : Fixed [Varbase Carousels] uses
                 of deprecated Drupal core APIs and standard Drupal Practice
* Issue [#3067828](https://www.drupal.org/node/3067828)
                 by
                 [Mohammad Fayoumi](https://www.drupal.org/u/mohammad-fayoumi)
                , [RajabNatshah](https://www.drupal.org/u/rajabnatshah)
                : Fixed [Varbase Media] uses
                 of deprecated Drupal core APIs and standard Drupal Practice
* Issue [#3067824](https://www.drupal.org/node/3067824):
                 Fixed [Varbase Total Control Dashboard] uses of deprecated
                 Drupal core APIs and standard Drupal Practice
* Issue [#3076284](https://www.drupal.org/node/3076284):
                 Fixed project: varbase_search in .info.yml for the Drupal
                 project usage statistics report and update counter
* Issue [#3067843](https://www.drupal.org/node/3067843):
                 Fixed project: varbase_blog in .info.yml for the Drupal
                 project usage statistics report and update counter
* Issue [#3076291](https://www.drupal.org/node/3076291):
                 Fixed project: varbase_auth in .info.yml for the Drupal
                 project usage statistics report and update counter

--------------------------------------------------------------------------------

# 8.7.0


### Highlighted important changes since Varbase 8.6.12:

* Issue [#3057183](https://www.drupal.org/node/3057183):
                 Added [Varbase API] module and have it as an
                 (optional component) at the varbase install steps
* Issue [#3057152](https://www.drupal.org/node/3057152):
                 Enabled [Varbase Bootstrap Paragraphs Text and Image] in
                 [Varbase Landing] module
* Issue [#3057161](https://www.drupal.org/node/3057161):
                 Added and enable [Paragraphs edit] in [Varbase Bootstrap
                 Paragraphs ] with the hook for styling in the single paragraph edit page
* Issue [#3061425](https://www.drupal.org/node/3061425):
                 Upgraded [Views Bulk Operations (VBO)] from ~2.0 to ~3.0

### Added since Varbase 8.6.12:
* Issue [#3057533](https://www.drupal.org/node/3057533):
                 Added and enabled [Events log track] module in the
                 [Varbase admin] module and enabled all Events log track
                 modules except Workflows
* Issue [#3063924](https://www.drupal.org/node/3063924):
                 Added the Masonry, Images Loaded asset libraries
* Issue [#3057151](https://www.drupal.org/node/3057151):
                 Enabled [Redirect domain] module in the [Varbase seo] module
* Issue [#3060110](https://www.drupal.org/node/3060110)
                 by
                 alonaoneill
                : Added Hook Help following module documentation guidelines
* Issue [#3056572](https://www.drupal.org/node/3056572):
                 Enabled [Inline Form Errors] in [Varbase core] module
* Issue [#3056574](https://www.drupal.org/node/3056574):
                 Enabled [Admin toolbar links access filter] in
                 [Varbase admin] module

### Changed since Varbase 8.6.12:
* Issue [#3056256](https://www.drupal.org/node/3056256):
                 Started an 8.x-7.x new branch for [Varbase] version:
                 8.x-7.x-dev and extra branch-alias with
                 dev-8.x-7.x to 8.7.x-dev
* Issue [#3052174](https://www.drupal.org/node/3052174):
                 Started an 8.x-7.x branch for [Varbase Core] module
* Issue [#3052181](https://www.drupal.org/node/3052181):
                 Started an 8.x-7.x branch for [Varbase Media] module
* Issue [#3052171](https://www.drupal.org/node/3052171):
                 Started an 8.x-7.x branch for [Varbase Bootstrap Paragraphs] module
* Issue [#3052180](https://www.drupal.org/node/3052180):
                 Started an 8.x-7.x branch for [Varbase Landing] module
* Issue [#3052176](https://www.drupal.org/node/3052176):
                 Started an 8.x-7.x branch for [Varbase Editor] module
* Issue [#3052172](https://www.drupal.org/node/3052172):
                 Started an 8.x-7.x branch for [Varbase Carousels] module
* Issue [#3052169](https://www.drupal.org/node/3052169):
                 Started an 8.x-7.x branch for [Varbase Blog
                 (Corporate Blog)] module
* Issue [#3062741](https://www.drupal.org/node/3062741):
                 Added two new responsive preview devices
                 iPhone XS and iPhone XS Max
* Issue [#3063538](https://www.drupal.org/node/3063538):
                 Changed default password policy with no expiry for the
                 password and better Policy Constraints
* Issue [#3062092](https://www.drupal.org/node/3062092):
                 Have [Varbase Update Helper] module as a dependency with
                 [Varbase Core] module
* Issue [#3062094](https://www.drupal.org/node/3062094):
                 Removed the [Search] menu link and box from the toolbar
                 as we use Coffee
* Issue [#3062296](https://www.drupal.org/node/3062296):
                 Removed password policy fields from the user form
* Issue [#3061425](https://www.drupal.org/node/3061425):
                 Have Forced configs import after the entity and
                 definitions updates
* Issue [#3062267](https://www.drupal.org/node/3062267):
                 Have default config settings for Content Lock
* Issue [#3062276](https://www.drupal.org/node/3062276):
                 Have default general settings for Diff
* Issue [#3059093](https://www.drupal.org/node/3059093):
                 Changed the patch for The Media library^s View and
                 View Mode should be configurable in the UI and removed
                 the Drupal core patch which allows the user to choose
                 a different view or view mode for the Media Library,
                 and removed the 2990664-24-option-b.patch as it was
                 applied in Drupal 8.7.4
* Issue [#3062083](https://www.drupal.org/node/3062083):
                 Changed the display and filters for Media and Media Table
                 pages to integrate with the new Media Library,
                 and changed the Media Widget for Media Library and
                 Media Entity Browsers
* Issue [#3060892](https://www.drupal.org/node/3060892):
                 Changed image form view mode to use Image (Focal Point),
                 and manage the media library view mode for image and cover
                 image for videos
* Issue [#3062083](https://www.drupal.org/node/3062083):
                 Changed the display and filters for Media and Media Table
                 pages to integrate with the new Media Library, and changed
                 the Media Widget for Media Library and Media Entity Browsers
* Issue [#3059098](https://www.drupal.org/node/3059098):
                 Changed [Save to Library] checkbox label to
                 [Show in media library]
* Issue [#3062258](https://www.drupal.org/node/3062258):
                 Changed Varbase Dashboard to work with C3 Charts and without
                 warning
* Issue [#3060823](https://www.drupal.org/node/3060823):
                 Changed the Automated Functional Acceptance Testing to work
                 with changes in the 8.x-7.x branch
* Issue [#3062105](https://www.drupal.org/node/3062105):
                 Have the Files tab in the content and media admin menu
                 and page
* Issue [#3062094](https://www.drupal.org/node/3062094):
                 Remove the [Search] menu link and box from the toolbar
                 as we use Coffee
* Issue [#3062296](https://www.drupal.org/node/3062296):
                 Removed password policy fields from the user form
* Issue [#3062276](https://www.drupal.org/node/3062276):
                 Have default general settings for Diff
* Issue [#3062267](https://www.drupal.org/node/3062267):
                 Have default config settings for Content Lock
* Issue [#3062235](https://www.drupal.org/node/3062235):
                 Optimized permissions for default user roles
* Issue [#3062233](https://www.drupal.org/node/3062233):
                 Optimized for permissions for the SEO Admin user role
* Issue [#3013288](https://www.drupal.org/node/3013288)
                 by
                 [volkswagenchick](https://www.drupal.org/u/volkswagenchick)
                 : Changed [Varbase Media] README - formatting, configs
                 and useful links
* Issue [#3063917](https://www.drupal.org/node/3063917):
                 Removed all patches for the [Total Control] module and
                 keep using the ( ~2.0 ) in the composer
* Issue [#3056342](https://www.drupal.org/node/3056342):
                 Changed required for Varbase Media to let ~6.6 or ~7.0

### Updates since Varbase 8.6.12:
* Issue [#3056587](https://www.drupal.org/node/3056587):
                 Updated [Drupal core] from 8.7.1 to ( ~8.7.0 ) and
                 removed all patches for 8.7.1
* Issue [#3057149](https://www.drupal.org/node/3057149):
                 Updated [Field Group] module from 8.3.0-beta1
                 to ( ~8.0 ) 8.3.0-rc1
* Issue [#3060637](https://www.drupal.org/node/3060637):
                 Updated [Password Policy] from 8.3.0-alpha4
                 to 8.3.0-alpha5 (~3.0 )
* Issue [#3060682](https://www.drupal.org/node/3060682):
                 Updated [Page Manager] module from 8.4.0-beta3 to 8.4.0-beta4
* Issue [#3056717](https://www.drupal.org/node/3056717):
                 Updated [Views Bootstrap] from ( ~3.0 ) to ( ~4.0 )
* Issue [#3063632](https://www.drupal.org/node/3063632):
                 Updated [OpenAPI] from 8.1.0-beta2 to 8.1.0-beta3
* Issue [#3060661](https://www.drupal.org/node/3060661):
                 Updated [Entity Embed] module from 8.1.0-beta3
                 to 8.1.0-rc1 ( ~1.0 )
* Issue [#3061434](https://www.drupal.org/node/3061434):
                 Upgraded [Views Bulk Operations (VBO)] module from ~2.0 to ~3.0

### Fixes since Varbase 8.x-6.12:
* Issue [#3057533](https://www.drupal.org/node/3057533):
                 Fixed fatal error when we request password with non-existing
                 users/emails on the Events Log Track User Authentication
* Issue [#3061128](https://www.drupal.org/node/3061128):
                 Fixed the issue of oembed link does not pass the URL
                 parameter to the provider
* Issue [#3066186](https://www.drupal.org/node/3066186):
                 Fixed Drupal coding standard and practice
* Issue [#3061159](https://www.drupal.org/node/3061159):
                 Fixed Varbase API .info.yml for dev tracking
* Issue [#3059043](https://www.drupal.org/node/3059043):
                 Fixed paragraphs module to have it work with
                 field group version 3
* Issue [#3063701](https://www.drupal.org/node/3063701):
                 Fixed issue of route openapi.docs does not exist. as it was
                 changed to openapi.documentation in OpenAPI module
* Issue [#3063703](https://www.drupal.org/node/3063703):
                 Fixed issue of NOT respecting disabled JSON:API resources by JSON:API Extras
* Issue [#3056662](https://www.drupal.org/node/3056662)
                 by 
                 [YousefAnbar](https://www.drupal.org/u/yousefanbar)
                 , 
                 [RajabNatshah](https://www.drupal.org/u/rajabnatshah)
                 : Fixed RTL style in Vartheme BS4 for the better login page
* Issue [#3065344](https://www.drupal.org/node/3065344)
                 by
                 [m.alhawwari](https://www.drupal.org/u/malhawwari)
                 ,
                 [RajabNatshah](https://www.drupal.org/u/rajabnatshah)
                : Fixed issue of swagger-ui package should be moved from
                 vendor to libraries
* Issue [#3058511](https://www.drupal.org/node/3058511)
                 by 
                 [jedgar1mx](https://www.drupal.org/u/jedgar1mx)
                 : Fixed Uncaught TypeError: Cannot read property
                 'querySelectorAll' of null
* Issue [#3059083](https://www.drupal.org/node/3059083)
                 by
                 [Omar Alahmed](https://www.drupal.org/u/omar-alahmed)
                 : Fixed fatal error when trying to translate a node
                 with accordion paragraph type
* Issue [#3048170](https://www.drupal.org/node/3048170)
                 by
                 [stefan.korn](https://www.drupal.org/u/stefankorn)
                 : Fixed issue of drush varbase-up not working with Drush 9.x

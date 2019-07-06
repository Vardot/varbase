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

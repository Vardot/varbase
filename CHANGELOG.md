# 11.0.0-beta1

### Highlighted important changes since Varbase 11.0.0-alpha3:
* task: Support Drupal ~11.4 across the whole Varbase suite — the profile, Starter, all the base recipes, the AI recipes, the Vartheme (Bootstrap 5) theme, and the Varbase modules
* feat: [#3607697](https://www.drupal.org/i/3607697) Add reusable Canvas Patterns (sections) to Varbase Starter
* feat: [#3609964](https://www.drupal.org/i/3609964) Keep administrative components out of the Drupal Canvas component library
* ci: [#3594223](https://www.drupal.org/i/3594223) Add automated functional acceptance testing for Canvas Override (Playwright + Cucumber-js), Drupal Core + Drupal CMS support, and MkDocs documentation
* docs: Add a CHANGELOG.md and an AGENTS.md and run CI on tag pushes with README pipeline and release badges across every recipe, module, and the theme

### Added since Varbase 11.0.0-alpha3:
* feat: [#3607697](https://www.drupal.org/i/3607697) Add reusable Canvas Patterns (sections) to Varbase Starter
* feat: [#3609964](https://www.drupal.org/i/3609964) Keep administrative components out of the Drupal Canvas component library
* ci: [#3594223](https://www.drupal.org/i/3594223) Add automated functional acceptance testing for Canvas Override (Playwright + Cucumber-js), Drupal Core + Drupal CMS support, and MkDocs documentation

### Changed since Varbase 11.0.0-alpha3:
* chore: [#3607727](https://www.drupal.org/i/3607727) Update Drupal Core from ~11.3.0 to ~11.4.0 in the Varbase profile
* chore: [#3607733](https://www.drupal.org/i/3607733) Update Drupal Core from ~11.3.0 to ~11.4.0 in the Varbase Starter recipe
* chore: [#3607741](https://www.drupal.org/i/3607741) Update Drupal Core from ~11.3.0 to ~11.4.0 in the Varbase AI Base recipe
* chore: [#3607742](https://www.drupal.org/i/3607742) Update Drupal Core from ~11.3.0 to ~11.4.0 in the Varbase AI Context recipe
* chore: [#3607746](https://www.drupal.org/i/3607746) Update Drupal Core from ~11.3.0 to ~11.4.0 in the Varbase AI Editor Assistant recipe
* chore: [#3607747](https://www.drupal.org/i/3607747) Update Drupal Core from ~11.3.0 to ~11.4.0 in the Varbase AI Image Alt recipe
* chore: [#3607750](https://www.drupal.org/i/3607750) Update Drupal Core from ~11.3.0 to ~11.4.0 in the Varbase AI Safety recipe
* chore: [#3607751](https://www.drupal.org/i/3607751) Update Drupal Core from ~11.3.0 to ~11.4.0 in the Varbase AI Taxonomy Tagging recipe
* chore: [#3607740](https://www.drupal.org/i/3607740) Update Drupal Core from ~11.3.0 to ~11.4.0 in the Varbase Admin Base recipe
* chore: [#3607752](https://www.drupal.org/i/3607752) Update Drupal Core from ~11.3.0 to ~11.4.0 in the Varbase API Base recipe
* chore: [#3607753](https://www.drupal.org/i/3607753) Update Drupal Core from ~11.3.0 to ~11.4.0 in the Varbase Auth Base recipe
* chore: [#3607754](https://www.drupal.org/i/3607754) Update Drupal Core from ~11.3.0 to ~11.4.0 in the Varbase Blog Base recipe
* chore: [#3607755](https://www.drupal.org/i/3607755) Update Drupal Core from ~11.3.0 to ~11.4.0 in the Varbase Content Base recipe
* chore: [#3607756](https://www.drupal.org/i/3607756) Update Drupal Core from ~11.3.0 to ~11.4.0 in the Varbase Demo Content recipe
* chore: [#3607757](https://www.drupal.org/i/3607757) Update Drupal Core from ~11.3.0 to ~11.4.0 in the Varbase Dev Base recipe
* chore: [#3607758](https://www.drupal.org/i/3607758) Update Drupal Core from ~11.3.0 to ~11.4.0 in the Varbase Editor Base recipe
* chore: [#3607760](https://www.drupal.org/i/3607760) Update Drupal Core from ~11.3.0 to ~11.4.0 in the Varbase Internationalization Base recipe
* chore: [#3607761](https://www.drupal.org/i/3607761) Update Drupal Core from ~11.3.0 to ~11.4.0 in the Varbase Media Assets recipe
* chore: [#3607762](https://www.drupal.org/i/3607762) Update Drupal Core from ~11.3.0 to ~11.4.0 in the Varbase Media Base recipe
* chore: [#3607764](https://www.drupal.org/i/3607764) Update Drupal Core from ~11.3.0 to ~11.4.0 in the Varbase Page Base recipe
* chore: [#3607766](https://www.drupal.org/i/3607766) Update Drupal Core from ~11.3.0 to ~11.4.0 in the Varbase Performance Base recipe
* chore: [#3607767](https://www.drupal.org/i/3607767) Update Drupal Core from ~11.3.0 to ~11.4.0 in the Varbase Security Base recipe
* chore: [#3607768](https://www.drupal.org/i/3607768) Update Drupal Core from ~11.3.0 to ~11.4.0 in the Varbase SEO Base recipe
* chore: [#3607770](https://www.drupal.org/i/3607770) Update Drupal Core from ~11.3.0 to ~11.4.0 in the Varbase Users Base recipe
* chore: [#3607771](https://www.drupal.org/i/3607771) Update Drupal Core from ~11.3.0 to ~11.4.0 in the Varbase Webform Base recipe
* chore: [#3607772](https://www.drupal.org/i/3607772) Update Drupal Core from ~11.3.0 to ~11.4.0 in the Varbase Workflow Base recipe
* chore: [#3607734](https://www.drupal.org/i/3607734) Update Drupal Core from ~11.3.0 to ~11.4.0 in the Vartheme BS5 theme
* chore: [#3607789](https://www.drupal.org/i/3607789) Update Drupal Core from ~11.3.0 to ~11.4.0 in the VMI module on the 5.0.x branch

### Fixed since Varbase 11.0.0-alpha3:
* fix: [#3607733](https://www.drupal.org/i/3607733) Fix stale active_version and the missing alignment prop field definition for the Card Logo component (part of the Varbase Starter core update)
* fix: [#3608868](https://www.drupal.org/i/3608868) Remote-video default content makes live oEmbed validation calls during site:install, causing intermittent install failures (Varbase Media Assets)

# 11.0.0-alpha3

### Highlighted important changes since [Varbase 11.0.0-alpha2](https://www.drupal.org/project/varbase/releases/11.0.0-alpha2):
* chore: [#3603617](https://www.drupal.org/i/3603617) New approved Varbase branding, logo, wordmark, and favicon across the whole suite (profile, recipes, theme, and modules)
* feat: [#3588156](https://www.drupal.org/i/3588156) New Varbase Design System 2026 in Vartheme BS5, fonts, colors, and sizes
* task: [#3600830](https://www.drupal.org/i/3600830) Standardize all SDC components to one authoring convention and add AGENTS.md
* ci: [#3592934](https://www.drupal.org/i/3592934) Switch CI from CircleCI to GitLab CI and run the automated functional acceptance testing there (Canvas webform and menu coverage)

### Added since [Varbase 11.0.0-alpha2](https://www.drupal.org/project/varbase/releases/11.0.0-alpha2):
* feat: [#3590794](https://www.drupal.org/i/3590794) Change colors and typography as per the new design
* feat: [#3590562](https://www.drupal.org/i/3590562) Configure new fonts, colors, and other styles
* feat: [#3590641](https://www.drupal.org/i/3590641) Add media assets for the new Varbase Design System 2026
* feat: [#3590894](https://www.drupal.org/i/3590894) Add new accent colors to the root and Base
* feat: [#3590891](https://www.drupal.org/i/3590891) Add Subtle Text color to the Text component
* feat: [#3591037](https://www.drupal.org/i/3591037) Align typography scale and button semantics introduced in the UI refresh
* feat: [#3588154](https://www.drupal.org/i/3588154) Add size and colors to the Icon component
* feat: [#3588158](https://www.drupal.org/i/3588158) Add more border radius options to the Button component
* feat: [#3589547](https://www.drupal.org/i/3589547) Add border radius and padding support to the Media Banner component
* feat: [#3589543](https://www.drupal.org/i/3589543) Add border radius to the Group component
* feat: [#3589659](https://www.drupal.org/i/3589659) Add border radius and other improvements to the Section component
* feat: [#3590670](https://www.drupal.org/i/3590670) Add border radius and limited background colors to the Text Card component
* feat: [#3589666](https://www.drupal.org/i/3589666) Improve the Image component
* feat: [#3588226](https://www.drupal.org/i/3588226) Improve the Featured Card component
* feat: [#3593199](https://www.drupal.org/i/3593199) Add a small media overlay slot for tags and flags on the Featured Card component
* feat: [#3588174](https://www.drupal.org/i/3588174) Add media overlay slot support to the Impressed Card component for tags, flags, and categories
* feat: [#3593309](https://www.drupal.org/i/3593309) Add optional uploaded icon image support to the Text Card component
* feat: [#3590809](https://www.drupal.org/i/3590809) Improve the Card Logo component as per the new design
* feat: [#3588159](https://www.drupal.org/i/3588159) Change the Hero Slider design
* feat: [#3593396](https://www.drupal.org/i/3593396) Add link animations and sticky header
* feat: [#3591790](https://www.drupal.org/i/3591790) Pre-place the Share component on the Blog full content template and wire the Icons API to Vartheme
* feat: [#3593398](https://www.drupal.org/i/3593398) Change images and logo in the foundation Storybook
* feat: [#3588391](https://www.drupal.org/i/3588391) Improve the Heading component Storybook
* feat: [#3588692](https://www.drupal.org/i/3588692) Improve the Hero Card component Storybook
* feat: [#3588399](https://www.drupal.org/i/3588399) Remove custom CSS from the Blockquote component

### Changed since [Varbase 11.0.0-alpha2](https://www.drupal.org/project/varbase/releases/11.0.0-alpha2):
* chore: [#3590555](https://www.drupal.org/i/3590555) Rename the Hero Billboard component to Media Banner component
* chore: [#3590568](https://www.drupal.org/i/3590568) Rename the Horizontal Ruler component to Divider component
* chore: [#3593324](https://www.drupal.org/i/3593324) Implement the change of design for the Accordion component
* chore: [#3593308](https://www.drupal.org/i/3593308) Remove custom CSS from the Taxonomy component and use Bootstrap utilities only
* chore: [#3588227](https://www.drupal.org/i/3588227) Improve RTL support for Drupal Canvas with logical CSS properties and alignment labels
* chore: [#3600979](https://www.drupal.org/i/3600979) Redesign the Business Contact webform to the new Varbase Design System 2026
* chore: [#3596375](https://www.drupal.org/i/3596375) Remove the Canvas media view mode SDC plugin and schema.json from Varbase Media
* chore: [#3590651](https://www.drupal.org/i/3590651) Change Blog views and cards config to follow the new Varbase Design System 2026
* chore: [#3590662](https://www.drupal.org/i/3590662) Improve blog exposed filter labels
* feat: [#3591793](https://www.drupal.org/i/3591793) Add Share component override and vartheme_social icon pack
* chore: [#3603587](https://www.drupal.org/i/3603587) New approved Varbase brand logo, wordmark, and favicon for Varbase Starter
* chore: [#3603616](https://www.drupal.org/i/3603616) New approved Varbase brand logo, wordmark, and favicon for Vartheme BS5
* chore: [#3603615](https://www.drupal.org/i/3603615) New approved Varbase brand logo, wordmark, and favicon for Varbase Social Single Sign-On
* chore: [#3603614](https://www.drupal.org/i/3603614) New approved Varbase brand logo, wordmark, and favicon for Varbase Components
* chore: [#3603613](https://www.drupal.org/i/3603613) New approved Varbase brand logo, wordmark, and favicon for Varbase Media
* chore: [#3603611](https://www.drupal.org/i/3603611) New approved Varbase brand logo, wordmark, and favicon for Varbase Recipes
* chore: [#3603610](https://www.drupal.org/i/3603610) New approved Varbase brand logo, wordmark, and favicon for Varbase Admin Base
* chore: [#3603609](https://www.drupal.org/i/3603609) New approved Varbase brand logo, wordmark, and favicon for Varbase AI Base
* chore: [#3603608](https://www.drupal.org/i/3603608) New approved Varbase brand logo, wordmark, and favicon for Varbase AI Context
* chore: [#3603607](https://www.drupal.org/i/3603607) New approved Varbase brand logo, wordmark, and favicon for Varbase AI Editor Assistant
* chore: [#3603606](https://www.drupal.org/i/3603606) New approved Varbase brand logo, wordmark, and favicon for Varbase AI Image Alt
* chore: [#3603604](https://www.drupal.org/i/3603604) New approved Varbase brand logo, wordmark, and favicon for Varbase AI Safety
* chore: [#3603603](https://www.drupal.org/i/3603603) New approved Varbase brand logo, wordmark, and favicon for Varbase AI Taxonomy Tagging
* chore: [#3603602](https://www.drupal.org/i/3603602) New approved Varbase brand logo, wordmark, and favicon for Varbase API Base
* chore: [#3603601](https://www.drupal.org/i/3603601) New approved Varbase brand logo, wordmark, and favicon for Varbase Auth Base
* chore: [#3603600](https://www.drupal.org/i/3603600) New approved Varbase brand logo, wordmark, and favicon for Varbase Content Base
* chore: [#3603598](https://www.drupal.org/i/3603598) New approved Varbase brand logo, wordmark, and favicon for Varbase Demo Content
* chore: [#3603597](https://www.drupal.org/i/3603597) New approved Varbase brand logo, wordmark, and favicon for Varbase Development Base
* chore: [#3603596](https://www.drupal.org/i/3603596) New approved Varbase brand logo, wordmark, and favicon for Varbase Editor Base
* chore: [#3603595](https://www.drupal.org/i/3603595) New approved Varbase brand logo, wordmark, and favicon for Varbase Internationalization Base
* chore: [#3603594](https://www.drupal.org/i/3603594) New approved Varbase brand logo, wordmark, and favicon for Varbase Media Assets
* chore: [#3603593](https://www.drupal.org/i/3603593) New approved Varbase brand logo, wordmark, and favicon for Varbase Media Base
* chore: [#3603591](https://www.drupal.org/i/3603591) New approved Varbase brand logo, wordmark, and favicon for Varbase Page Base
* chore: [#3603590](https://www.drupal.org/i/3603590) New approved Varbase brand logo, wordmark, and favicon for Varbase Performance Base
* chore: [#3603589](https://www.drupal.org/i/3603589) New approved Varbase brand logo, wordmark, and favicon for Varbase Security Base
* chore: [#3603588](https://www.drupal.org/i/3603588) New approved Varbase brand logo, wordmark, and favicon for Varbase SEO Base
* chore: [#3603585](https://www.drupal.org/i/3603585) New approved Varbase brand logo, wordmark, and favicon for Varbase Users Base
* chore: [#3603584](https://www.drupal.org/i/3603584) New approved Varbase brand logo, wordmark, and favicon for Varbase Webform Base
* chore: [#3603583](https://www.drupal.org/i/3603583) New approved Varbase brand logo, wordmark, and favicon for Varbase Workflow Base
* chore: [#3604111](https://www.drupal.org/i/3604111) New approved Varbase brand logo, wordmark, and favicon for Varbase Blog Base
* chore: [#3604079](https://www.drupal.org/i/3604079) New approved Varbase brand logo, wordmark, and favicon for Varbase Project

### Fixes since [Varbase 11.0.0-alpha2](https://www.drupal.org/project/varbase/releases/11.0.0-alpha2):
* fix: [#3589364](https://www.drupal.org/i/3589364) Prevent Drupal dependencies from automatically applying patches in the Varbase Project Template
* fix: [#3595562](https://www.drupal.org/i/3595562) Fix Section component boolean/select props out of sync in the Canvas editor form
* fix: [#3593323](https://www.drupal.org/i/3593323) Add me-3 mb-3 spacing classes to the inline button variant for multi-button sibling flow

# 11.0.0-alpha1

### Highlighted important changes since [Varbase 10.1.0](https://www.drupal.org/project/varbase/releases/10.1.0):
* [#3561802](https://www.drupal.org/i/3561802) feat: Start an `11.0.x` branch for **Varbase** with **Recipe Installer Kit**
* [#3566900](https://www.drupal.org/i/3566900) feat: Initialize **Varbase Project Template** and align with **Drupal CMS Starter Logic**
* [#3566497](https://www.drupal.org/i/3566497) feat: Initialize **Varbase Admin Base** Recipe
* [#3576441](https://www.drupal.org/i/3576441) feat: Initialize **Varbase Users Base** recipe
* [#3566507](https://www.drupal.org/i/3566507) feat: Initialize **Varbase Development Base** Recipe
* [#3566526](https://www.drupal.org/i/3566526) feat: Initialize **Varbase Security Base** Recipe
* [#3571538](https://www.drupal.org/i/3571538) feat: Initialize **Varbase Performance Base** recipe
* [#3569701](https://www.drupal.org/i/3569701) feat: Initialize **Varbase Editor Base** recipe
* [#3570361](https://www.drupal.org/i/3570361) feat: Initialize **Varbase Content Base** recipe
* [#3582286](https://www.drupal.org/i/3582286) feat: Add **Canvas Override** module to Varbase Content Base recipe
* [#3570331](https://www.drupal.org/i/3570331) feat: Initialize **Varbase Workflow Base** recipe
* [#3566519](https://www.drupal.org/i/3566519) feat: Initialize **Varbase Internationalization Base** Recipe
* [#3566466](https://www.drupal.org/i/3566466) feat: Initialize **Varbase AI Base** Recipe
* [#3566427](https://www.drupal.org/i/3566427) feat: Initialize **Varbase API Base** recipe
* [#3572229](https://www.drupal.org/i/3572229) feat: Initialize **Varbase Auth Base** recipe
* [#3566531](https://www.drupal.org/i/3566531) feat: Initialize **Varbase Webform Base** Recipe
* [#3575415](https://www.drupal.org/i/3575415) feat: Initialize **Varbase Page Base** recipe
* [#3578854](https://www.drupal.org/i/3578854) feat: Initialize **Varbase Recipes** module
* [#3570169](https://www.drupal.org/i/3570169) feat: Initialize Varbase Demo Content recipe
* [#3570118](https://www.drupal.org/i/3570118) feat: Initialize Varbase Media Assets recipe
* [#3572193](https://www.drupal.org/i/3572193) feat: Initialize Varbase Blog Base recipe
* [#3566910](https://www.drupal.org/i/3566910) feat: Start a new **5.0.x** branch for **Vartheme BS5**
* [#3576455](https://www.drupal.org/i/3576455) feat: Add **Varbase Users Base** recipe to run before all recipes in **Varbase Starter**
* [#3575421](https://www.drupal.org/i/3575421) feat: Add **Varbase Page Base** recipe to replace **Drupal CMS Page** recipe
* [#3572235](https://www.drupal.org/i/3572235) feat: Add **Varbase Auth Base** recipe to **Varbase Starter**
* [#3572216](https://www.drupal.org/i/3572216) feat: Add **Varbase Blog Base** recipe to **Varbase Starter**
* [#3571574](https://www.drupal.org/i/3571574) feat: Add **Varbase Performance Base** recipe
* [#3569559](https://www.drupal.org/i/3569559) feat: Add the **Varbase Webform Base** recipe to **Varbase Starter**
* [#3584668](https://www.drupal.org/i/3584668) feat: Ship default **Header** and **Footer** page_region configuration for Vartheme BS5 + Canvas

### Added since [Varbase 10.1.0](https://www.drupal.org/project/varbase/releases/10.1.0):
* [#3578272](https://www.drupal.org/i/3578272) feat: Add dev tooling, Storybook, DDEV commands, VSCode, and linting alignment
* [#3570874](https://www.drupal.org/i/3570874) feat: Adopt **NPM/Yarn** with `drupal-libraries-sync` for Front-End Libraries in **Varbase Starter Site Template**
* [#3585102](https://www.drupal.org/i/3585102) feat: Allow Theme Local Assets for Storybook
* [#3586179](https://www.drupal.org/i/3586179) feat: Add **AOS Animation** Library
* [#3570872](https://www.drupal.org/i/3570872) feat: Add NPM/Yarn Support with `drupal-libraries-sync` for Varbase Libraries Management
* [#3582027](https://www.drupal.org/i/3582027) feat: Add automated functional testing with Playwright, Cucumber-JS, Webship-js, and Drupal CMS advanced step definitions
* [#3586952](https://www.drupal.org/i/3586952) feat: Add more coverage for Automated Functional Acceptance Testing on behaviors in Varbase Recipes
* [#3586250](https://www.drupal.org/i/3586250) feat: Add **Maxlength** module to Varbase Admin Base recipe
* [#3586331](https://www.drupal.org/i/3586331) feat: Add **Persistent Login** module to Varbase Users Base recipe
* [#3586209](https://www.drupal.org/i/3586209) feat: Add **Config Ignore** module to Varbase Dev Base recipe
* [#3586274](https://www.drupal.org/i/3586274) feat: Add **Stage File Proxy** module to Varbase Dev Base recipe
* [#3586270](https://www.drupal.org/i/3586270) feat: Add **Security Review** module to Varbase Security Base recipe
* [#3586189](https://www.drupal.org/i/3586189) feat: Add **Fast 404** module to Varbase Performance Base recipe
* [#3586239](https://www.drupal.org/i/3586239) feat: Add **Node Edit Protection** module
* [#3586219](https://www.drupal.org/i/3586219) feat: Add Content Lock module
* [#3586262](https://www.drupal.org/i/3586262) feat: Add Access Unpublished module to Varbase Workflow Base
* [#3578359](https://www.drupal.org/i/3578359) feat: Add Newsletter Subscribe form to Varbase Webform Base recipe
* [#3579187](https://www.drupal.org/i/3579187) feat: Use setCKEditorMediaEmbedVersion config action in Varbase Starter recipe to set CKEditor Media Embed version on install

### Changed since [Varbase 10.1.0](https://www.drupal.org/project/varbase/releases/10.1.0):
* [#3568553](https://www.drupal.org/i/3568553) chore(tooling): Switch default **Composer Patches** to `~2.0`
* [#3583717](https://www.drupal.org/i/3583717) chore(tooling): Update **Storybook** from `~8` to `^10`
* [#3585811](https://www.drupal.org/i/3585811) chore(tooling): Remove deprecated Storybook blocks alias
* [#3570375](https://www.drupal.org/i/3570375) chore: Move UI Icons module to Varbase Admin Base recipe
* [#3584520](https://www.drupal.org/i/3584520) chore: Remove ImageAPI Optimize WebP and use Drupal core WebP
* [#3584967](https://www.drupal.org/i/3584967) chore: Hide current page title segment in Easy Breadcrumb
* [#3586281](https://www.drupal.org/i/3586281) chore: Remove Block class dependency from Gin Social Auth login block
* [#3581660](https://www.drupal.org/i/3581660) chore: Add .cspell.json and dictionary for consistent spell checking
* [#3569509](https://www.drupal.org/i/3569509) chore: Add default **Header** and **Footer** content for **Varbase Starter**
* [#3570372](https://www.drupal.org/i/3570372) chore: Move Temporary Content/Field Configurations to Varbase Content Base Recipe
* [#3569831](https://www.drupal.org/i/3569831) chore: Add default configuration to control Canvas component availability

### Updates since [Varbase 10.1.0](https://www.drupal.org/project/varbase/releases/10.1.0):
* [#3579180](https://www.drupal.org/i/3579180) chore: Update `@ckeditor/ckeditor5-media-embed` library from `~45.2.0` to `^47.6.0`

### Fixes since [Varbase 10.1.0](https://www.drupal.org/project/varbase/releases/10.1.0):
* [#3578535](https://www.drupal.org/i/3578535) fix: Missing Bidi Buttons plugin configuration in Varbase Editor Base recipe
* [#3580300](https://www.drupal.org/i/3580300) fix: Vimeo demo video processing issue
* [#3584668](https://www.drupal.org/i/3584668) fix: Change component_version and active_version after latest changes on vartheme_bs5 components

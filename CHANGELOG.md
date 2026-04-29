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

# 11.0.0

### At a glance
* The **Varbase 11.0.x** suite reaches its first **stable** release, on Drupal `~11.4.0`.
* The three site templates, **Varbase Starter**, **Educare** and **Horizon Aid**, now resolve and install on a stock **Drupal CMS** project at Composer's default stability.
* The profile becomes the home for the packages and configuration that the site templates and the base recipes stopped requiring, so an existing Varbase site keeps every one of them.
* Every first-party dependency in the profile is pinned to a released version. No `x-dev` constraint remains.
* The profile itself still needs a root at `minimum-stability: dev`, because four upstream packages have no stable release for the major it requires. **Varbase Project** already sets that root.
* Nothing in the newly required set is enabled or applied by the profile. These are requirements only, so a site decides for itself what to turn on.

### Highlighted important changes since Varbase 11.0.0-rc1:
* task: [#3621480](https://www.drupal.org/i/3621480) The profile is now the home for what the site templates and base recipes stopped requiring. It requires `drupal/advanced_text_formatter`, `drupal/entity_clone`, `drupal/rabbit_hole`, `drupal/ultimate_cron`, `drupal/varbase_dev_base` and the AI, API, authentication and multilingual base recipes, so an existing Varbase site keeps every one of them.
* task: [#3621480](https://www.drupal.org/i/3621480) Ship the seventeen `ultimate_cron.job.*` files the recipes had to delete, as optional config in `config/optional`. They are inert while **Ultimate Cron** is absent, and Drupal recreates every job by itself if the module is ever enabled.
* task: [#3621736](https://www.drupal.org/i/3621736) Pin every first-party dependency to a released version instead of a dev branch: **Varbase Starter** at `~1.0.0`, and the AI, API, authentication, development and multilingual base recipes at `~1.0.0`.
* fix: [#3621334](https://www.drupal.org/i/3621334) Remove the four never-applied base recipes from **Varbase Starter**, so the template resolves on Stable for **Drupal CMS**.
* fix: [#3621449](https://www.drupal.org/i/3621449), [#3621450](https://www.drupal.org/i/3621450), [#3621451](https://www.drupal.org/i/3621451), [#3621492](https://www.drupal.org/i/3621492) and [#3621493](https://www.drupal.org/i/3621493) Temporarily remove **Entity Clone**, **Rabbit Hole**, **Advanced Text Formatter** and **Ultimate Cron** from the base recipes until they have stable releases. The profile keeps all four, so no existing site loses them.

### Stability of Varbase 11.0.0
Varbase 11.0.0 is a stable release, but it does not resolve on a project using Composer's default `minimum-stability: stable`. Four of its requirements have no stable release for the major the profile needs:

* `drupal/entity_clone: ~2`, where the newest release is 2.2.0-beta1 and the project has no stable release at all.
* `drupal/rabbit_hole: ~2`, where the newest release is 2.0.0-beta2. Its stable releases are on the older 8.x-1.x line, which `~2` cannot take.
* `drupal/ultimate_cron: ~2`, where the newest release is 8.x-2.0-beta1 and the stable releases are Drupal 7 only.
* `drupal/advanced_text_formatter: ~3`, where the newest release is 3.0.0-rc2 and the newest stable is 2.1.1.

That is by design. The profile is consumed through [Varbase Project](https://www.drupal.org/project/varbase_project), whose root sets `minimum-stability: dev` with `prefer-stable: true`. Those four packages live in the profile precisely so that removing them from the site templates and base recipes could not take them away from existing sites, which is what made the templates installable on **Drupal CMS**. Upstream stable releases are requested in [#2660208](https://www.drupal.org/i/2660208), [#3621376](https://www.drupal.org/i/3621376), [#3621362](https://www.drupal.org/i/3621362) and [#3189738](https://www.drupal.org/i/3189738). When they land, the four constraints can point at stable tags and the profile resolves at default stability too.

### Release notes of every Varbase package in Varbase 11.0.0

#### Varbase profile 11.0.0
* task: [#3621480](https://www.drupal.org/i/3621480) Keep the modules, base recipes and configuration removed from the site templates in the profile: `drupal/advanced_text_formatter`, `drupal/entity_clone`, `drupal/rabbit_hole`, `drupal/ultimate_cron`, the **Varbase AI Base**, **Varbase API Base**, **Varbase Auth Base** and **Varbase i18n Base** recipes, and the **Varbase Dev Base** recipe.
* task: [#3621480](https://www.drupal.org/i/3621480) Keep the seventeen `ultimate_cron.job.*` files as optional config in `config/optional`, so Drupal recreates every job by itself if **Ultimate Cron** is ever enabled.
* task: [#3621736](https://www.drupal.org/i/3621736) Pin **Varbase Starter** and the AI, API, authentication, development and multilingual base recipes to `~1.0.0`. **Varbase Starter** had already been pinned at 11.0.0-rc1 and was moved back to a dev branch by [#3621480](https://www.drupal.org/i/3621480), so this restores that pin rather than setting it for the first time.

#### Varbase Starter 1.0.1
* fix: [#3621334](https://www.drupal.org/i/3621334) Remove the four never-applied base recipes, so the template resolves on Stable for **Drupal CMS**.
* task: [#3621399](https://www.drupal.org/i/3621399) Update `@vardot/varbase-e2e` to `^2.0.4`.
* fix: [#3621553](https://www.drupal.org/i/3621553) Temporarily remove the **Entity Clone** functional testing coverage.
* task: [#3621622](https://www.drupal.org/i/3621622) Pin every base recipe and **Vartheme (Bootstrap 5)** to their released versions instead of dev branches.
* fix: [#3617456](https://www.drupal.org/i/3617456) Create the header search block after the display that provides it.
* refactor: [#3618246](https://www.drupal.org/i/3618246) Move vardot/varbase-patches out of the recipe `composer.json` to the wiring script only.
* refactor: [#3618246](https://www.drupal.org/i/3618246) Remove the **Drupal CMS** wiring script and inline the wiring in CI.
* test: [#3618332](https://www.drupal.org/i/3618332) Add functional testing coverage for **Drupal Canvas** page translations.
* fix: [#3619772](https://www.drupal.org/i/3619772) Re-export the **Vartheme (Bootstrap 5)** icon component config for the **Canvas Icon Picker**.
* fix: [#3619772](https://www.drupal.org/i/3619772) Re-export the icon component config for the whole **Bootstrap Icons** pack.
* task: [#3620193](https://www.drupal.org/i/3620193) Add **Varbase Canvas Base** recipe.
* task: [#3620066](https://www.drupal.org/i/3620066) Stop declaring the **Canvas Icon Picker** here.
* feat: [#3620357](https://www.drupal.org/i/3620357) Drop the `drupal-libraries-sync` script and assert the library files in CI, now that the libraries come from Composer.
* task: [#3620442](https://www.drupal.org/i/3620442) Pin block component versions to active in the header and footer page regions.
* fix: [#3621003](https://www.drupal.org/i/3621003) Reshoot the installer card screenshot at 500x400 and rewrite the site template description.
* chore: [#3621019](https://www.drupal.org/i/3621019) Remove the **Varbase Dev Base** dependency from the **Varbase Starter** recipe `composer.json`.
* fix: [#3621018](https://www.drupal.org/i/3621018) Apply the **Varbase Canvas Base** recipe after **Varbase Content Base** in the **Varbase Starter** recipe.
* fix: [#3621200](https://www.drupal.org/i/3621200) Add a site name level 1 heading to the **Varbase Starter** home Canvas page.
* Automated Functional Testing pipeline: [953044](https://git.drupalcode.org/project/varbase_starter/-/pipelines/953044) passed.
* [Varbase Starter 1.0.1 Automated Functional Acceptance Testing report 2026-09-08 (HTML)](https://project.pages.drupalcode.org/-/varbase_starter/-/jobs/12057561/artifacts/tests/reports/varbase-starter--1-0-x--automated-functional-testing-report--2026-09-08--09-45.html)
* [Varbase Starter 1.0.1 Automated Functional Acceptance Testing report 2026-09-08 (PDF)](https://git.drupalcode.org/project/varbase_starter/-/jobs/12057561/artifacts/file/tests/reports/varbase-starter--1-0-x--automated-functional-testing-report--2026-09-08--09-45.pdf)

#### Educare 1.0.1
* fix: [#3621335](https://www.drupal.org/i/3621335) Remove the four never-applied base recipes, so the template resolves on Stable for **Drupal CMS**.
* fix: [#3621385](https://www.drupal.org/i/3621385) Take the refused, allowed and page-title steps from `varbase-e2e`.
* task: [#3621623](https://www.drupal.org/i/3621623) Pin every base recipe and the **Educare** theme to their released versions instead of dev branches.
* task: [#3615980](https://www.drupal.org/i/3615980) Switch the **Educare** functional testing suite to **Varbase E2E**.
* ci: [#3616081](https://www.drupal.org/i/3616081) Merge the per-suite test reports into one Create reports pipeline job.
* perf: [#3615980](https://www.drupal.org/i/3615980) Reduce CI usage - shared Install + cache/DB-restore, gating, `varbase-e2e`, ^2.
* feat: [#3614680](https://www.drupal.org/i/3614680) Add **Varbase Patches** to the composer requirements and a **Drupal CMS** wiring script.
* refactor: [#3615980](https://www.drupal.org/i/3615980) Rename install job to Install **Educare** site template.
* test: [#3614680](https://www.drupal.org/i/3614680) Add a pre-test that builds and installs **Educare** on **Drupal CMS**, and fix the patches wiring.
* fix: [#3616545](https://www.drupal.org/i/3616545) List real events and news in the home page Stories section.
* fix: [#3615980](https://www.drupal.org/i/3615980) Show the Feature/Scenario/Step breakdown in the CI test logs.
* refactor: [#3616588](https://www.drupal.org/i/3616588) Move the Stories view displays to **Varbase News Base** and **Varbase Events Base**.
* ci: [#3616588](https://www.drupal.org/i/3616588) Stop the **Drupal CMS** job republishing the shared build cache.
* fix: [#3616545](https://www.drupal.org/i/3616545) Replace the static event and news cards in Canvas pages with views blocks.
* fix: [#3616545](https://www.drupal.org/i/3616545) List real programs on the Home page instead of six static cards.
* fix: [#3617242](https://www.drupal.org/i/3617242) Add the search index view modes and displays for the content types and taxonomy terms.
* feat: [#3617501](https://www.drupal.org/i/3617501) Add the header search box and give the search results page a heading and one result per row.
* fix: [#3617362](https://www.drupal.org/i/3617362) Require a released **Varbase Patches** instead of the 11.0.x-dev branch.
* task: [#3617362](https://www.drupal.org/i/3617362) Update the **Educare** site template recipe version to 1.0.0-alpha2.
* refactor: [#3618244](https://www.drupal.org/i/3618244) Remove the **Drupal CMS** wiring script.
* refactor: [#3618244](https://www.drupal.org/i/3618244) Keep the drupal-libraries sync script in the recipe.
* task: [#3620242](https://www.drupal.org/i/3620242) Move Search after **Varbase Content Base** in `recipe.yml`.
* task: [#3620331](https://www.drupal.org/i/3620331) Remove the **Varbase Dev Base** recipe from `composer.json`.
* feat: [#3620058](https://www.drupal.org/i/3620058) Re-export the Canvas component configs for the **Canvas Icon Picker**.
* task: [#3620349](https://www.drupal.org/i/3620349) Remove the dead `drupal-libraries-sync`.js script.
* task: [#3620438](https://www.drupal.org/i/3620438) Pin block component versions to active.
* task: [#3620996](https://www.drupal.org/i/3620996) Frame the installer screenshot to the card ratio and rewrite the description.
* test: [#3621202](https://www.drupal.org/i/3621202) Name the colour contrast and top-level heading accessibility rules in the home page regression scenarios.
* Automated Functional Testing pipeline: [953006](https://git.drupalcode.org/project/educare/-/pipelines/953006) passed.
* [Educare 1.0.1 Automated Functional Acceptance Testing report 2026-09-08 (HTML)](https://project.pages.drupalcode.org/-/educare/-/jobs/12056986/artifacts/tests/reports/educare--1-0-x--automated-functional-testing-report--2026-09-08--09-24.html)
* [Educare 1.0.1 Automated Functional Acceptance Testing report 2026-09-08 (PDF)](https://git.drupalcode.org/project/educare/-/jobs/12056986/artifacts/file/tests/reports/educare--1-0-x--automated-functional-testing-report--2026-09-08--09-24.pdf)

#### Horizon Aid 1.0.1
* fix: [#3621336](https://www.drupal.org/i/3621336) Remove the three never-applied base recipes, so the template resolves on Stable for **Drupal CMS**.
* test: [#3621203](https://www.drupal.org/i/3621203) Name the colour contrast and top-level heading accessibility rules in the home page regression scenarios.
* task: [#3621015](https://www.drupal.org/i/3621015) Set the **Horizon Aid** site template recipe version to 1.0.0-beta1.
* fix: [#3620998](https://www.drupal.org/i/3620998) Reshoot the installer card at 500x400 and rewrite the description.
* task: [#3620964](https://www.drupal.org/i/3620964) Set the **Horizon Aid** site template recipe version to 1.0.0-alpha2 and pin every cross-dependency to a released constraint.
* fix: [#3620725](https://www.drupal.org/i/3620725) Drop the swagger-ui library assertion the removed requirement satisfied.
* fix: [#3620725](https://www.drupal.org/i/3620725) Remove the **Varbase API Base** requirement.
* fix: [#3620437](https://www.drupal.org/i/3620437) Pin the header SDC component versions to active.
* fix: [#3620437](https://www.drupal.org/i/3620437) Pin block component versions to active.
* task: [#3620353](https://www.drupal.org/i/3620353) Install the front-end libraries with Composer, not `drupal-libraries-sync`.
* fix: [#3620330](https://www.drupal.org/i/3620330) Remove the **Varbase Dev Base** requirement.
* feat: [#3620065](https://www.drupal.org/i/3620065) Re-export the Canvas component configs for the **Canvas Icon Picker**.
* task: [#3620223](https://www.drupal.org/i/3620223) Move Search after **Varbase Content Base** in `recipe.yml`.
* task: [#3618301](https://www.drupal.org/i/3618301) Add quick smoke checks to the **Drupal CMS** install job in CI.
* refactor: [#3618245](https://www.drupal.org/i/3618245) Remove the **Drupal CMS** wiring script and its composer asset, inline the setup in CI.
* refactor: [#3618245](https://www.drupal.org/i/3618245) Remove vardot/varbase-patches from the site template recipe's `composer.json` and wire it from the script only.
* feat: [#3614681](https://www.drupal.org/i/3614681) Add **Varbase Patches** to the composer requirements.
* feat: [#3617244](https://www.drupal.org/i/3617244) Add the header search toggle and make the results page readable.
* fix: [#3617244](https://www.drupal.org/i/3617244) Add the search index view modes and displays for the content types and taxonomy terms.
* perf: [#3615987](https://www.drupal.org/i/3615987) Adopt the shared fast CI and show every test step.
* feat: [#3615987](https://www.drupal.org/i/3615987) Extend the Varbase functional testing suite to every shipped section.
* fix: [#3616336](https://www.drupal.org/i/3616336) Keep the footer heading in document order on every page.
* fix: [#3616336](https://www.drupal.org/i/3616336) Fix missing Donate h1 and Our Impact figure contrast.
* fix: [#3607228](https://www.drupal.org/i/3607228) Point the About and Countries call-to-action buttons at real pages.
* fix: [#3615208](https://www.drupal.org/i/3615208) Show a description on the Where We Work country cards.
* fix: [#3607228](https://www.drupal.org/i/3607228) Follow the design's text spacing on the country page and give each country fuller copy.
* fix: [#3607228](https://www.drupal.org/i/3607228) Drop the breadcrumb from the home page.
* fix: [#3607228](https://www.drupal.org/i/3607228) Keep the Instagram icon on the Share rail after Varbase Blog Base seeds the icon map.
* fix: [#3607228](https://www.drupal.org/i/3607228) Give every country, programme and resource an image of its own subject.
* fix: [#3607228](https://www.drupal.org/i/3607228) Make the resources listing text visible and match the design.
* feat: [#3615987](https://www.drupal.org/i/3615987) Add the **Varbase E2E** automated functional testing suite.
* fix: [#3615293](https://www.drupal.org/i/3615293) Match the Share rail's platforms and order to the design, with Instagram as a plain link.
* fix: [#3607228](https://www.drupal.org/i/3607228) Give the Latest News rail dark card text via a light view mode.
* fix: [#3607228](https://www.drupal.org/i/3607228) Add the breadcrumb to every top-level page and drop the countries result summary.
* fix: [#3607228](https://www.drupal.org/i/3607228) Match the delivery cards' reading order to their visual order.
* fix: [#3607228](https://www.drupal.org/i/3607228) Enable the Quicklinks footer menu and fix the logo variant.
* fix: [#3607228](https://www.drupal.org/i/3607228) Give the Latest Updates cards their badge, teaser and readable colour.
* fix: [#3607228](https://www.drupal.org/i/3607228) Resolve the programme page's component versions instead of shipping 'active'.
* fix: [#3607228](https://www.drupal.org/i/3607228) Drop the share button that a recipe cannot create.
* feat: [#3607228](https://www.drupal.org/i/3607228) Put the design's icons on the delivery cards and space them.
* fix: [#3607228](https://www.drupal.org/i/3607228) Give the delivery cards the design title scale and spacing.
* fix: [#3607228](https://www.drupal.org/i/3607228) Keep every resource photograph distinct within its sector.
* feat: [#3607228](https://www.drupal.org/i/3607228) Lay the resource pages out to the design, with distinct photographs.
* feat: [#3607228](https://www.drupal.org/i/3607228) Build the programme page to the design, with the fields it needs.
* fix: [#3607228](https://www.drupal.org/i/3607228) Style the programs listing and give the program page a Canvas layout.
* fix: [#3614797](https://www.drupal.org/i/3614797) Remove the leading slash from the site template finish_url.
* fix: [#3614665](https://www.drupal.org/i/3614665) Make a fresh install of the site template complete.
* feat: [#3614664](https://www.drupal.org/i/3614664) Build the global footer region in Canvas to the design.
* fix: [#3614658](https://www.drupal.org/i/3614658) Order the header menu to the design and drop the duplicate Events link.
* feat: [#3614639](https://www.drupal.org/i/3614639) Show the filter reset, and match the listing spacing and summary to the design.
* feat: [#3614494](https://www.drupal.org/i/3614494) Fill the event banner from its fields: category, date and registration link.
* feat: [#3614494](https://www.drupal.org/i/3614494) Set the share platforms to the design's set and order.
* feat: [#3614494](https://www.drupal.org/i/3614494) Match the More Events block to the design.
* fix: [#3614494](https://www.drupal.org/i/3614494) Repair the install, tag the demo events and build the event full page.
* feat: [#3614099](https://www.drupal.org/i/3614099) Add the Events listing, its card view mode, the Topic filter and demo content.
* fix: [#3613856](https://www.drupal.org/i/3613856) Remove the superseded stand-in posts and their orphaned tags.
* feat: [#3613864](https://www.drupal.org/i/3613864) Feed the Home page sections from views instead of hand-placed cards.
* feat: [#3613856](https://www.drupal.org/i/3613856) Ship the full Resources demo content so the listing, its filters and its pager can be seen.
* fix: [#3613826](https://www.drupal.org/i/3613826) Stop duplicating **Drupal CMS** recipe content and ship the missing Terms and Conditions page.
* task: [#3613821](https://www.drupal.org/i/3613821) Show the **Horizon Aid** home page as the site template screenshot in the installer.
* feat: [#3613697](https://www.drupal.org/i/3613697) Add a Program content type and render the programmes page from the programs view.
* fix: [#3613791](https://www.drupal.org/i/3613791) Make the On the Ground text readable and render See Other Countries as a grid.
* feat: [#3613682](https://www.drupal.org/i/3613682) Add **Varbase Events Base** and render the event listings from the events view.
* feat: [#3613658](https://www.drupal.org/i/3613658) Ship all twelve countries and render the country listings from the view.
* task: [#3613654](https://www.drupal.org/i/3613654) Drop the dummy detail pages and the placeholder copy from the shipped pages.
* feat: [#3613646](https://www.drupal.org/i/3613646) Add a Country content type with its listing, cards and full page layout.
* fix: [#3607228](https://www.drupal.org/i/3607228) Make the **Horizon Aid** site template install and replace the **Varbase Starter** leftovers.
* docs: [#3607228](https://www.drupal.org/i/3607228) Show the **Horizon Aid** logo at the top of the README.
* task: [#3607228](https://www.drupal.org/i/3607228) Recipe logo (icon), admin/navigation logo override, and Composer install steps.
* task: [#3607228](https://www.drupal.org/i/3607228) Use the transparent brand icon image.
* docs: [#3607228](https://www.drupal.org/i/3607228) Update the README badge and add the DDEV require steps for 1.0.x-dev.
* task: [#3607228](https://www.drupal.org/i/3607228) Add the **Horizon Aid** brand assets and the Reviewed-by-a-human GitLab template checkpoint.
* Automated Functional Testing pipeline: [952995](https://git.drupalcode.org/project/horizonaid/-/pipelines/952995) passed.
* [Horizon Aid 1.0.1 Automated Functional Acceptance Testing report 2026-09-08 (HTML)](https://project.pages.drupalcode.org/-/horizonaid/-/jobs/12056838/artifacts/tests/reports/horizonaid--1-0-x--automated-functional-testing-report--2026-09-08--09-30.html)
* [Horizon Aid 1.0.1 Automated Functional Acceptance Testing report 2026-09-08 (PDF)](https://git.drupalcode.org/project/horizonaid/-/jobs/12056838/artifacts/file/tests/reports/horizonaid--1-0-x--automated-functional-testing-report--2026-09-08--09-30.pdf)

#### Vartheme (Bootstrap 5) 5.0.2
* fix: [#3620673](https://www.drupal.org/i/3620673) Encode the space in the dynamic responsive image placeholder, so the `srcset` candidate is not dropped.
* feat: [#3619736](https://www.drupal.org/i/3619736) Use the **Canvas Icon Picker** for the icon props of the components.
* feat: [#3619736](https://www.drupal.org/i/3619736) Use the whole **Bootstrap Icons** pack for the icon props.
* fix: [#3621197](https://www.drupal.org/i/3621197) Fix the footer social icon contrast to meet WCAG 2.1 AA.
* fix: [#3621201](https://www.drupal.org/i/3621201) Visually hide the front page h1 so a Canvas landing page can carry one.

#### Canvas Override 1.0.0
* fix: [#3621487](https://www.drupal.org/i/3621487) Require node update access on the **Canvas Override** and Reset layout routes.
* fix: [#3621557](https://www.drupal.org/i/3621557) Fail safely with a 403 instead of a 500 when Canvas cannot edit an entity.
* fix: [#3621488](https://www.drupal.org/i/3621488) Delete the pending Canvas auto-save and create a new revision when resetting a layout.
* fix: [#3621490](https://www.drupal.org/i/3621490) Record complete cacheability in `entityViewAlter()` and `menuLocalTasksAlter()`.
* fix: [#3621475](https://www.drupal.org/i/3621475) Guard the reset HTMX URL generation against `RouteNotFoundException`.
* docs: [#3621472](https://www.drupal.org/i/3621472) Remove the non-existent `/node/{node}/canvas/default` route from the README.
* task: [#3621370](https://www.drupal.org/i/3621370) Update `@vardot/varbase-e2e` to `^2.0.4`.
* fix: [#3620603](https://www.drupal.org/i/3620603) Fail safely when Canvas ships ComponentTreeLoader as final.
* revert: [#3620603](https://www.drupal.org/i/3620603) Restore the ComponentTreeLoader subclass and unconditional service swap.
* feat: [#3620603](https://www.drupal.org/i/3620603) Edit per-content layouts on a backing canvas_page when Canvas is unpatched.
* feat: [#3590567](https://www.drupal.org/i/3590567) Add a confirmation step before resetting a Canvas layout.
* fix: [#3618040](https://www.drupal.org/i/3618040) Accept a NULL bundle in hook_entity_bundle_field_info_alter().
* fix: [#3620603](https://www.drupal.org/i/3620603) Skip the ComponentTreeLoader swap when Canvas ships it final.
* test: [#3616302](https://www.drupal.org/i/3616302) Add regression test coverage for the config import fix.
* fix: [#3616302](https://www.drupal.org/i/3616302) Convert presave to insert/update, add config sync check.
* task: [#3616116](https://www.drupal.org/i/3616116) Switch the **Canvas Override** functional testing suite to **Varbase E2E**.
* fix: [#3586587](https://www.drupal.org/i/3586587) Don't restore entity key or revision metadata fields on save.
* fix: [#3615665](https://www.drupal.org/i/3615665) Page data panel is never hidden in the Canvas editor.
* fix: [#3615667](https://www.drupal.org/i/3615667) Add the missing field_tags storage to the Marketing campaign test recipe.
* ci: [#3594223](https://www.drupal.org/i/3594223) Add automated functional acceptance testing for **Canvas Override** with webship-js (Playwright + Cucumber-js), Drupal Core + **Drupal CMS** support, and MkDocs documentation.
* feat: [#3583263](https://www.drupal.org/i/3583263) Add MkDocs configuration to enable GitLab Pages documentation build.
* feat: [#3583255](https://www.drupal.org/i/3583255) Add per-content-type permissions for **Canvas Override**, Reset Canvas layout, and Edit Canvas default template tabs.
* chore: [#3582111](https://www.drupal.org/i/3582111) Rewrite **Canvas Override** documentation for site builders, remove unmaintainable kernel tests, and reorganize FunctionalJavascript tests with single concerns.
* test: [#3582111](https://www.drupal.org/i/3582111) Improve unit test coverage for per-bundle permission generation.
* fix: [#3582111](https://www.drupal.org/i/3582111) Use content terminology instead of node in user-facing text.
* docs: [#3582111](https://www.drupal.org/i/3582111) Add documentation user guide for **Canvas Override** module.
* chore: [#3582111](https://www.drupal.org/i/3582111) Apply Canvas issue no. 3567225 patch in CI to support per-entity layout extensibility.
* chore: [#3582111](https://www.drupal.org/i/3582111) Add linting configuration, cspell dictionary, GitLab CI templates, and phpcs standards for code quality checks.
* fix: [#3582111](https://www.drupal.org/i/3582111) Hide Edit template tab when **Canvas Override** is enabled.
* fix: [#3582111](https://www.drupal.org/i/3582111) required field validation errors during publish.
* chore: [#3582111](https://www.drupal.org/i/3582111) Add granular permissions system and comprehensive test coverage for **Canvas Override**.
* chore: [#3582111](https://www.drupal.org/i/3582111) Lock field_canvas_layout field storage to prevent editing or deletion from field management UI.
* fix: [#3582111](https://www.drupal.org/i/3582111) Canvas editor form for canvas_override-enabled content types: whitelist Page data fields and remove scheduler widget crash.

#### Varbase Components 4.0.1
* task: [#3621406](https://www.drupal.org/i/3621406) Update `@vardot/varbase-e2e` to `^2.0.4`.

#### Varbase Admin Base 1.0.1
* fix: [#3621449](https://www.drupal.org/i/3621449) Temporarily remove **Entity Clone** until it has a stable release.
* feat: [#3620064](https://www.drupal.org/i/3620064) Add **Canvas Icon Picker** and set the default icon packs.
* feat: [#3620360](https://www.drupal.org/i/3620360) Require the vardot/jquery.fancytree library, so the recipe brings the Fancytree library Taxonomy Manager loads.
* fix: [#3620414](https://www.drupal.org/i/3620414) Install smart_date early to avoid a **Drupal CMS** install deadlock.
* task: [#3620446](https://www.drupal.org/i/3620446) Fix the drupal/smart_date constraint to ~4.3.0.
* fix: [#3620483](https://www.drupal.org/i/3620483) Remove the empty metatag_display_extender from the two admin views.

#### Varbase Content Base 1.0.1
* fix: [#3621450](https://www.drupal.org/i/3621450) Temporarily remove **Entity Clone** until it has a stable release.
* fix: [#3621492](https://www.drupal.org/i/3621492) Temporarily remove **Rabbit Hole** and **Advanced Text Formatter** until they have stable releases.
* fix: [#3621558](https://www.drupal.org/i/3621558) Require the released **View Modes Inventory** 5.0.0 instead of the dev branch.
* task: [#3620192](https://www.drupal.org/i/3620192) Remove the canvas_override install and requirement, as we moved it to the **Varbase Canvas Base** recipe.
* feat: [#3620191](https://www.drupal.org/i/3620191) Add the Search index view mode for nodes to the **Varbase Content Base** recipe.
* feat: [#3620361](https://www.drupal.org/i/3620361) Require the vardot/aos library, so the recipe brings the AOS library **Varbase Components** loads.
* fix: [#3620408](https://www.drupal.org/i/3620408) Remove the edit canvas global regions permission from Site Admin.
* fix: [#3621426](https://www.drupal.org/i/3621426) Pin @cucumber/cucumber so the functional test suite can run.

#### Varbase Blog Base 1.0.1
* fix: [#3621559](https://www.drupal.org/i/3621559) Require the released **Webshare** 2.0.0 instead of the dev branch.

#### Varbase News Base 1.0.1
* task: [#3621415](https://www.drupal.org/i/3621415) Update `@vardot/varbase-e2e` to `^2.0.4`.
* docs: [#3620356](https://www.drupal.org/i/3620356) Correct the CI comment that described the removed drupal-libraries yarn sync.
* task: [#3615785](https://www.drupal.org/i/3615785) Update `@vardot/varbase-e2e` to the latest 2.x (1.0.x).
* feat: [#3616585](https://www.drupal.org/i/3616585) Add a Featured news posts block display to the news view.
* fix: [#3616334](https://www.drupal.org/i/3616334) Correct invalid card-featured prop values so the news featured cards render.
* task: [#3615785](https://www.drupal.org/i/3615785) Switch the Varbase functional testing suite to **Varbase E2E** (1.0.x).
* test: [#3610876](https://www.drupal.org/i/3610876) Add a Varbase functional testing suite for the **Varbase News Base** recipe.
* fix: [#3610876](https://www.drupal.org/i/3610876) Install **Vartheme (Bootstrap 5)** and correct the invalid component UUIDs.

#### Varbase Events Base 1.0.1
* task: [#3621411](https://www.drupal.org/i/3621411) Update `@vardot/varbase-e2e` to `^2.0.4`.
* docs: [#3620355](https://www.drupal.org/i/3620355) Correct the CI comment that described the removed drupal-libraries yarn sync.
* task: [#3615776](https://www.drupal.org/i/3615776) Update `@vardot/varbase-e2e` to the latest 2.x (1.0.x).
* feat: [#3616587](https://www.drupal.org/i/3616587) Add an Upcoming events block display to the events view.
* task: [#3615776](https://www.drupal.org/i/3615776) Switch the Varbase functional testing suite to **Varbase E2E** (1.0.x).
* task: [#3610873](https://www.drupal.org/i/3610873) Repoint the events exposed form to the site default theme.
* fix: [#3610873](https://www.drupal.org/i/3610873) Match the events listing exposed-filter labels to the design.
* ci: [#3611860](https://www.drupal.org/i/3611860) Remove the temporary **Varbase Components** issue-fork pin from the functional testing CI.
* fix: [#3610873](https://www.drupal.org/i/3610873) Install the Smart Date module with the recipe.
* ci: [#3611896](https://www.drupal.org/i/3611896) Bootstrap composer-drupal-lenient in CI so CKEditor Media Resize resolves against Drupal core 11.4.
* test: [#3610873](https://www.drupal.org/i/3610873) Add a Varbase functional testing suite for the **Varbase Events Base** recipe.
* feat: [#3610873](https://www.drupal.org/i/3610873) Grant event content and taxonomy permissions to the Varbase roles.
* fix: [#3610873](https://www.drupal.org/i/3610873) Drop the Industry filter and name the exposed filters after the event fields.
* fix: [#3610873](https://www.drupal.org/i/3610873) Install **Vartheme (Bootstrap 5)**, which the recipe's Canvas templates render through.

#### Varbase Canvas Base 1.0.1
* fix: [#3621562](https://www.drupal.org/i/3621562) Require the released **Canvas Override** 1.0.0 instead of the dev branch.
* fix: [#3620177](https://www.drupal.org/i/3620177) Do not grant permissions in the **Varbase Canvas Base** recipe.

#### Varbase Media Base 1.0.0
* feat: [#3620363](https://www.drupal.org/i/3620363) Require the vardot/dropzone library, so the Dropzone files DropzoneJS loads are actually on disk.

#### Varbase Editor Base 1.0.0
* feat: [#3620362](https://www.drupal.org/i/3620362) Require the vardot/ckeditor5-media-embed-drupal library at the GPL-licensed 47.6.2 that Drupal core 11.4 bundles.

#### Varbase SEO Base 1.0.1
* fix: [#3621451](https://www.drupal.org/i/3621451) Temporarily remove **Entity Clone** until it has a stable release.
* fix: [#3620423](https://www.drupal.org/i/3620423) Install metatag_views for the shipped views display extender.
* fix: [#3621035](https://www.drupal.org/i/3621035) Grant the SEO Admin role the meta tag and sitemap administration permissions.

#### Varbase Performance Base 1.0.1
* fix: [#3621493](https://www.drupal.org/i/3621493) Temporarily remove **Ultimate Cron** until it has a stable release, with its sixteen cron job config files. Cron runs through core Automated Cron, which this recipe already configures.

#### Varbase API Base 1.0.0
* feat: [#3620376](https://www.drupal.org/i/3620376) Require the vardot/swagger-ui library, so the recipe brings its own front-end library.

#### Varbase i18n Base 1.0.0
* feat: [#3618242](https://www.drupal.org/i/3618242) Add the Translation Management Tool (TMGMT) and **Drupal Canvas** page translation to the Varbase Internationalization Base recipe.
* feat: [#3618698](https://www.drupal.org/i/3618698) Add the AI Translation Management (TMGMT) module to the recipe.
* feat: [#3619859](https://www.drupal.org/i/3619859) Install the Canvas Translate module by default.
* feat: [#3619860](https://www.drupal.org/i/3619860) Install the Config Language Lock module by default.

#### Varbase AI Figma Base 1.0.1
* refactor: [#3621381](https://www.drupal.org/i/3621381) Drop the redundant local access-denied step.

#### Varbase AI Figma 1.0.3
* fix: [#3621094](https://www.drupal.org/i/3621094) Declare a version for the path repository in the functional testing jobs.
* fix: [#3621159](https://www.drupal.org/i/3621159) Seed the AI Context items through AiContextItem::setScope().
* task: [#3621172](https://www.drupal.org/i/3621172) Require AI Figma 1.0.1 or later.
* fix: [#3621380](https://www.drupal.org/i/3621380) Take the access-denied step from `varbase-e2e` 2.0.4.


# 11.0.0-rc1

### At a glance
* The whole **Varbase 11.0.x** suite moves to **release candidates**, with every dependency pinned to a released version. No `x-dev` constraint remains in the profile.
* A **header search** box now sits in the **Varbase Starter** header behind an icon toggle, backed by new search components and a bar panel style in **Vartheme (Bootstrap 5)**, with a reworked search results page.
* The **Automated Functional Testing** suites across the Varbase 11.0.x suite run on **Varbase E2E** (`@vardot/varbase-e2e ^2`, Playwright + Cucumber-js), on a faster CI pipeline.
* The default ECA modeler switches from **BPMN.iO** to the **Workflow Modeler**.
* Each site template now installs and sets its own front-end and admin themes.

### Highlighted important changes since Varbase 11.0.0-beta2:
* task: The whole Varbase 11.0.x suite moves to **release candidates**, with every dependency pinned to a released version: **Varbase Starter** 1.0.0-rc1, **Vartheme (Bootstrap 5)** 5.0.0-rc4, **Varbase Components** 4.0.0-rc1, and every base and AI recipe.
* feat: [#3615236](https://www.drupal.org/i/3615236) Add the header search box to the **Varbase Starter** header region, backed by new search components and an icon toggle bar panel style in **Vartheme (Bootstrap 5)**.
* feat: [#3616468](https://www.drupal.org/i/3616468) Add **Varbase E2E** automated functional testing coverage and a faster CI pipeline, provisioning the API, Auth, i18n and AI stacks in it.
* feat: [#3612486](https://www.drupal.org/i/3612486) Switch the default ECA modeler from **BPMN.iO** to the **Workflow Modeler**.
* feat: [#3614696](https://www.drupal.org/i/3614696) Let each site template install and set its own front-end and admin themes.

### Release notes of every Varbase package in Varbase 11.0.0-rc1

#### Varbase profile 11.0.0-rc1
* feat: [#3614696](https://www.drupal.org/i/3614696) Let each site template install and set its own front-end and admin themes.
* fix: [#3614810](https://www.drupal.org/i/3614810) Remove the leading slash from the profile finish_url, so the browser installer no longer lands on a double slash.

#### Varbase Starter 1.0.0-rc1
* feat: [#3615236](https://www.drupal.org/i/3615236) Add the header search box to the **Varbase Starter** header region.
* feat: [#3614678](https://www.drupal.org/i/3614678) Add **Varbase Patches** to the composer requirements, with a **Drupal CMS** wiring script.
* feat: [#3616468](https://www.drupal.org/i/3616468) Add **Varbase E2E** automated functional testing coverage and a faster CI pipeline, and provision the API, Auth, i18n and AI stacks in it.
* fix: [#3617241](https://www.drupal.org/i/3617241) Give the search results page a heading, its own search box and one readable result per row. Each row now renders a single linked heading at the design system's small heading step, followed by the excerpt, with the result summary below the search box and even spacing between results.
* fix: [#3617241](https://www.drupal.org/i/3617241) Add the search index view modes and displays for the content types and taxonomy terms.
* fix: [#3617356](https://www.drupal.org/i/3617356) Re-mint the stale Canvas component version pins. Four component config entities and three component instances pinned versions that no longer matched the components as they ship, including the header search toggle.
* fix: [#3614795](https://www.drupal.org/i/3614795) Remove the leading slash from the site template finish_url, so the browser installer no longer lands on a double slash.

#### Vartheme (Bootstrap 5) 5.0.0-rc4
* feat: [#3611865](https://www.drupal.org/i/3611865) Add a Views exposed filters **Single Directory Component**
* fix: [#3614510](https://www.drupal.org/i/3614510) Configurable heading level on the Share component for correct heading order
* feat: [#3593698](https://www.drupal.org/i/3593698) Add a bar panel style to the **Icon Toggle** component for the header search bar. The panel is driven by the **Bootstrap 5.3** Dropdown and is region-agnostic, and it keeps an `expand_in_editor` opt-out for the editor.
* feat: [#3614492](https://www.drupal.org/i/3614492) Implement Search Components to Support Varbase Canvas.
* fix: [#3616382](https://www.drupal.org/i/3616382) **Icon Toggle** Component Design Issue Fixed.
* fix: [#3615235](https://www.drupal.org/i/3615235) Align the theme packageManager pin with the Varbase project so the asset build runs.
* fix: [#3617110](https://www.drupal.org/i/3617110) Remove the duplicate `default` and `examples` keys in `icon-toggle.component.yml`, where `expand_in_editor` had been spliced into the middle of `placement`. The YAML parser rejects duplicate keys, so component discovery threw a `DiscoveryException` and a fresh Varbase 11 install stopped at 97% with an HTTP 500. Also restores the missing `start` value on the `placement` enumeration.
* fix: [#3617112](https://www.drupal.org/i/3617112) Show the `bar` panel header search below 992px. Theme header rules out-specified the component's own `position` and `background-color`, so the bar rendered transparent and off-screen. It is now fixed to the viewport, opaque, spans the viewport width, and adds no horizontal overflow.
* fix: [#3617142](https://www.drupal.org/i/3617142) Render the same `bar` panel as a flat band above 992px. The same specificity collision one breakpoint up drew it as a rounded, shadowed card instead of the flat band the design calls for.
* fix: [#3617450](https://www.drupal.org/i/3617450) Make the exposed filter bar layout reusable instead of binding it to a single form ID. The layout now lives in a `.vb-filter-bar` class carried by a new `views-view-search` **Single Directory Component**, which prints the view title, then the exposed filter bar, then the result summary, and then the rows. The ghost submit and reset actions now outrank Bootstrap's `.btn.btn-primary` without needing an ID selector, any exposed text filter grows to fill the bar and stacks full width below the `md` breakpoint, and a results view renders its empty state as a readable notice. The blog filter bar keeps its existing appearance with no configuration change.

#### Varbase Components 4.0.0-rc1
* feat: [#3611182](https://www.drupal.org/i/3611182) Add the components_exposed_form views exposed form plugin and config schema for the component views plugins.
* feat: [#3611182](https://www.drupal.org/i/3611182) Add an always-show Reset option to the Components exposed form.
* task: [#3614572](https://www.drupal.org/i/3614572) Add the default GitLab and GitHub issue and merge request templates.
* fix: [#3611854](https://www.drupal.org/i/3611854) Use the Drupal serialization `Yaml::decode()` instead of `Symfony Yaml::parse()`.
* task: [#3615770](https://www.drupal.org/i/3615770) Switch the Varbase functional testing suite to **Varbase E2E**.
* task: [#3615770](https://www.drupal.org/i/3615770) Update **@vardot/varbase-e2e** to the latest 2.x.
* fix: [#3615796](https://www.drupal.org/i/3615796) Resolve the **PHPStan** findings raised by the updated analyzers.

#### Varbase Recipes 1.0.0-beta4
* feat: [#3610877](https://www.drupal.org/i/3610877) Add config actions to repoint **Drupal Canvas** component trees and Views component styles onto the site default theme.
* feat: [#3610877](https://www.drupal.org/i/3610877) Set a **Drupal Canvas** component tree only when its components exist.
* fix: [#3611878](https://www.drupal.org/i/3611878) Repoint the exposed form component at the target theme.
* fix: [#3613297](https://www.drupal.org/i/3613297) Skip with a warning instead of fataling when the targeted editor does not exist.
* fix: [#3610935](https://www.drupal.org/i/3610935) Satisfy **PHPStan** on the 1.0.x branch.

#### Varbase Admin Base 1.0.0-rc1
* task: [#3617008](https://www.drupal.org/i/3617008) Set the recipe version to 1.0.0-rc1, pin drupal/varbase_recipes to ~1.0.0, and release with the Varbase 11.0.0-rc1 suite. No functional changes since 1.0.0-beta1.

#### Varbase Users Base 1.0.0-rc1
* task: [#3617007](https://www.drupal.org/i/3617007) Set the recipe version to 1.0.0-rc1 and release with the Varbase 11.0.0-rc1 suite. No functional changes since 1.0.0-beta1.

#### Varbase Content Base 1.0.0-rc1
* feat: [#3612486](https://www.drupal.org/i/3612486) Switch the default ECA modeler from **BPMN.iO** to the **Workflow Modeler**.
* test: [#3612501](https://www.drupal.org/i/3612501) Add functional tests for the ECA **Workflow Modeler** swap.
* task: [#3615771](https://www.drupal.org/i/3615771) Switch the Varbase functional testing suite to **Varbase E2E**.
* task: [#3615771](https://www.drupal.org/i/3615771) Update **@vardot/varbase-e2e** to the latest 2.x.

#### Varbase Page Base 1.0.0-rc1
* task: [#3617019](https://www.drupal.org/i/3617019) Set the recipe version to 1.0.0-rc1, pin the Varbase Content Base, Media Base, SEO Base, and Workflow Base dependencies to ~1.0.0, and release with the Varbase 11.0.0-rc1 suite. No functional changes since 1.0.0-beta1.

#### Varbase Blog Base 1.0.0-rc1
* fix: [#3610904](https://www.drupal.org/i/3610904) Re-pin the **Drupal Canvas** templates to the active component versions.
* fix: [#3610904](https://www.drupal.org/i/3610904) Give the four hand-authored templates real UUIDs.

#### Varbase Media Base 1.0.0-rc1
* task: [#3617004](https://www.drupal.org/i/3617004) Set the recipe version to 1.0.0-rc1, pin drupal/varbase_media to ~11.0.0, and release with the Varbase 11.0.0-rc1 suite. No functional changes since 1.0.0-beta1.

#### Varbase Media Assets 1.0.0-rc1
* task: [#3617011](https://www.drupal.org/i/3617011) Set the recipe version to 1.0.0-rc1 and release with the Varbase 11.0.0-rc1 suite. No functional changes since 1.0.0-beta1.

#### Varbase Editor Base 1.0.0-rc1
* task: [#3613947](https://www.drupal.org/i/3613947) Switch back to drupal/ckeditor_media_resize now that 1.1.1 supports Drupal ~11.4.0.
* task: [#3617009](https://www.drupal.org/i/3617009) Set the recipe version to 1.0.0-rc1 and release with the Varbase 11.0.0-rc1 suite. No functional changes since 1.0.0-beta4.

#### Varbase Security Base 1.0.0-rc1
* task: [#3616988](https://www.drupal.org/i/3616988) Set the recipe version to 1.0.0-rc1 and release with the Varbase 11.0.0-rc1 suite. No functional changes since 1.0.0-beta1.

#### Varbase SEO Base 1.0.0-rc1
* task: [#3617005](https://www.drupal.org/i/3617005) Set the recipe version to 1.0.0-rc1 and release with the Varbase 11.0.0-rc1 suite. No functional changes since 1.0.0-beta1.

#### Varbase Workflow Base 1.0.0-rc1
* task: [#3617006](https://www.drupal.org/i/3617006) Set the recipe version to 1.0.0-rc1 and release with the Varbase 11.0.0-rc1 suite. No functional changes since 1.0.0-beta1.

#### Varbase Performance Base 1.0.0-rc1
* task: [#3616987](https://www.drupal.org/i/3616987) Set the recipe version to 1.0.0-rc1 and release with the Varbase 11.0.0-rc1 suite. No functional changes since 1.0.0-beta1.

#### Varbase Webform Base 1.0.0-rc1
* feat: [#3600979](https://www.drupal.org/i/3600979) Apply the new Newsletter Subscribe webform style.

#### Varbase API Base 1.0.0-rc1
* task: [#3616984](https://www.drupal.org/i/3616984) Set the recipe version to 1.0.0-rc1 and release with the Varbase 11.0.0-rc1 suite. No functional changes since 1.0.0-beta1.

#### Varbase Auth Base 1.0.0-rc1
* task: [#3617010](https://www.drupal.org/i/3617010) Set the recipe version to 1.0.0-rc1, pin drupal/varbase_auth to ~11.0.0, and release with the Varbase 11.0.0-rc1 suite. No functional changes since 1.0.0-beta1.

#### Varbase i18n Base 1.0.0-rc1
* task: [#3616986](https://www.drupal.org/i/3616986) Set the recipe version to 1.0.0-rc1 and release with the Varbase 11.0.0-rc1 suite. No functional changes since 1.0.0-beta1.

#### Varbase Dev Base 1.0.0-rc1
* task: [#3616985](https://www.drupal.org/i/3616985) Set the recipe version to 1.0.0-rc1 and release with the Varbase 11.0.0-rc1 suite. No functional changes since 1.0.0-beta1.

#### Varbase Demo Content 1.0.0-rc1
* task: [#3617020](https://www.drupal.org/i/3617020) Set the recipe version to 1.0.0-rc1, pin the Varbase Media Assets dependency to ~1.0.0, and release with the Varbase 11.0.0-rc1 suite. No functional changes since 1.0.0-beta1.

#### Varbase AI Base 1.0.0-rc1
* feat: [#3612633](https://www.drupal.org/i/3612633) Add `varbase_ai_figma_base` as an optional recipe to the Varbase AI Base recipe.
* task: [#3617021](https://www.drupal.org/i/3617021) Set the recipe version to 1.0.0-rc1, pin the Varbase AI Context, AI Safety, and AI Figma Base dependencies to ~1.0.0 and the Varbase AI Editor Assistant, AI Image Alt, and AI Taxonomy Tagging dependencies to ~2.0.0, and release with the Varbase 11.0.0-rc1 suite. No functional changes since 1.0.0-beta4.

#### Varbase AI Context 1.0.0-rc1
* fix: [#3613294](https://www.drupal.org/i/3613294) Raise the AI Context global items cap so all Varbase and Figma context items stay in context selection.
* task: [#3617012](https://www.drupal.org/i/3617012) Set the recipe version to 1.0.0-rc1 and release with the Varbase 11.0.0-rc1 suite. No functional changes since 1.0.0-beta3.

#### Varbase AI Safety 1.0.0-rc1
* task: [#3617013](https://www.drupal.org/i/3617013) Set the recipe version to 1.0.0-rc1 and release with the Varbase 11.0.0-rc1 suite. No functional changes since 1.0.0-beta1.

#### Varbase AI Editor Assistant 2.0.0-rc2
* task: [#3617022](https://www.drupal.org/i/3617022) Set the recipe version to 2.0.0-rc1 and release with the Varbase 11.0.0-rc1 suite. No functional changes since 2.0.0-beta1.
* fix: [#3617233](https://www.drupal.org/i/3617233) Recipe validation fails on the editor config action because the **Text Editor** module is missing from install.

#### Varbase AI Image Alt 2.0.0-rc1
* task: [#3614570](https://www.drupal.org/i/3614570) Add the default GitLab and GitHub issue and merge request templates.

#### Varbase AI Taxonomy Tagging 2.0.0-rc2
* task: [#3617023](https://www.drupal.org/i/3617023) Set the recipe version to 2.0.0-rc1 and release with the Varbase 11.0.0-rc1 suite. No functional changes since 2.0.0-beta2.
* fix: [#3617217](https://www.drupal.org/i/3617217) Recipe validation fails on the field config actions because the **Field** module is missing from install.

#### Varbase AI Figma Base 1.0.0-rc2
* task: [#3614569](https://www.drupal.org/i/3614569) Add the default GitLab and GitHub issue and merge request templates.
* task: [#3615763](https://www.drupal.org/i/3615763) Switch the Varbase functional testing suite to **Varbase E2E**.
* task: [#3615763](https://www.drupal.org/i/3615763) Update **@vardot/varbase-e2e** to the latest 2.x.
* fix: [#3617234](https://www.drupal.org/i/3617234) Do not ship the tests directory: the packaged test fixture recipe breaks **Drupal CMS** installer validation.

#### Varbase AI Figma 1.0.0-rc1
* task: [#3614568](https://www.drupal.org/i/3614568) Add the default GitLab and GitHub issue and merge request templates.
* task: [#3615762](https://www.drupal.org/i/3615762) Switch the Varbase functional testing suite to **Varbase E2E**.
* task: [#3615762](https://www.drupal.org/i/3615762) Update **@vardot/varbase-e2e** to the latest 2.x.

Varbase Media 11.0.0-beta1 and Varbase Auth 11.0.0-beta1 ship unchanged since Varbase 11.0.0-beta2.

# 11.0.0-beta2

### Highlighted important changes since Varbase 11.0.0-beta1:
* feat: [#3610649](https://www.drupal.org/i/3610649) Let users choose a site template in the installer
* fix: [#3610705](https://www.drupal.org/i/3610705) Create user 1 as webmaster in the browser installer, like ddev install-varbase does

### Added since Varbase 11.0.0-beta1:
* feat: [#3610649](https://www.drupal.org/i/3610649) Let users choose a site template in the installer

### Fixed since Varbase 11.0.0-beta1:
* fix: [#3610705](https://www.drupal.org/i/3610705) Create user 1 as webmaster in the browser installer, like ddev install-varbase does

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

[![pipeline status](https://git.drupalcode.org/project/varbase/badges/9.2.x/pipeline.svg)](https://git.drupalcode.org/project/varbase/-/pipelines)
[![Varbase](https://img.shields.io/badge/Varbase-9.2.1-0d6efc?labelColor=001d38&style=flat-square)](https://git.drupalcode.org/project/varbase/-/pipelines?ref=9.2.x)
[![Automated Functional Testing](https://git.drupalcode.org/project/varbase_project/badges/9.2.x/pipeline.svg)](https://git.drupalcode.org/project/varbase_project/-/pipelines)

[![](https://www.drupal.org/files/styles/grid-3/public/project-images/Medium-Logo%20Color%20with%20padding.png)](https://www.drupal.org/project/varbase)

## Varbase: The Ultimate Drupal CMS Starter Kit (Bootstrap Ready)

The powerful Drupal distribution for faster development, with editor experience
in mind. Brought to you by [Vardot](https://www.vardot.com/).

Varbase is an enhanced Drupal distribution with a lot of necessities.
Necessities are all the modules, features, configurations that we include
in every project.


## It's made with the following benefits in mind:

* Speeds up development.
* Offers standardized configuration and best-practices.
* Comes with a lot of needed functionalities/modules for every-day Drupal site.
* [Tested, tested, and tested.](https://git.drupalcode.org/project/varbase/-/pipelines)

Starting a new project? Consider Varbase ~11.0.0
Varbase 9.2.x is the Drupal ~11.4-only continuation of the Varbase 9.1.x line.


# Install with Composer

Recommended to start new projects with Varbase ~11.0.0

To install the most recent stable release of Varbase 9.2.x run this command:
```
composer create-project drupal/varbase_project:~9.2.0 PROJECT_DIR_NAME --no-dev --no-interaction
```

To install the dev version of Varbase 9.2.x run this command:
```
composer create-project drupal/varbase_project:9.2.x-dev PROJECT_DIR_NAME --stability dev --no-interaction
```

## [Create a new Vartheme sub theme for a project](https://git.drupalcode.org/project/varbase/-/tree/9.2.x/scripts/README.md)

## [Automated Functional Testing](https://git.drupalcode.org/project/varbase_project/-/blob/9.2.x/tests/README.md)

## [Varbase 9.2.x Developer Guide](https://docs.varbase.vardot.com)

## [CHANGELOG for Varbase](https://git.drupalcode.org/project/varbase/-/blob/9.2.x/CHANGELOG.md)

## [Varbase Gherkin features](https://git.drupalcode.org/project/varbase_project/-/tree/9.2.x/tests/features/varbase)

## [Varbase Developer Guide](https://docs.varbase.vardot.com)

## [General instructions on how to update Varbase](https://git.drupalcode.org/project/varbase/-/blob/9.2.x/UPDATE.md)

## [Local development with Lando](https://docs.varbase.vardot.com/developers/installing-varbase)

1. Install Lando locally, steps for installing can be found [here](https://docs.lando.dev/basics/installation.html).
2. Run `lando start`.

## Debugging using Lando

- xDebug is enabled on Lando by default for PHP debugging.
- The debugger is set to listen for the port 9003 but can be changed in `.lando/.php.ini`

## [Local development with DDEV](https://docs.varbase.vardot.com/developers/installing-varbase/installing-varbase-with-ddev)
1. Install DDEV locally, steps for installing can be found [here](https://ddev.readthedocs.io/en/stable/).
2. Run `ddev start`.

Join Our Slack Team for Feedback and Support
http://slack.varbase.vardot.com/

Sponsored and developed by [Vardot](https://www.drupal.org/vardot).
